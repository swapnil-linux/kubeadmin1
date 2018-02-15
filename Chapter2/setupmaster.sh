yum install -y docker
systemctl enable docker && systemctl start docker
cp /opt/kubeadmin1/Chapter2/kubernetes.repo /etc/yum.repos.d/
yum install -y kubelet kubeadm kubectl
systemctl enable kubelet && systemctl start kubelet
cp /opt/kubeadmin1/Chapter2/k8s.conf /etc/sysctl.d/k8s.conf
sysctl --system
kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
/opt/kubeadmin1/Chapter2/calico.sh
kubectl get pods --all-namespaces
kubectl taint nodes --all node-role.kubernetes.io/master-
echo "source <(kubectl completion bash)" >> ~/.bashrc
