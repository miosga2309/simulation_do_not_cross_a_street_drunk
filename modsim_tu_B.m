start = [0,0];
c = 0;
straight = 0;
% street 8m wide, danger zones: 1 to 3 and 5 to 7
while(start(2) < 7)
    c = c + 1;
    r = rand(1);
    xmin = -2/3*pi;
    xmax = 2/3*pi;
    x = xmin+rand(1,1)*(xmax-xmin);    
    if(r > .95)
        fprintf('Meters made until death: %d\n', straight)
        break;
    else
        start(1) = start(1) + 2*cos(x);
        start(2) = start(2) + abs(2*sin(x));
        straight = start(2);
    end
end 