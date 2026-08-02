	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_backward.py"
	.loc	1 171 0                         ; kda_backward.py:171:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x34
	s_load_b128 s[12:15], s[0:1], 0x0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_load_b128 s[8:11], s[0:1], 0x20
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12 prologue_end           ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_lshrrev_b32_e32 v7, 3, v0
.Ltmp1:
	.loc	1 223 17                        ; kda_backward.py:223:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s3, s2, v[0:1]
	.loc	1 187 18                        ; kda_backward.py:187:18
	v_cmp_gt_i32_e64 s2, s3, v0
	.loc	1 222 25                        ; kda_backward.py:222:25
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
.Ltmp2:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_lshlrev_b32_e32 v0, 2, v0
.Ltmp3:
	.loc	1 222 25                        ; kda_backward.py:222:25
	v_lshlrev_b32_e32 v2, 1, v1
	.loc	1 237 9                         ; kda_backward.py:237:9
	v_lshlrev_b32_e32 v1, 2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_and_b32_e32 v0, 12, v0
.Ltmp5:
	.loc	1 222 25                        ; kda_backward.py:222:25
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 237 9                         ; kda_backward.py:237:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_add_nc_u32_e32 v0, 0, v0
.Ltmp7:
	.loc	1 222 25                        ; kda_backward.py:222:25
	buffer_load_u16 v3, v2, s[4:7], 0 offen
	.loc	1 227 23                        ; kda_backward.py:227:23
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	.loc	1 237 9                         ; kda_backward.py:237:9
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s4, s8
	.loc	1 222 25                        ; kda_backward.py:222:25
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 41                        ; kda_backward.py:233:41
	v_mul_f32_e32 v4, v3, v3
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_mov_b32_dpp v4, v4 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:233:34 ] ]
	v_fmac_f32_e32 v4, v3, v3
	v_add_f32_dpp v4, v4, v4 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_permlanex16_b32 v6, v4, -1, -1 op_sel:[1,0]
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:233:34 ] ]
	v_add_f32_e32 v4, v4, v6
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_and_b32_e32 v6, 12, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readlane_b32 s0, v4, 31
.Ltmp13:
	.loc	1 227 23                        ; kda_backward.py:227:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_add_nc_u32_e32 v4, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 234 39                        ; kda_backward.py:234:39
	v_mul_f32_e32 v5, v2, v2
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_mov_b32_dpp v5, v5 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:234:32 ] ]
	v_fmac_f32_e32 v5, v2, v2
	v_add_f32_dpp v5, v5, v5 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v5, v5, v5 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v5, v5, v5 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_permlanex16_b32 v8, v5, -1, -1 op_sel:[1,0]
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:234:32 ] ]
	v_add_f32_e32 v5, v5, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_readlane_b32 s1, v5, 31
.Ltmp21:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_dual_mov_b32 v5, s0 :: v_dual_mov_b32 v6, s1
	ds_store_b32 v4, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v0
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v4, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_mov_b32_e32 v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, v0
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:233:34 ] ]
	v_add_f32_e32 v4, v5, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_mov_b32_e32 v5, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:234:32 ] ]
	v_add_f32_e32 v0, v0, v6
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:233:34 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_mov_b32_e32 v6, v0
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:233:34 ] ]
	v_add_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:234:32 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 233 26                        ; kda_backward.py:233:26
	v_sqrt_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:234:32 ] ]
	v_add_f32_e32 v0, v0, v6
.Ltmp35:
	.loc	1 234 24                        ; kda_backward.py:234:24
	v_sqrt_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 235 37                        ; kda_backward.py:235:37
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	.loc	1 235 25 is_stmt 0              ; kda_backward.py:235:25
	v_div_scale_f32 v5, null, v4, v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 236 33 is_stmt 1              ; kda_backward.py:236:33
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_div_scale_f32 v11, vcc_lo, v3, v4, v3
	v_rcp_f32_e32 v7, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_div_scale_f32 v6, null, v0, v0, v2
	v_rcp_f32_e32 v8, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_fma_f32 v9, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v9, v7
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_div_scale_f32 v9, s0, v2, v0, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_mul_f32_e32 v10, v11, v7
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_mul_f32_e32 v12, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_fma_f32 v13, -v5, v10, v11
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_fma_f32 v14, -v6, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_fmac_f32_e32 v10, v13, v7
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_fmac_f32_e32 v12, v14, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_fma_f32 v5, -v5, v10, v11
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_fma_f32 v6, -v6, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_div_fmas_f32 v5, v5, v7, v10
	.loc	1 236 23                        ; kda_backward.py:236:23
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v6, v6, v8, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 25                        ; kda_backward.py:235:25
	v_div_fixup_f32 v3, v5, v4, v3
	.loc	1 236 23                        ; kda_backward.py:236:23
	v_div_fixup_f32 v0, v6, v0, v2
	.loc	1 237 9                         ; kda_backward.py:237:9
	buffer_store_b32 v3, v1, s[4:7], 0 offen
	.loc	1 242 9                         ; kda_backward.py:242:9
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	buffer_store_b32 v0, v1, s[4:7], 0 offen
	.loc	1 171 5                         ; kda_backward.py:171:5
	s_endpgm
.Ltmp36:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 15
		.amdhsa_next_free_sgpr 16
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 6
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 15
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 16
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 760
; TotalNumSgprs: 18
; NumVgprs: 15
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 15
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	233                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	234                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x67:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_backward.py"               ; string offset=7 ; kda_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=23 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=91 ; amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 0
    .sgpr_count:     18
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_bwd_pre_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     15
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
