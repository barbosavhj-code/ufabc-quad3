clc %Apaga linha de comando
clear all %Limpa tudo
close all %fecha as abas abertas


%invoca o integrador
equacoesDifs

%invoca a terra
terra

% 6. Plotando tudo junto na mesma figura
figure;
plot3(Y(:,1), Y(:,2), Y(:,3), 'LineWidth', 2); % Desenha a órbita
hold on;                                      % Mantém a órbita na tela
surf(x, y, z, 'EdgeColor', 'none');           % Desenha a Terra (sem as linhas da malha)

colormap(cool);
axis equal;                                   % Mantém a proporção real para não distorcer o planeta
grid on;
xlabel('X (m)');
ylabel('Y (m)');
zlabel('Z (m)');
hold off;