#
# Makefile

# setup
DC=DC-TRD-Kubernetes-RA

# Template type
template=RC

# Focus: Rancher K3s RKE1 RKE2
focus=Rancher

# Layers: SLEMicro SLES
# Layers: RKE1 RKE2 K3s
layerK8s=RKE1
layerOS=SLES

# partner in Cisco DELL HPE Supermicro
partner=Fujitsu
serverline=PRIMERGY

# Output
output=${template}-${focus}-${layerK8s}-${layerOS}-${partner}-${serverline}
dapscmd= daps --force -d ${DC} \
		--adocattr="${template}=1" \
		--adocattr="focus${focus}=1" \
		--adocattr="layer${layerK8s}=1" \
		--adocattr="layer${layerOS}=1" \
		--adocattr="FLVR=1" \
		--adocattr="BPBV=1" \
		--adocattr="PoC=1" \
		--adocattr="Production=1" \
		--adocattr="Scaling=1" \
		--adocattr="FCTR=1" \
		--adocattr="Automation=1" \
		--adocattr="Availability=1" \
		--adocattr="Security=1" \
		--adocattr="Integrity=1" \
		--adocattr="HWComp=1" \
		--adocattr="iIHV=1" \
		--adocattr="IHV-${partner}=1" \
		--adocattr="IHV-${partner}-${serverline}=1" \
		pdf --name ${output}

fujitsu:
	# Fujitsu Reference Configuration
	echo "Output=" ${output}
	${dapscmd}

