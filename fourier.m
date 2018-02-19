imdata = imread('c:\ca.tif');
figure(1);imshow(imdata); title('Orjinal Fotoðraf');
F = fft2(imdata);
S = abs(F);
figure(2);imshow(S);title('Fourier Dönüþümü-abs');
Fsh = fftshift(F);
figure(3);imshow(abs(Fsh),[]);title('Merkezleþtirilmiþ Fourier Dönüþümü');
S2 = log(1+abs(Fsh));
figure(4);imshow(S2,[]);title('Fourier-log Dönüþümü');
F = ifftshift(Fsh);
f = ifft2(F);
figure(5);imshow(f,[]),title('Yeniden Baþa Döndürülmüþ Fotoðraf');
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
figure(8);imshow(uint8(abs(Irealf)));title('Frealdan uzay Dönüþümü');



