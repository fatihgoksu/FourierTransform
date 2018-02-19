imdata = imread('c:\ca.tif');
figure(1);imshow(imdata); title('Orjinal Foto�raf');
F = fft2(imdata);
S = abs(F);
figure(2);imshow(S);title('Fourier D�n���m�-abs');
Fsh = fftshift(F);
figure(3);imshow(abs(Fsh),[]);title('Merkezle�tirilmi� Fourier D�n���m�');
S2 = log(1+abs(Fsh));
figure(4);imshow(S2,[]);title('Fourier-log D�n���m�');
F = ifftshift(Fsh);
f = ifft2(F);
figure(5);imshow(f,[]),title('Yeniden Ba�a D�nd�r�lm�� Foto�raf');
Freal=real(Fsh);
Fim=imag(Fsh);
Ireal=ifftshift(Freal);
Irealf=ifft2(Ireal);
Iima=ifft2(Fim);
figure(6);imshow(uint8(abs(Irealf)));
figure(7);imshow(uint8(abs(Iima)));
F = fft2(imdata);
Freal=real(F);
Irealf=ifft2(Freal);
figure(8);imshow(uint8(abs(Irealf)));title('Frealdan uzay D�n���m�');



