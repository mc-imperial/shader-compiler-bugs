for i in `seq 1 30`;
do
	echo "Count $i"
	( cmdpid=$BASHPID; (sleep 300; kill -9 $cmdpid) & exec google-chrome-stable webgl_viewer_variant.html )
done
