#!\bin\bash


#docker run -ti --rm -v C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\data\bids:/data -v C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\data\out:/out -v C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\scripts:/scripts nipreps/fmriprep:20.2.1 --notrack --output-spaces fsaverage5 --fs-license-file /scripts/license.txt /data /out/fmriprep-20.2.1 participant
--mount src="C:\User...",target=/docker_vol,type=bind
docker run -ti --rm --mount src="C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\data\bids",target=/data,type=bind --mount src="C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\data\out",target=/out,type=bind --mount src="C:\Users\telec\Documents\Cogmaster\Stage\projects\mri_meg\scripts",target=/scripts,type=bind nipreps/fmriprep:20.2.1 --notrack --sloppy --low-mem --mem-mb 2000 --output-spaces fsaverage5 --fs-license-file /scripts/license.txt /data /out/fmriprep-20.2.1 participant  

#-u $( id -u ) 