
[f,Fs] = audioread('fur.wav');
info = audioinfo('fur.wav');

l=abs(f(:,1));
r=abs(f(:,2));


ace = zeros(400,400,3);

longitud = 615;
factor = 1;

for x = 1:1:615
    for y = 1:1:615
        for z = 1:1:3
            if z == 1
                ace(x,y,z) = l(y+x*longitud)*factor; % RED
            elseif z == 2
                ace(x,y,z) = r(y+x*longitud)*factor; % GREEN
            else
                ace(x,y,z) = s(y+x*longitud)*factor; % BLUE
            end
        end
    end
end

% for x = inicio:1:500
%     for y = 1:1:longitud
%         ace(x,y,1) = l(y)*factor;
%     end
% end
% 
% for x = inicio:1:500
%     for y = 1:1:longitud
%         ace(x,y,2) = r(y)*factor;
%     end
% end
% for x = inicio:1:500
%     for y = 1:1:longitud
%         ace(x,y,3) = s(y)*factor;
%     end
% end


figure, imshow(ace);