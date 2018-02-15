yum install -y docker
systemctl enable docker && systemctl start docker
cp /opt/kubeadmin1/Chapter2/kubernetes.repo /etc/yum.repos.d/
yum install -y kubelet kubeadm kubectl
systemctl enable kubelet && systemctl start kubelet
cp /opt/kubeadmin1/Chapter2/k8s.conf /etc/sysctl.d/k8s.conf
sysctl --system

