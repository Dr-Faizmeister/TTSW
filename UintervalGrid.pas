unit UintervalGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TgridForm = class(TForm)
    strngrd1: TStringGrid;
    closeGridbtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure closeGridbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gridForm: TgridForm;

implementation

uses UMain;

{$R *.dfm}


procedure TgridForm.closeGridbtnClick(Sender: TObject);
var i: Integer;
begin
  for i:=1 to Trunc(n) do
    begin
      L_top[i]:=depth-StrToFloat(gridForm.strngrd1.Cells[1,i]);
      L_bot[i]:=depth-StrToFloat(gridForm.strngrd1.Cells[2,i]);
      inT[i]:=StrToFloat(gridForm.strngrd1.Cells[3,i]);
      inQo[i]:=StrToFloat(gridForm.strngrd1.Cells[4,i]);
      inQg[i]:=StrToFloat(gridForm.strngrd1.Cells[5,i]);
      inQw[i]:=StrToFloat(gridForm.strngrd1.Cells[6,i]);
    end;
  Close;
end;

procedure TgridForm.FormCreate(Sender: TObject);
var i: Integer;
begin

  strngrd1.Cells[0,0]:='¹';
  strngrd1.Cells[1,0]:='Top of Processing Interval, m';
  strngrd1.Cells[2,0]:='Bottom of Processing Interval, m';
  strngrd1.Cells[3,0]:='Inflow Temperature Shift, °C';
  strngrd1.Cells[4,0]:='Oil Rate, m3/day';
  strngrd1.Cells[5,0]:='Gas Rate, m3/day';
  strngrd1.Cells[6,0]:='Water Rate, m3/day';

  strngrd1.Width:=645;
  strngrd1.ColWidths[0]:=30;
  strngrd1.ColWidths[1]:=150;
  strngrd1.ColWidths[2]:=160;
  strngrd1.ColWidths[3]:=150;
  strngrd1.ColWidths[4]:=90;
  strngrd1.ColWidths[5]:=90;
  strngrd1.ColWidths[6]:=100;

  strngrd1.Cells[1,1]:=FloatToStr(800);
  strngrd1.Cells[1,2]:=FloatToStr(600);
  strngrd1.Cells[1,3]:=FloatToStr(550);
  strngrd1.Cells[2,1]:=FloatToStr(830);
  strngrd1.Cells[2,2]:=FloatToStr(640);
  strngrd1.Cells[2,3]:=FloatToStr(580);
  strngrd1.Cells[3,1]:=FloatToStr(5);
  strngrd1.Cells[3,2]:=FloatToStr(4);
  strngrd1.Cells[3,3]:=FloatToStr(3);
  strngrd1.Cells[4,1]:=FloatToStr(100);
  strngrd1.Cells[4,2]:=FloatToStr(80);
  strngrd1.Cells[4,3]:=FloatToStr(65);
  strngrd1.Cells[5,1]:=FloatToStr(10000);
  strngrd1.Cells[5,2]:=FloatToStr(9000);
  strngrd1.Cells[5,3]:=FloatToStr(8000);
  strngrd1.Cells[6,1]:=FloatToStr(50);
  strngrd1.Cells[6,2]:=FloatToStr(35);
  strngrd1.Cells[6,3]:=FloatToStr(15);
end;
end.
