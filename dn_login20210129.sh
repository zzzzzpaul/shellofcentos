#!/bin/bash
cd ~ &&\
	mkdir ./test &&\
	chmod 777 ./test &&\
	echo -e "#!/bin/bash\n" >> ./test/test.sh &&\
	echo -e "echo test success" >> ./test/test.sh &&\
	sh /root/test/test.sh


