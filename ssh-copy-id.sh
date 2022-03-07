NET=172.20.0
USER=(root ansible)
PASSWORD=password
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
sed -i '/StrictHostKeyChecking/c StrictHostKeyChecking no' /etc/ssh/ssh_config
rpm -q sshpass || yum -y install sshpass
for i in {2..5} ; do
{
  sshpass -p $PASSWORD ssh-copy-id -i ${USER[0]}@${NET}.${i}
}&
done
cat hosts >> /etc/ansible/hosts
