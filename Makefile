#! /bin/sh

#for f in Rancher
for f in Rancher K3s
  do

	# Getting Started
	cp DC-TRD-RA-Rancher DC-TRD-GS-${f} && \
		daps --force -d DC-TRD-GS-${f} \
			--adocattr="GS=1@" \
			--adocattr="focus${f}=1@" \
			--adocattr="layerSLEMicro=1@" \
			--adocattr="FLVR=1@" \
			--adocattr="PoC=1@" \
			--adocattr="Production=1@" \
			--adocattr="Scaling=1@" \
			--adocattr="FCTR=1@" \
			--adocattr="Availability=1@" \
			--adocattr="Security=1@" \
			$@

	# Reference Implementation
	cp DC-TRD-RA-Rancher DC-TRD-RI-${f} && \
		daps --force -d DC-TRD-RI-${f} \
			--adocattr="RI=1@" \
			--adocattr="focus${f}=1@" \
			--adocattr="layerK3s=1@" \
			--adocattr="layerSLEMicro=1@" \
			--adocattr="FLVR=1@" \
			--adocattr="PoC=1@" \
			--adocattr="Production=1@" \
			--adocattr="Scaling=1@" \
			--adocattr="FCTR=1@" \
			--adocattr="Automation=1@" \
			--adocattr="Availability=1@" \
			--adocattr="Security=1@" \
			--adocattr="Integrity=1@" \
			$@

	# Reference Configuration
	cp DC-TRD-RA-Rancher DC-TRD-RC-${f}-HPE && \
		daps --force -d DC-TRD-RC-${f}-HPE \
			--adocattr="RC=1@" \
			--adocattr="focus${f}=1@" \
			--adocattr="layerK3s=1@" \
			--adocattr="layerSLEMicro=1@" \
			--adocattr="FLVR=1@" \
			--adocattr="PoC=1@" \
			--adocattr="Production=1@" \
			--adocattr="Scaling=1@" \
			--adocattr="FCTR=1@" \
			--adocattr="Automation=1@" \
			--adocattr="Availability=1@" \
			--adocattr="Security=1@" \
			--adocattr="Integrity=1@" \
			--adocattr="iIHV=1@" \
			--adocattr="IHV-HPE=1@" \
			--adocattr="IHV-HPE-Synergy=1@" \
			$@

	# Reference Configuration
	cp DC-TRD-RA-Rancher DC-TRD-RC-${f}-Cisco && \
		daps --force -d DC-TRD-RC-${f}-Cisco \
			--adocattr="RC=1@" \
			--adocattr="focus${f}=1@" \
			--adocattr="layerK3s=1@" \
			--adocattr="layerSLEMicro=1@" \
			--adocattr="FLVR=1@" \
			--adocattr="PoC=1@" \
			--adocattr="Production=1@" \
			--adocattr="Scaling=1@" \
			--adocattr="FCTR=1@" \
			--adocattr="Automation=1@" \
			--adocattr="Availability=1@" \
			--adocattr="Security=1@" \
			--adocattr="Integrity=1@" \
			--adocattr="iIHV=1@" \
			--adocattr="IHV-Cisco=1@" \
			--adocattr="IHV-Cisco-C240-SD=1@" \
			$@

	# Reference Configuration
	cp DC-TRD-RA-Rancher DC-TRD-RC-${f}-Supermicro-SuperServer && \
		daps --force -d DC-TRD-RC-${f}-Supermicro-SuperServer \
			--adocattr="RC=1@" \
			--adocattr="focus${f}=1@" \
			--adocattr="layerK3s=1@" \
			--adocattr="layerSLEMicro=1@" \
			--adocattr="FLVR=1@" \
			--adocattr="PoC=1@" \
			--adocattr="Production=1@" \
			--adocattr="Scaling=1@" \
			--adocattr="FCTR=1@" \
			--adocattr="Automation=1@" \
			--adocattr="Availability=1@" \
			--adocattr="Security=1@" \
			--adocattr="Integrity=1@" \
			--adocattr="iIHV=1@" \
			--adocattr="IHV-Supermicro-SuperServer=1@" \
			$@

  done
