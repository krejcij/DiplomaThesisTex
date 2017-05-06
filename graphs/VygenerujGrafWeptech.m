% Figure
figure('InvertHardcopy','off','Color',[1 1 1]);
ax = gca;
ax.FontName = 'CMU Serif'

% Data
timestamp = weptech(:,1);
teplota = weptech(:,2);
vlhkost = weptech(:,3);

% Title
title('Teplota a vlhkost zachycená èidlem Weptech OSMF86-A za 24 hodin',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',16,...
    'FontName','CMU Serif');

% Axis Y1
hold('on');
yyaxis('left');
pl1 = plot(timestamp,teplota,'DisplayName','teplota',...
    'MarkerFaceColor',[0 0.447058826684952 0.74117648601532],...
    'MarkerEdgeColor',[0 0.447058826684952 0.74117648601532],...
    'MarkerSize',4,...
    'Marker','o',...
    'Color',[0 0.447058826684952 0.74117648601532]);
ylabel('Teplota [C]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.YMinorTick = 'on'
ylim([17.75 24.25]);

% Axis Y2
yyaxis('right');
pl2 = plot(timestamp,vlhkost,'DisplayName','vlhkost',...
'MarkerFaceColor',[0.850980401039124 0.325490206480026 0.0980392172932625],...
'MarkerEdgeColor',[0.850980401039124 0.325490206480026 0.0980392172932625],...
    'MarkerSize',4,...
    'Marker','square',...
    'Color',[0.850980401039124 0.325490206480026 0.0980392172932625]);
ylabel('Vlhkost [RV]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.YMinorTick = 'on'
ylim([34.75 44.25]);

% Axis X
xlabel('Èas mìøení [Minuty]','HorizontalAlignment','center','FontSize',12,'FontName','CMU Serif');
ax.XTick = 0:60:1433
xlim([0 1433]);

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

% Legend
legend1 = legend('show');
set(legend1,'Location','north','FontSize',12,'FontName','CMU Serif');




