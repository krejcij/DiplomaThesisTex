% Globals
figure('InvertHardcopy','off','Color',[1 1 1]);
ax = gca;
ax.FontName = 'CMU Serif'
set(0,'defaulttextinterpreter','latex')
set(0,'DefaultTextFontname', 'CMU Serif')
set(0,'DefaultAxesFontName', 'CMU Serif')

% Data
timestamp = bonega(:,2);
studena = bonega(:,5);
tepla = bonega(:,4);

% Title
title('Vodomery Bonega SA-E/15 a TA-E/15 (interval 24 hodin)',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',16,...
    'FontName','CMU Serif');

% Axis Y1
hold('on');
yyaxis('left');
pl1 = plot(timestamp,studena,'DisplayName','SA-E/15 studená voda',...
    'MarkerFaceColor',[0 0.447058826684952 0.74117648601532],...
    'MarkerEdgeColor',[0 0.447058826684952 0.74117648601532],...
    'MarkerSize',4,...
    'Marker','o',...
    'Color',[0 0.447058826684952 0.74117648601532]);
ylabel('Studená voda [l]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.YMinorTick = 'on'
ylim([38280 38390]);

% Axis Y2
yyaxis('right');
pl2 = plot(timestamp,tepla,'DisplayName','TA-E/15 teplá voda',...
'MarkerFaceColor',[0.850980401039124 0.325490206480026 0.0980392172932625],...
'MarkerEdgeColor',[0.850980401039124 0.325490206480026 0.0980392172932625],...
    'MarkerSize',4,...
    'Marker','square',...
    'Color',[0.850980401039124 0.325490206480026 0.0980392172932625]);
ylabel('Teplá voda [l]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.YMinorTick = 'on'
ylim([31520 31860]);

% Axis X
xlabel('Cas [hh:mm]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.XTick = 0:60:1440
xlim([0 1440]);

% Grid
box('on');
grid('on');
grid('minor');
ax.GridAlpha = 0.4;
ax.GridLineStyle = '-';
ax.GridColor = [0.5 0.5 0.5];
ax.MinorGridAlpha = 0.4;
ax.MinorGridLineStyle = ':';
ax.MinorGridColor = [0.5 0.5 0.5];
ax.TickLength = [0.005 0.0035]
ax.XTick =  [0 60 120 180 240 300 360 420 480 540 600 660 720 780 840 900 960 1020 1080 1140 1200 1260 1320 1380 1440];
ax.XTickLabel = {'0:00','1:00','2:00','3:00','4:00','5:00','6:00','7:00','8:00','9:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','24:00'};


% Legend
legend1 = legend('show');
set(legend1,'Location','north','FontSize',11,'FontName','CMU Serif');

% Export
set(gcf, 'Position', [1 1 1600 700]);
set(gcf,'PaperPositionMode','auto');  
set(gcf,'PaperOrientation','landscape');
export_fig VygenerujGrafBonega.pdf
