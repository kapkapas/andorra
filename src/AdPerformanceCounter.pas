{
* This program is licensed under the Common Public License (CPL) Version 1.0
* You should have recieved a copy of the license with this file.
* If not, see http://www.opensource.org/licenses/cpl1.0.txt for more informations.
* 
* Inspite of the incompatibility between the Common Public License (CPL) and the GNU General Public License (GPL) you're allowed to use this program * under the GPL. 
* You also should have recieved a copy of this license with this file. 
* If not, see http://www.gnu.org/licenses/gpl.txt for more informations.

* Project: Andorra 2D
* Authors:  Andreas Stoeckel
* File: AdPerformanceCounter.pas
* Comment: Contains a class for FPS-Measuring
}

{Contains a class for FPS-Measuring}
unit AdPerformanceCounter;

interface

{$IFNDEF WIN32}
uses
  LclIntf;
{$ENDIF}

type
  TAdPerformanceCounterState = (psPaused, psResumed, psRunning);

  //Class for calculating the FPS and the TimeGap
  TAdPerformanceCounter = class
    private
      FTimeGap:Double;
      FFPS:integer;
      FInterpolate:boolean;
      FState:TAdPerformanceCounterState;
      FLastTickCount:Double;
      FTempTime:Double;
      FTempFPS:integer;
      FInterpolationFactor:integer;
      FMaximumTimeGap:double;
    public
      property State:TAdPerformanceCounterState read FState;
      property FPS:integer read FFPS;
      property TimeGap:double read FTimeGap;
      property Interpolate:Boolean read FInterpolate write FInterpolate;
      property InterpolationFactor:integer read FInterpolationFactor write FInterpolationFactor;
      property MaximumTimeGap:double read FMaximumTimeGap write FMaximumTimeGap;

      constructor Create(ACreatePaused:boolean=false);

      procedure Resume;
      procedure Pause;
      procedure Calculate;    
  end;

implementation

{ TAdPerformanceCounter }

{$IFDEF WIN32}
var
  Frequency:int64 = 0;
  
function QueryPerformanceCounter(var lpPerformanceCount: int64): boolean; stdcall; external 'kernel32.dll';
function QueryPerformanceFrequency(var lpFrequency: int64): boolean; stdcall; external 'kernel32.dll';

function GetTickCount:Double;
var
  ticks:int64;
begin
  if Frequency = 0 then
    QueryPerformanceFrequency(Frequency);

  QueryPerformanceCounter(ticks);

  result := ticks * 1000 / Frequency;
end;
{$ENDIF}

constructor TAdPerformanceCounter.Create(ACreatePaused: boolean);
begin
  inherited Create;

  if ACreatePaused then
  begin
    FState := psPaused;
  end
  else
  begin
    FState := psResumed;
  end;

  FTempTime := 0;
  FLastTickCount := GetTickCount;
  FInterpolate := true;
  FInterpolationFactor := 5;
  FMaximumTimeGap := 50; 
end;

procedure TAdPerformanceCounter.Calculate;
var
  tc, td: double;
begin
  //Calculate time difference
  tc := GetTickCount;
  td := tc - FLastTickCount;

  if FState = psRunning then
  begin
    if FInterpolate then
    begin
      FTimeGap := (FTimeGap * FInterpolationFactor + (td)) / (FInterpolationFactor + 1);
    end
    else
    begin
      FTimeGap := td;
    end;
  end else
  begin
    if FState = psResumed then
    begin
      FTimeGap := 1;
      FState := psRunning;
    end
    else
    begin
      FTimeGap := 0;
    end;
  end;

  if FTimeGap > FMaximumTimeGap then
    FTimeGap := FMaximumTimeGap;

  FLastTickCount := tc;

  FTempTime := FTempTime + td;
  FTempFPS := FTempFPS + 1;
  if FTempTime > 1000 then
  begin
    FTempTime := 0;
    FFPS := FTempFPS;
    FTempFPS := 0;
  end;
end;

procedure TAdPerformanceCounter.Pause;
begin
  FState := psPaused;
end;

procedure TAdPerformanceCounter.Resume;
begin
  if FState = psPaused then
  begin
    FState := psResumed;
  end;
end;

end.