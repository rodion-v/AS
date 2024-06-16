                                                  
#!/bin/bash
groupadd First33_group
groupadd 34-66_group
groupadd outsiders_group
for ((i=1;i<69;i++))
do
  useradd abuser$i
 if [[ $i -lt 34 ]]; then
  usermod -a abuser$i -G First33_group
 elif [[ $i -lt 66 ]]; then
  usermod -a abuser$i -G 34-65_group
 else
  usermod -a abuser$i -G outsiders_group
 fi
done

