[f,Fs] = audioread('fur.wav');
test = f(:,1);
y = abs(test);

info = audioinfo('fur.wav');
image=zeros(300,400,3); %initialize
 image(:,1:100,1)=0.5;   %Red (dark red)
 image(:,101:200,1)=1;   %Red (maximum value)
 image(1:100,:,2)=1;%rand(0,10);  %Green
 
  figure, imshow(image);