(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     20171,        499]
NotebookOptionsPosition[     20556,        488]
NotebookOutlinePosition[     20994,        507]
CellTagsIndexPosition[     20951,        504]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["A 3-dimensional Piano", "Section"],

Cell["\<\
Create new musical notes by taking steps in three directions: octaves, \
perfect fifths, and major thirds. What sorts of notes/intervals/chords can \
you create? 

Put a positive integer into the box to go up the indicated interval that many \
times, and negative integers to go down.

Note: after changing the values, sometimes the player takes a second or two \
to reload.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"FreqChange", "[", 
   RowBox[{"o_", ",", "f_", ",", "t_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"newo", ",", "newf", ",", "newt"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"newo", "=", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"NumberQ", "[", "o", "]"}], ",", "o", ",", "0"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"newf", "=", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"NumberQ", "[", "f", "]"}], ",", "f", ",", "0"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"newt", "=", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"NumberQ", "[", "t", "]"}], ",", "t", ",", "0"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{
      SuperscriptBox["2", "newo"], "*", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["3", "2"], ")"}], "newf"], "*", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["5", "4"], ")"}], "newt"]}]}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{"Play", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{"tonic", "*", "2", "\[Pi]", "*", 
          RowBox[{"FreqChange", "[", 
           RowBox[{"Octaves1", ",", "Fifths1", ",", "Thirds1"}], "]"}], "*", 
          "t"}], "]"}], "\[IndentingNewLine]", "+", 
        RowBox[{"If", "[", 
         RowBox[{"PlaySound2", ",", 
          RowBox[{"Sin", "[", 
           RowBox[{"tonic", "*", "2", "\[Pi]", "*", 
            RowBox[{"FreqChange", "[", 
             RowBox[{"Octaves2", ",", "Fifths2", ",", "Thirds2"}], "]"}], "*",
             "t"}], "]"}], ",", "0"}], "]"}], "\[IndentingNewLine]", "+", 
        RowBox[{"If", "[", 
         RowBox[{"PlaySound3", ",", 
          RowBox[{"Sin", "[", 
           RowBox[{"tonic", "*", "2", "\[Pi]", "*", 
            RowBox[{"FreqChange", "[", 
             RowBox[{"Octaves3", ",", "Fifths3", ",", "Thirds3"}], "]"}], "*",
             "t"}], "]"}], ",", "0"}], "]"}], "\[IndentingNewLine]", "+", 
        RowBox[{"If", "[", 
         RowBox[{"PlaySound4", ",", 
          RowBox[{"Sin", "[", 
           RowBox[{"tonic", "*", "2", "\[Pi]", "*", 
            RowBox[{"FreqChange", "[", 
             RowBox[{"Octaves4", ",", "Fifths4", ",", "Thirds4"}], "]"}], "*",
             "t"}], "]"}], ",", "0"}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", "0", ",", "2"}], "}"}]}], "]"}], "}"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Row", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Octaves1", ",", "0", ",", "\"\<Octaves:\>\""}], "}"}], 
          ",", "InputField", ",", 
          RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Fifths1", ",", "0", ",", "\"\<Fifths:\>\""}], "}"}], ",", 
          "InputField", ",", 
          RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thirds1", ",", "0", ",", "\"\<Thirds:\>\""}], "}"}], ",", 
          "InputField", ",", 
          RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}]}], "}"}], 
     ",", "\"\<     \>\""}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"OpenerView", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Second Note?\>\"", ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "PlaySound2", ",", "False", ",", " ", 
              "\"\<Play Second Note:\>\""}], "}"}], ",", "Checkbox"}], "}"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Octaves2", ",", "0", ",", "\"\<Octaves:\>\""}], 
                 "}"}], ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Fifths2", ",", "0", ",", "\"\<Fifths:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Thirds2", ",", "0", ",", "\"\<Thirds:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}]}], 
            "}"}], " ", ",", "\"\<     \>\""}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}], "}"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"OpenerView", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Third Note?\>\"", ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "PlaySound3", ",", "False", ",", " ", 
              "\"\<Play Third Note:\>\""}], "}"}], ",", "Checkbox"}], "}"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Octaves3", ",", "0", ",", "\"\<Octaves:\>\""}], 
                 "}"}], ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Fifths3", ",", "0", ",", "\"\<Fifths:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Thirds3", ",", "0", ",", "\"\<Thirds:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}]}], 
            "}"}], ",", "\"\<     \>\""}], "]"}]}], "\[IndentingNewLine]", 
        "}"}], "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"OpenerView", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Fourth Note?\>\"", ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "PlaySound4", ",", "False", ",", " ", 
              "\"\<Play Fourth Note:\>\""}], "}"}], ",", "Checkbox"}], "}"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Octaves4", ",", "0", ",", "\"\<Octaves:\>\""}], 
                 "}"}], ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Fifths4", ",", "0", ",", "\"\<Fifths:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Thirds4", ",", "0", ",", "\"\<Thirds:\>\""}], "}"}],
                 ",", "InputField", ",", 
                RowBox[{"FieldSize", "\[Rule]", "2"}]}], "}"}], "]"}]}], 
            "}"}], ",", "\"\<     \>\""}], "]"}]}], "\[IndentingNewLine]", 
        "}"}], "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tonic", ",", "261", ",", "\"\<Starting Frequency (Hz):\>\""}],
        "}"}], ",", "InputField", ",", 
      RowBox[{"FieldSize", "\[Rule]", "5"}]}], "}"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]}], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Fifths1$$ = 0, $CellContext`Fifths2$$ = 
    0, $CellContext`Fifths3$$ = 0, $CellContext`Fifths4$$ = 
    0, $CellContext`Octaves1$$ = 0, $CellContext`Octaves2$$ = 
    0, $CellContext`Octaves3$$ = 0, $CellContext`Octaves4$$ = 
    0, $CellContext`PlaySound2$$ = False, $CellContext`PlaySound3$$ = 
    False, $CellContext`PlaySound4$$ = False, $CellContext`Thirds1$$ = 
    0, $CellContext`Thirds2$$ = 0, $CellContext`Thirds3$$ = 
    0, $CellContext`Thirds4$$ = 0, $CellContext`tonic$$ = 261, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`Octaves1$$], 0, "Octaves:"}}, {{
       Hold[$CellContext`Fifths1$$], 0, "Fifths:"}}, {{
       Hold[$CellContext`Thirds1$$], 0, "Thirds:"}}, {
      Hold[
       Row[{
         Manipulate`Place[1], 
         Manipulate`Place[2], 
         Manipulate`Place[3]}, "     "]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`PlaySound2$$], False, "Play Second Note:"}, {
      True, False}}, {{
       Hold[$CellContext`Octaves2$$], 0, "Octaves:"}}, {{
       Hold[$CellContext`Fifths2$$], 0, "Fifths:"}}, {{
       Hold[$CellContext`Thirds2$$], 0, "Thirds:"}}, {
      Hold[
       OpenerView[{"Second Note?", 
         Column[{
           Manipulate`Place[4], 
           Row[{
             Manipulate`Place[5], 
             Manipulate`Place[6], 
             Manipulate`Place[7]}, "     "]}]}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`PlaySound3$$], False, "Play Third Note:"}, {
      True, False}}, {{
       Hold[$CellContext`Octaves3$$], 0, "Octaves:"}}, {{
       Hold[$CellContext`Fifths3$$], 0, "Fifths:"}}, {{
       Hold[$CellContext`Thirds3$$], 0, "Thirds:"}}, {
      Hold[
       OpenerView[{"Third Note?", 
         Column[{
           Manipulate`Place[8], 
           Row[{
             Manipulate`Place[9], 
             Manipulate`Place[10], 
             Manipulate`Place[11]}, "     "]}]}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`PlaySound4$$], False, "Play Fourth Note:"}, {
      True, False}}, {{
       Hold[$CellContext`Octaves4$$], 0, "Octaves:"}}, {{
       Hold[$CellContext`Fifths4$$], 0, "Fifths:"}}, {{
       Hold[$CellContext`Thirds4$$], 0, "Thirds:"}}, {
      Hold[
       OpenerView[{"Fourth Note?", 
         Column[{
           Manipulate`Place[12], 
           Row[{
             Manipulate`Place[13], 
             Manipulate`Place[14], 
             Manipulate`Place[15]}, "     "]}]}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`tonic$$], 261, "Starting Frequency (Hz):"}}}, 
    Typeset`size$$ = {250., {54.5, 60.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`PlaySound2$2901018$$ = 
    False, $CellContext`PlaySound3$2901019$$ = 
    False, $CellContext`PlaySound4$2901020$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Fifths1$$ = 0, $CellContext`Fifths2$$ = 
        0, $CellContext`Fifths3$$ = 0, $CellContext`Fifths4$$ = 
        0, $CellContext`Octaves1$$ = 0, $CellContext`Octaves2$$ = 
        0, $CellContext`Octaves3$$ = 0, $CellContext`Octaves4$$ = 
        0, $CellContext`PlaySound2$$ = False, $CellContext`PlaySound3$$ = 
        False, $CellContext`PlaySound4$$ = False, $CellContext`Thirds1$$ = 
        0, $CellContext`Thirds2$$ = 0, $CellContext`Thirds3$$ = 
        0, $CellContext`Thirds4$$ = 0, $CellContext`tonic$$ = 261}, 
      "ControllerVariables" :> {
        Hold[$CellContext`PlaySound2$$, $CellContext`PlaySound2$2901018$$, 
         False], 
        Hold[$CellContext`PlaySound3$$, $CellContext`PlaySound3$2901019$$, 
         False], 
        Hold[$CellContext`PlaySound4$$, $CellContext`PlaySound4$2901020$$, 
         False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         Play[
         Sin[$CellContext`tonic$$ 2 
            Pi $CellContext`FreqChange[$CellContext`Octaves1$$, \
$CellContext`Fifths1$$, $CellContext`Thirds1$$] $CellContext`t] + 
          If[$CellContext`PlaySound2$$, 
            
            Sin[$CellContext`tonic$$ 2 
             Pi $CellContext`FreqChange[$CellContext`Octaves2$$, \
$CellContext`Fifths2$$, $CellContext`Thirds2$$] $CellContext`t], 0] + 
          If[$CellContext`PlaySound3$$, 
            
            Sin[$CellContext`tonic$$ 2 
             Pi $CellContext`FreqChange[$CellContext`Octaves3$$, \
$CellContext`Fifths3$$, $CellContext`Thirds3$$] $CellContext`t], 0] + 
          If[$CellContext`PlaySound4$$, 
            
            Sin[$CellContext`tonic$$ 2 
             Pi $CellContext`FreqChange[$CellContext`Octaves4$$, \
$CellContext`Fifths4$$, $CellContext`Thirds4$$] $CellContext`t], 
            0], {$CellContext`t, 0, 2}]}], 
      "Specifications" :> {{{$CellContext`Octaves1$$, 0, "Octaves:"}, 
         ControlType -> InputField, FieldSize -> 2, ControlPlacement -> 
         1}, {{$CellContext`Fifths1$$, 0, "Fifths:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 
         2}, {{$CellContext`Thirds1$$, 0, "Thirds:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 3}, 
        Row[{
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3]}, 
         "     "], {{$CellContext`PlaySound2$$, False, "Play Second Note:"}, {
         True, False}, ControlType -> Checkbox, ControlPlacement -> 
         4}, {{$CellContext`Octaves2$$, 0, "Octaves:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 
         5}, {{$CellContext`Fifths2$$, 0, "Fifths:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 
         6}, {{$CellContext`Thirds2$$, 0, "Thirds:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 7}, 
        OpenerView[{"Second Note?", 
          Column[{
            Manipulate`Place[4], 
            Row[{
              Manipulate`Place[5], 
              Manipulate`Place[6], 
              Manipulate`Place[7]}, "     "]}]}], {{$CellContext`PlaySound3$$,
           False, "Play Third Note:"}, {True, False}, ControlType -> Checkbox,
          ControlPlacement -> 8}, {{$CellContext`Octaves3$$, 0, "Octaves:"}, 
         ControlType -> InputField, FieldSize -> 2, ControlPlacement -> 
         9}, {{$CellContext`Fifths3$$, 0, "Fifths:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 
         10}, {{$CellContext`Thirds3$$, 0, "Thirds:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 11}, 
        OpenerView[{"Third Note?", 
          Column[{
            Manipulate`Place[8], 
            Row[{
              Manipulate`Place[9], 
              Manipulate`Place[10], 
              Manipulate`Place[11]}, 
             "     "]}]}], {{$CellContext`PlaySound4$$, False, 
          "Play Fourth Note:"}, {True, False}, ControlType -> Checkbox, 
         ControlPlacement -> 12}, {{$CellContext`Octaves4$$, 0, "Octaves:"}, 
         ControlType -> InputField, FieldSize -> 2, ControlPlacement -> 
         13}, {{$CellContext`Fifths4$$, 0, "Fifths:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 
         14}, {{$CellContext`Thirds4$$, 0, "Thirds:"}, ControlType -> 
         InputField, FieldSize -> 2, ControlPlacement -> 15}, 
        OpenerView[{"Fourth Note?", 
          Column[{
            Manipulate`Place[12], 
            Row[{
              Manipulate`Place[13], 
              Manipulate`Place[14], 
              Manipulate`Place[15]}, "     "]}]}], {{$CellContext`tonic$$, 
          261, "Starting Frequency (Hz):"}, ControlType -> InputField, 
         FieldSize -> 5}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{301., {140., 146.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`FreqChange[
         Pattern[$CellContext`o, 
          Blank[]], 
         Pattern[$CellContext`f, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{$CellContext`newo, $CellContext`newf, $CellContext`newt}, \
$CellContext`newo = If[
            NumberQ[$CellContext`o], $CellContext`o, 0]; $CellContext`newf = 
          If[
            NumberQ[$CellContext`f], $CellContext`f, 0]; $CellContext`newt = 
          If[
            NumberQ[$CellContext`t], $CellContext`t, 0]; 
         2^$CellContext`newo (3/2)^$CellContext`newf (5/
            4)^$CellContext`newt]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]]
},
WindowSize->{1536, 791},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (December 4, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 40, 0, 70, "Section"],
Cell[1529, 37, 398, 10, 106, "Text"],
Cell[CellGroupData[{
Cell[1952, 51, 9252, 236, 667, "Input"],
Cell[11207, 289, 9324, 195, 303, "Output"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature XuDMhw9KrLhcAAKwzlwm37Iw *)
