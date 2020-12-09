/*******************************************************************/
/* »м€: WriteTextFile.js                                           */
/* язык: JScript                                                   */
/*******************************************************************/
var FSO,F,F0, TextStream,TS, hname;  //ќбъ€вл€ем переменные
//»нициализируем константы
var ForReading = 1, 
    ForWriting = 2, 
    TristateUseDefault = -2;

FSO=WScript.CreateObject("Scripting.FileSystemObject");
FSO.CreateTextFile("ev40d.log"); 
F=FSO.GetFile("ev40d.log");
TextStream=F.OpenAsTextStream(ForWriting, TristateUseDefault);

F0=FSO.GetFile("ev40.log");
TS=F0.OpenAsTextStream(ForReading, TristateUseDefault);


  TextStream.WriteLine(TS.ReadLine());
  TextStream.WriteLine(TS.ReadLine());
//   TS.SkipLine();
//   TS.SkipLine();

  while (!TS.AtEndOfStream) 
  {
  hname=TS.ReadLine();
//    hname=TS.Read(467);    TS.Skip(11);//skip %trail
//    WScript.Echo("You source : ", hname);

  try 
    {
     hname = decodeURI(hname);
//     WScript.Echo("Result1    : " +  hname);
     hname = decodeURI(hname);
//     WScript.Echo("Result2    : " +  hname);
     hname = unescape(hname);
//     WScript.Echo("Result3    : " +  hname);
    }
  catch (e)
     {
     if (e != 0)
     TextStream.WriteLine("Error during decode URI !");
     }


  TextStream.WriteLine(hname);
  }

TS.Close();
TextStream.Close();
