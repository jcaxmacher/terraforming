#!/bin/sh

set +e
mkdir ./code ./state

terraforming alb > ./code/alb.tf
terraforming asg > ./code/asg.tf
terraforming cwa > ./code/cwa.tf
terraforming dbpg > ./code/dbpg.tf
terraforming dbsg > ./code/dbsg.tf
terraforming dbsn > ./code/dbsn.tf
terraforming ec2 > ./code/ec2.tf
terraforming ecc > ./code/ecc.tf
terraforming ecsn > ./code/ecsn.tf
terraforming efs > ./code/efs.tf
terraforming eip > ./code/eip.tf
terraforming elb > ./code/elb.tf
terraforming iamg > ./code/iamg.tf
terraforming iamgm > ./code/iamgm.tf
terraforming iamgp > ./code/iamgp.tf
terraforming iamip > ./code/iamip.tf
terraforming iamp > ./code/iamp.tf
terraforming iampa > ./code/iampa.tf
terraforming iamr > ./code/iamr.tf
terraforming iamr > ./code/iamr.tf
terraforming iamu > ./code/iamu.tf
terraforming iamup > ./code/iamup.tf
terraforming igw > ./code/igw.tf
terraforming kmsa > ./code/kmsa.tf
terraforming kmsk > ./code/kmsk.tf
terraforming lc > ./code/lc.tf
terraforming nacl > ./code/nacl.tf
terraforming nat > ./code/nat.tf
terraforming nif > ./code/nif.tf
terraforming r53r > ./code/r53r.tf
terraforming r53z > ./code/r53z.tf
terraforming rds > ./code/rds.tf
terraforming rs > ./code/rs.tf
terraforming rt > ./code/rt.tf
terraforming rta > ./code/rta.tf
terraforming s3 > ./code/s3.tf
terraforming sg > ./code/sg.tf
terraforming sn > ./code/sn.tf
terraforming snss > ./code/snss.tf
terraforming snst > ./code/snst.tf
terraforming sqs > ./code/sqs.tf
terraforming vgw > ./code/vgw.tf
terraforming vpc > ./code/vpc.tf

# State
terraforming alb --tfstate > ./state/tfstate
terraforming asg --tfstate --merge=./state/tfstate
terraforming cwa --tfstate --merge=./state/tfstate
terraforming dbpg --tfstate --merge=./state/tfstate
terraforming dbsg --tfstate --merge=./state/tfstate
terraforming dbsn --tfstate --merge=./state/tfstate
terraforming ec2 --tfstate --merge=./state/tfstate
terraforming ecc --tfstate --merge=./state/tfstate
terraforming ecsn --tfstate --merge=./state/tfstate
terraforming efs --tfstate --merge=./state/tfstate
terraforming eip --tfstate --merge=./state/tfstate
terraforming elb --tfstate --merge=./state/tfstate
terraforming iamg --tfstate --merge=./state/tfstate
terraforming iamgm --tfstate --merge=./state/tfstate
terraforming iamgp --tfstate --merge=./state/tfstate
terraforming iamip --tfstate --merge=./state/tfstate
terraforming iamp --tfstate --merge=./state/tfstate
terraforming iampa --tfstate --merge=./state/tfstate
terraforming iamr --tfstate --merge=./state/tfstate
terraforming iamr --tfstate --merge=./state/tfstate
terraforming iamu --tfstate --merge=./state/tfstate
terraforming iamup --tfstate --merge=./state/tfstate
terraforming igw --tfstate --merge=./state/tfstate
terraforming kmsa --tfstate --merge=./state/tfstate
terraforming kmsk --tfstate --merge=./state/tfstate
terraforming lc --tfstate --merge=./state/tfstate
terraforming nacl --tfstate --merge=./state/tfstate
terraforming nat --tfstate --merge=./state/tfstate
terraforming nif --tfstate --merge=./state/tfstate
terraforming r53r --tfstate --merge=./state/tfstate
terraforming r53z --tfstate --merge=./state/tfstate
terraforming rds --tfstate --merge=./state/tfstate
terraforming rs --tfstate --merge=./state/tfstate
terraforming rt --tfstate --merge=./state/tfstate
terraforming rta --tfstate --merge=./state/tfstate
terraforming s3 --tfstate --merge=./state/tfstate
terraforming sg --tfstate --merge=./state/tfstate
terraforming sn --tfstate --merge=./state/tfstate
terraforming snss --tfstate --merge=./state/tfstate
terraforming snst --tfstate --merge=./state/tfstate
terraforming sqs --tfstate --merge=./state/tfstate
terraforming vgw --tfstate --merge=./state/tfstate
terraforming vpc --tfstate --merge=./state/tfstate
