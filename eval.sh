
# With ptp
CUDA_VISIBLE_DEVICES=6 python offline/eval_action_predictability.py \
       --ckpt    output/PegInsertionSide-v2/Offline-DiffusionPolicy-UNet/250526-153744_1_ptp/checkpoints/best_eval_success_rate.pt \
       --demo-h5 data/PegInsertionSide/trajectory.h5

# Without ptp
# CUDA_VISIBLE_DEVICES=6 python offline/eval_action_predictability.py \
#        --ckpt    output/PegInsertionSide-v2/Offline-DiffusionPolicy-UNet/250522-220135_1_ptp/checkpoints/best_eval_success_rate.pt \
#        --demo-h5 data/PegInsertionSide/trajectory.h5
