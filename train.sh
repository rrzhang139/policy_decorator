# CUDA_VISIBLE_DEVICES=7 python offline/train_ptp.py --env-id PegInsertionSide-v2 --demo-path data/PegInsertionSide/trajectory.h5 --track  --past-horizon 8

# CUDA_VISIBLE_DEVICES=7 python offline/train_ptp.py --env-id PegInsertionSide-v2 --demo-path data/PegInsertionSide/trajectory.h5 --track --past-horizon 0


CUDA_VISIBLE_DEVICES=7 python online/pi_dec_diffusion_maniskill2.py --env-id PegInsertionSide-v2 --base-policy-ckpt checkpoints/diffusion_PegInsertionSide/checkpoints/best.pt --res-scale 0.1 --prog-explore 30000 --track --exp-name pi_dec_diffusion_PegInsertionSide_base --capture-video False

# CUDA_VISIBLE_DEVICES=3 python online/diffusion-steering.py --env-id PegInsertionSide-v2 --base-policy-ckpt checkpoints/diffusion_PegInsertionSide/checkpoints/best.pt --res-scale 0.1 --prog-explore 30000 --exp-name diffusion_steering_PegInsertionSide_base --track

# CUDA_VISIBLE_DEVICES=4 python online/diffusion-steering.py --env-id PickCube-v1 --base-policy-ckpt checkpoints/diffusion_PegInsertionSide/checkpoints/best.pt --res-scale 0.1 --prog-explore 30000 --exp-name diffusion_steering_PickCube_
