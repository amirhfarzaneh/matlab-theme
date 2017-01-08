function [] = AMIX_MATLAB()
%===============================================================================
%===============================================================================

%% Setup Color Scheme for Light/Dark Options
sycb = 0;           % Set 'Use system colors' checkbox to False
txc  = [0 204 107] / 256;   % Set 'Text' color
bgc  = [35 39 47] / 256;    % Set 'Background' color
kwd  = [86 156 214] / 256;    % Set 'Keywords' color
cmt  = [108 115 130] / 256;    % Set 'Comments' color - spec calls for base1, not sure about that...
str  = [214 157 133] / 256; % Set 'Strings' color
ustr = [78 201 176] / 256;  % Set 'Unterminated strings' color
scmd = [153 153 153] / 256;  % Set 'System commands' color
errs = [216 80 80] / 256;     % Set 'Errors' color
hyp  = [0 191 191] / 256;    % Set 'Hyperlinks' color
warn = [149 219 125] / 256;  % Set 'Warnings' color
afhb = 1;           % Set 'Autofix highlight' checkbox to False
afh  = [93 80 57] / 256;  % Set 'Autofix highlight' color
ahib = 1;           % Set 'Automatically highlight' checkbox to False
ahi  = [14 69 131] / 256;  % Set 'Automatically highlight' color
vwss = [0 163 163] / 256;   % Set 'Variables with shared scope' color
hsb  = 1;           % Set 'Highlight sections' checkbox to False
hsbc = [40 44 52] / 256;  % Set 'Highlight sections' color to default yellow
slnb = 1;           % Set 'Show line numbers' checkbox to True
rtlb = 0;           % Set 'Show line' checkbox in Right-hand text limit to True
hclb = 1;           % Set 'Highlight current line' checkbox to True
hcl  = [7 54 66] / 256;  % Set 'Highlight current line' color

%% Desktop tool colors
com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',sycb); clear('sycb')

com.mathworks.services.Prefs.setColorPref('ColorsText',java.awt.Color(txc(1), txc(2), txc(3))); 
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsText'); clear('txc')

com.mathworks.services.Prefs.setColorPref('ColorsBackground',java.awt.Color(bgc(1), bgc(2), bgc(3))); 
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsBackground'); clear('bgc')

%% Setup MATLAB syntax highlighting colors
com.mathworks.services.Prefs.setColorPref('Colors_M_Keywords',java.awt.Color(kwd(1), kwd(2), kwd(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Keywords'); clear('kwd')

com.mathworks.services.Prefs.setColorPref('Colors_M_Comments',java.awt.Color(cmt(1), cmt(2), cmt(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Comments'); clear('cmt')

com.mathworks.services.Prefs.setColorPref('Colors_M_Strings',java.awt.Color(str(1), str(2), str(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Strings'); clear('str')

com.mathworks.services.Prefs.setColorPref('Colors_M_UnterminatedStrings',java.awt.Color(ustr(1), ustr(2), ustr(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_UnterminatedStrings'); clear('ustr')

com.mathworks.services.Prefs.setColorPref('Colors_M_SystemCommands',java.awt.Color(scmd(1), scmd(2), scmd(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_SystemCommands'); clear('scmd')

com.mathworks.services.Prefs.setColorPref('Colors_M_Errors',java.awt.Color(errs(1), errs(2), errs(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Errors');clear('errs')

%% Other colors
com.mathworks.services.Prefs.setColorPref('Colors_HTML_HTMLLinks',java.awt.Color(hyp(1), hyp(2), hyp(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_HTML_HTMLLinks'); clear('hyp')

%% Code analyzer colors
com.mathworks.services.Prefs.setColorPref('Colors_M_Warnings',java.awt.Color(warn(1), warn(2), warn(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Warnings'); clear('warn')

com.mathworks.services.Prefs.setBooleanPref('ColorsUseMLintAutoFixBackground',afhb);
com.mathworks.services.Prefs.setColorPref('ColorsMLintAutoFixBackground',java.awt.Color(afh(1), afh(2), afh(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsMLintAutoFixBackground'); clear('afhb','afh')

%% Variable and function colors
com.mathworks.services.Prefs.setBooleanPref('Editor.VariableHighlighting.Automatic',ahib);
com.mathworks.services.Prefs.setColorPref('Editor.VariableHighlighting.Color',java.awt.Color(ahi(1), ahi(2), ahi(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.VariableHighlighting.Color'); clear('ahib','ahi')

% *** need to add checkbox option for variables with shared scope here
com.mathworks.services.Prefs.setColorPref('Editor.NonlocalVariableHighlighting.TextColor',java.awt.Color(vwss(1), vwss(2), vwss(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.NonlocalVariableHighlighting.TextColor');clear('vwss')

%% Section display options
com.mathworks.services.Prefs.setBooleanPref('EditorCodepadHighVisible',hsb);
com.mathworks.services.Prefs.setColorPref('Editorhighlight-lines', java.awt.Color(hsbc(1), hsbc(2), hsbc(3)));
clear('hsb','hsbc');

%% Editor/Debugger General display options
com.mathworks.services.Prefs.setBooleanPref('Editorhighlight-caret-row-boolean',hclb);
com.mathworks.services.Prefs.setColorPref('Editorhighlight-caret-row-boolean-color',java.awt.Color(hcl(1), hcl(2), hcl(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editorhighlight-caret-row-boolean-color'); clear('hclb','hcl')

com.mathworks.services.Prefs.setBooleanPref('EditorShowLineNumbers',slnb); clear('slnb')

com.mathworks.services.Prefs.setBooleanPref('EditorRightTextLineVisible',rtlb);
