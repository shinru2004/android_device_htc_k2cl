#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

cd system/etc/firmware
case `ls q6.mdt 2>/dev/null` in
	q6.mdt)
		for imgfile in q6*; do
			ln -s system/etc/firmware/$imgfile /vendor/firmware/$imgfile 2>/dev/null
		done
		;;
	*)
		log -p w -t PIL 8960 device but no q6 image found;;
esac

cd /
