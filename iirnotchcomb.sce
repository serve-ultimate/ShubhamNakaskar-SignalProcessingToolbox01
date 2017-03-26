disp("enter the values of fo(notch freq.),fs(signal freq.),q(quality factor) and n(filter order) in the fo.txt,fs.txt,q.txt and n.txt files provided")
fo=read('fo.txt',1,1)
fs=read('fs.txt',1,1)
q=read('q.txt',1,1)
n=read('n.txt',1,1)
nn=n+1
//nn=no. of notches
bw = (fo/(fs/2))/q
w0 = (fo/(fs/2))
i=w0
xtitle("iirnotchcomb","normalised freq.","magnitude(dB)")
for a=0:(i/4):(i*nn)
    if(a==w0)
        w0=w0+i;
        continue 
    else 
        plot(a,bw,'o')
end
end
