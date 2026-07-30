	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[48:51], s[0:1], 0x80
	s_load_b128 s[24:27], s[0:1], 0x4c
	s_load_b32 s52, s[0:1], 0x5c
	s_load_b64 s[20:21], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v70, 6, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v58, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v73, 6, v70
	v_or_b32_e32 v75, 10, v70
	v_or_b32_e32 v76, 12, v70
	v_or_b32_e32 v74, 8, v70
	v_or_b32_e32 v77, 14, v70
	v_or_b32_e32 v71, 2, v70
	v_or_b32_e32 v72, 4, v70
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[59:60], null, s52, v70, v[58:59]
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s33, s3, s26
	s_cselect_b32 s28, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s17, s24
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s35, s2, 5
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s5, 0, s17
	s_abs_i32 s2, s3
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[60:61], null, s52, 6, v[59:60]
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s35, v73
	v_or_b32_e32 v6, s35, v75
	v_or_b32_e32 v7, s35, v76
	v_or_b32_e32 v5, s35, v74
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s10, s52, v58
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[61:62], null, s52, 10, v[59:60]
	v_mad_u64_u32 v[62:63], null, s52, 12, v[59:60]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s35, v70
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[63:64], null, s52, 14, v[59:60]
	v_lshl_add_u32 v80, s52, 3, v59
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v11, 18, v1
	v_or_b32_e32 v12, 20, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s4, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, 22, v1
	v_or_b32_e32 v14, 24, v1
	v_or_b32_e32 v15, 26, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s5, s5, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, 28, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, 30, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s4, s4, s5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s26, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s5, s4, s17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v8, s35, v77
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s17
	s_cmp_ge_u32 s2, s17
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s29, s52, 18
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s17
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s26, v5
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s19, s5, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s18, s25
	s_xor_b32 s40, s24, s25
	s_cvt_f32_u32 s2, s18
	s_sub_i32 s14, 0, s18
	s_ashr_i32 s40, s40, 31
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s26, v4
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v10, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s26, v9
	v_cmp_gt_i32_e64 s9, s26, v8
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s34, s52, 24
	s_mul_i32 s30, s52, 20
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s26, v12
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s36, s52, 26
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s35, v71
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s31, s52, 22
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s35, v72
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s8, v10
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v78, s52, 1, v59
	s_mul_i32 s37, s52, 28
	s_mul_i32 s38, s52, 30
	v_lshl_add_u32 v79, s52, 2, v59
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s12, s8, 0x4f7ffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s26, v7
	v_cmp_gt_i32_e64 s2, s26, v2
	v_cmp_gt_i32_e64 s4, s26, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s16, s12
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s26, v11
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s15, s14, s16
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s14, s26, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s39, s16, s15
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s15, s26, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s39, s16, s39
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s16, s26, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s39, s17, s39
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s41, s39, s18
	s_add_i32 s42, s39, 1
	s_sub_i32 s41, s17, s41
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s26, v16
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s43, s41, s18
	s_cmp_ge_u32 s41, s18
	s_cselect_b32 s39, s42, s39
	s_cselect_b32 s41, s43, s41
	s_add_i32 s42, s39, 1
	s_cmp_ge_u32 s41, s18
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s26, v17
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s39, s42, s39
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s33, s33, s35
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s10
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s42, s33, s52
	s_lshl_b32 s41, s52, 4
	v_add_nc_u32_e32 v1, s42, v59
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s42, v61, 1
	v_add_lshl_u32 v4, s42, v60, 1
	v_add_lshl_u32 v5, s42, v80, 1
	v_add_lshl_u32 v9, s42, v63, 1
	v_lshlrev_b32_e32 v6, 1, v1
	v_add_lshl_u32 v11, v1, s29, 1
	v_add_lshl_u32 v8, s42, v62, 1
	v_add_lshl_u32 v10, v1, s41, 1
	v_add_lshl_u32 v13, v1, s34, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v17, v0, 6, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s6, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v12, v1, s30, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s7, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v15, v1, s36, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s8, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v54, 1, v58
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s9, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v49, 0x90, v17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s11, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v14, v1, s31, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s12, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v16, v1, s37, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s13, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v1, s38, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s15, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s42, v78, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s14, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v17, v49, v54
	v_add_lshl_u32 v3, s42, v79, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s16, s10
	s_and_b32 s2, s2, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s17, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s4, s10
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v18, 0x120, v17
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s10
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x9
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	v_add_nc_u32_e32 v81, 0, v17
	v_add_nc_u32_e32 v85, 0, v18
	s_clause 0x5
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s39, s40
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s6, s27, 15
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s4, s2, s40
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v19, 0x240, v17
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s2, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v17, 0x360, v17
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s5, s2
	s_mov_b32 s22, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v86, 0, v19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v20, s5
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s6, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v88, 0, v17
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s5, s5, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(15)
	ds_store_b16 v81, v6
	s_waitcnt vmcnt(12)
	ds_store_b16 v81, v5 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v81, v10 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v81, v13 offset:3072
	ds_store_b16 v85, v2
	ds_store_b16 v85, v7 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v85, v11 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v85, v15 offset:3072
	ds_store_b16 v86, v3
	ds_store_b16 v86, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v86, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v86, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v88, v4
	s_waitcnt vmcnt(2)
	ds_store_b16 v88, v9 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v88, v14 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v88, v1 offset:3072
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s5, s6, s5
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s23, s5, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s6, s48, 0x10008
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s6, v20
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s35, s50
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s35, s49
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s7, s51
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s51
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s7, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s7, s27, s7
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s7, s7, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s8, s7, 31
	s_lshr_b32 s8, s8, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s8, s9, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s7, s7, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s22, s8, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s23, s23, s7
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s28
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s7, 1, v1
	v_lshlrev_b32_e32 v1, 4, v0
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s8, s35, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 32
	s_min_i32 s8, s27, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s8, s8, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s23, s23, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v83, 0x70, v1
	v_and_b32_e32 v82, 15, v0
	v_and_b32_e32 v84, 32, v0
	v_and_b32_e32 v89, 64, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v87, 0x70, v0
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v90, 16, v0
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_ge_i32 s22, s23
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s24
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_sub_i32 s9, 0, s2
	s_xor_b32 s11, s19, s8
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s8, s11, s8
	v_lshl_or_b32 v91, v82, 7, v83
	s_mul_i32 s11, s8, s24
	s_mul_i32 s9, s9, s6
	s_sub_i32 s3, s3, s11
	s_mul_hi_u32 s9, s6, s9
	s_abs_i32 s11, s3
	s_add_i32 s6, s6, s9
	v_lshl_or_b32 v1, v84, 6, v91
	s_mul_hi_u32 s6, s11, s6
	s_ashr_i32 s9, s3, 31
	s_ashr_i32 s4, s4, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s12, s6, s2
	s_xor_b32 s4, s9, s4
	s_sub_i32 s9, s11, s12
	s_clause 0x1
	s_load_b32 s24, s[0:1], 0x7c
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_xad_u32 v8, 0x60, v1, 0
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v5, v1, 48, 0
	v_xad_u32 v6, v1, 64, 0
	v_xad_u32 v7, 0x50, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	s_ashr_i32 s5, s5, 4
	s_add_i32 s11, s6, 1
	s_sub_i32 s36, s9, s2
	s_cmp_ge_u32 s9, s2
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[45:48], v1
	v_and_b32_e32 v8, 0x60, v0
	v_lshlrev_b32_e32 v9, 3, v82
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b128 s[28:31], s[0:1], 0x28
	s_cselect_b32 s0, s11, s6
	s_cselect_b32 s1, s36, s9
	ds_load_b128 v[17:20], v2
	ds_load_b128 v[21:24], v3
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 4, v87
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s6, s0, 1
	s_cmp_ge_u32 s1, s2
	v_lshrrev_b32_e32 v13, 1, v8
	v_lshl_or_b32 v14, v8, 2, v9
	s_cselect_b32 s0, s6, s0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s35, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s0, s0, s4
	.loc	1 734 33                        ; attention.py:734:33
	s_mul_i32 s1, s8, s25
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s0, s4
	v_lshrrev_b32_e32 v16, 2, v90
	v_xor_b32_e32 v13, v14, v13
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v5
	.loc	1 734 33                        ; attention.py:734:33
	s_add_i32 s56, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, 8, v1
	v_or_b32_e32 v4, 16, v1
	v_or_b32_e32 v5, 24, v1
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v92, s51, v1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s26, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v2
	v_and_b32_e32 v2, 1, v0
	v_or_b32_e32 v97, v13, v16
	v_and_b32_e32 v12, 14, v0
	v_lshrrev_b32_e32 v50, 4, v84
	v_lshlrev_b32_e32 v55, 2, v0
	v_xor_b32_e32 v9, v49, v9
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_lshlrev_b32 v49, 5, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[64:65], null, s24, v82, v[1:2]
	v_xor_b32_e32 v1, 0x240, v97
	v_lshrrev_b32_e32 v14, 1, v90
	v_and_b32_e32 v65, 52, v55
	v_and_b32_e32 v66, 2, v0
	v_lshrrev_b32_e32 v67, 5, v84
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v112, 0, v1
	v_mov_b32_e32 v1, 0
	v_mul_u32_u24_e32 v15, 0x48, v12
	v_or3_b32 v99, v50, v9, v16
	v_and_b32_e32 v16, 0x180, v49
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v49, 0xc0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v15, v2, 2, v15
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_lshlrev_b32 v55, 1, v12
	v_lshl_or_b32 v12, v12, 7, v49
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[37:40], v7
	v_or3_b32 v98, v15, v14, v50
	v_or3_b32 v50, v67, v66, v65
	v_lshlrev_b32_e32 v65, 5, v2
	v_xor_b32_e32 v6, 48, v91
	v_xor_b32_e32 v7, 64, v91
	v_xor_b32_e32 v15, 32, v98
	v_mov_b32_e32 v148, 0xff800000
	v_or3_b32 v101, v12, v65, v55
	v_add_nc_u32_e32 v107, 0, v6
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v108, 0, v7
	v_add_nc_u32_e32 v114, 0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v49, 4, v101
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s26, v3
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_lshlrev_b32 v135, 2, v89
	v_xor_b32_e32 v65, 24, v101
	v_add_nc_u32_e32 v124, 0, v49
	v_mov_b32_e32 v49, 0
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v93, s51, v3
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v3, 0, v54
	v_xor_b32_e32 v66, 28, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v49 :: v_dual_and_b32 v9, 60, v9
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v7, v49
	v_or3_b32 v100, v50, v16, v14
	v_lshrrev_b32_e32 v14, 3, v8
	v_lshl_or_b32 v8, v8, 3, v9
	v_lshrrev_b32_e32 v68, 1, v89
	v_add_nc_u32_e32 v129, 0, v65
	v_add_nc_u32_e32 v130, 0, v66
	v_mad_u64_u32 v[65:66], null, s34, v70, v[58:59]
	v_xor_b32_e32 v8, v8, v14
	v_xor_b32_e32 v14, 48, v100
	v_add_nc_u32_e32 v96, 0, v84
	v_xor_b32_e32 v13, 16, v98
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_lshlrev_b32 v104, 1, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v123, 0, v14
	v_dual_mov_b32 v14, v49 :: v_dual_add_nc_u32 v135, v3, v135
	v_mov_b32_e32 v3, v49
	v_lshl_or_b32 v102, v2, 6, v8
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v68, 0, v68
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v69, 1, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v67, 0x410, v102
	v_lshl_add_u32 v103, v82, 2, 0
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s48, s5, 3
	.loc	1 734 32                        ; attention.py:734:32
	s_mul_i32 s25, s56, s27
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s55, s56, s48
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s56, s56, s5
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v94, s51, v4
	v_add_nc_u32_e32 v95, s51, v5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s26, v4
	v_cmp_gt_i32_e64 s6, s26, v5
	v_xor_b32_e32 v4, 16, v91
	v_xor_b32_e32 v5, 32, v91
	v_xor_b32_e32 v10, 0x50, v91
	v_xor_b32_e32 v11, 0x60, v91
	v_xor_b32_e32 v51, 0x70, v91
	v_xor_b32_e32 v52, 48, v98
	v_xor_b32_e32 v53, 64, v98
	v_xor_b32_e32 v54, 0x50, v98
	v_xor_b32_e32 v56, 0x60, v98
	v_xor_b32_e32 v57, 0x70, v98
	v_xor_b32_e32 v9, 0x120, v99
	v_xor_b32_e32 v12, 16, v100
	v_xor_b32_e32 v16, 32, v100
	v_xor_b32_e32 v50, 8, v101
	v_xor_b32_e32 v55, 12, v101
	v_xor_b32_e32 v2, 16, v101
	v_xor_b32_e32 v8, 20, v101
	v_add_nc_u32_e32 v113, 0, v13
	v_mov_b32_e32 v13, v49
	v_lshl_add_u32 v133, v90, 2, v96
	v_add_nc_u32_e32 v131, 0, v67
	v_add_nc_u32_e32 v134, v68, v104
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[67:68], null, s15, 24, v[64:65]
	v_add_nc_u32_e32 v132, v103, v69
	v_mad_u64_u32 v[68:69], null, s34, 6, v[65:66]
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s2, s15, s35
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s8, s8, s13
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s34, v58
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v105, 0, v4
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v106, 0, v5
	v_add_nc_u32_e32 v109, 0, v10
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_add_nc_u32 v110, 0, v11
	v_add_nc_u32_e32 v111, 0, v51
	v_add_nc_u32_e32 v115, 0, v52
	v_add_nc_u32_e32 v116, 0, v53
	v_add_nc_u32_e32 v117, 0, v54
	v_add_nc_u32_e32 v118, 0, v56
	v_add_nc_u32_e32 v119, 0, v57
	v_add_nc_u32_e32 v120, 0, v9
	v_add_nc_u32_e32 v121, 0, v12
	v_add_nc_u32_e32 v122, 0, v16
	v_add_nc_u32_e32 v125, 0, v50
	v_add_nc_u32_e32 v126, 0, v55
	v_add_nc_u32_e32 v127, 0, v2
	v_add_nc_u32_e32 v128, 0, v8
	v_add_nc_u32_e32 v133, v133, v104
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v8, v49
	v_subrev_nc_u32_e32 v136, s49, v92
	v_subrev_nc_u32_e32 v137, s49, v93
	v_subrev_nc_u32_e32 v138, s49, v94
	v_subrev_nc_u32_e32 v139, s49, v95
	v_add_nc_u32_e32 v140, s50, v92
	v_add_nc_u32_e32 v141, s50, v93
	v_add_nc_u32_e32 v142, s50, v94
	v_add_nc_u32_e32 v143, s50, v95
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v144, s15, 3, v64
	v_lshl_add_u32 v145, s15, 4, v64
	v_lshl_add_u32 v146, s34, 1, v65
	v_lshl_add_u32 v147, s34, 2, v65
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s54, s12, 0x3fb8aa3b
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s51, s8, s2
	s_and_b32 s31, s31, 0xffff
	s_add_i32 s51, s51, s3
	s_and_b32 s45, s19, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s57, 0x76543210
	s_mov_b32 s40, s30
	s_mov_b32 s41, s31
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s44, s18
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s2, s22, s24
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v167.l, 0
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s2, s51, s2
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v156
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v66, s2, v64, 1
	v_add_lshl_u32 v69, s2, v144, 1
	v_add_lshl_u32 v161, s2, v145, 1
	v_add_lshl_u32 v162, s2, v67, 1
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v183, v96, v104
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v66, 0x80000000, v66, s16
	v_cndmask_b32_e64 v69, 0x80000000, v69, s14
	v_cndmask_b32_e64 v161, 0x80000000, v161, s17
	v_cndmask_b32_e64 v162, 0x80000000, v162, s15
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 761 36                        ; attention.py:761:36
	s_clause 0x3
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	buffer_load_u16 v69, v69, s[40:43], 0 offen
	buffer_load_u16 v161, v161, s[40:43], 0 offen
	buffer_load_u16 v162, v162, s[40:43], 0 offen
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v66.l, 0xff80, v66.l, s16
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v66.h, 0xff80, v161.l, s17
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v161, 0, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v167.h, v66.l
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b32 v161, v66
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v66.l, v167.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v167
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v66
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v66.h, 0xff80, v162.l, s15
	v_cndmask_b16 v66.l, 0xff80, v69.l, s14
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s3, s16, s2
	s_and_b32 vcc_lo, s17, vcc_lo
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b32 v112, v66
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v167.h, v66.l
	v_mov_b16_e64 v66.l, v167.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v69, v113
	ds_load_u16 v161, v114
	ds_load_u16 v162, v115
	ds_load_u16 v163, v116
	ds_load_u16 v164, v117
	ds_load_u16 v165, v118
	ds_load_u16 v166, v119
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v66
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v66, 0, v98
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v167
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v66, v66
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s9, s14, s8
	s_and_b32 s8, s15, s2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v163, 16, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v165, 0x3fb8aa3b, v165
	v_dual_mul_f32 v164, 0x3fb8aa3b, v164 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v166, 0x3fb8aa3b, v166
	v_dual_mul_f32 v163, 0x3fb8aa3b, v163 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v161, 0x3fb8aa3b, v161 :: v_dual_mul_f32 v66, 0x3fb8aa3b, v66
	v_mul_f32_e32 v162, 0x3fb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v163, s54, v54 :: v_dual_fmac_f32 v164, s54, v55
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v69, 0x3fb8aa3b, v69 :: v_dual_fmac_f32 v66, s54, v50
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_cndmask_b32_e64 v50, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v161, s54, v52 :: v_dual_fmac_f32 v162, s54, v53
	v_fmac_f32_e32 v69, s54, v51
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v51, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v50.l, 8, v50.l
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v165, s54, v56 :: v_dual_fmac_f32 v166, s54, v57
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v50.l, v51.l, v50.l
	v_add_nc_u32_e32 v51, 0, v99
	ds_store_b16 v51, v50
	v_cndmask_b32_e64 v50, 0, 1, s8
	v_cndmask_b32_e64 v51, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v50.l, 8, v50.l
	v_or_b16 v50.l, v51.l, v50.l
	v_add_nc_u32_e32 v51, 0, v100
	ds_store_b16 v120, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v50, v51
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v50, v51 offset:64
	ds_load_u8_d16 v51, v121
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v51, v121 offset:64
	ds_load_u8_d16 v52, v122
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v52, v122 offset:64
	ds_load_u8_d16 v53, v123
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v53, v123 offset:64
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v50.l, 1, v50.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s2, 1, v50.l
	v_and_b16 v50.l, 1, v51.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v169, 0xff800000, v66, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s11, 1, v50.l
	v_and_b16 v50.l, 1, v52.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v170, 0xff800000, v69, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s12, 1, v50.l
	v_and_b16 v50.l, 1, v53.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v161, 0xff800000, v161, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s13, 1, v50.l
	v_and_b16 v50.l, 1, v50.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v162, 0xff800000, v162, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s14, 1, v50.l
	v_and_b16 v50.l, 1, v51.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v163, 0xff800000, v163, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s15, 1, v50.l
	v_and_b16 v50.l, 1, v52.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v164, 0xff800000, v164, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s16, 1, v50.l
	v_and_b16 v50.l, 1, v53.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v165, 0xff800000, v165, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s17, 1, v50.l
	.loc	1 764 26                        ; attention.py:764:26
	v_add_nc_u32_e32 v50, 0, v101
	v_cndmask_b32_e64 v166, 0xff800000, v166, s17
	ds_store_b32 v50, v169
	ds_store_b32 v124, v170
	ds_store_b32 v125, v161
	ds_store_b32 v126, v162
	ds_store_b32 v127, v163
	ds_store_b32 v128, v164
	ds_store_b32 v129, v165
	ds_store_b32 v130, v166
	v_add_nc_u32_e32 v50, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[50:51], v50 offset1:32
	ds_load_2addr_b32 v[52:53], v131 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v66, v165, v166
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v54, v50
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v55, v50, v50 :: v_dual_max_f32 v56, v52, v52
	v_max_f32_e32 v57, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v55, v54
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v55, v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v54, v55
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v55, v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v54, v55
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v55, v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v54, v54, v55 :: v_dual_mov_b32 v55, v52
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v55, v55 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v55, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v56, v55
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v56, v55
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v56, v55
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v55, v55, v56
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v56, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v56, v57, v56
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v56, v56, v57
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v56, v56, v57
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v69, v56, v57 :: v_dual_mov_b32 v56, v53
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v56, v56 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v57, v53, v53 :: v_dual_max_f32 v56, v56, v56
	v_max_f32_e32 v56, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v56, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v56, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v57, v56
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v168, v56, v57
	v_max3_f32 v56, v169, v170, v161
	v_max3_f32 v57, v162, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v56, v56, v57, v66
.Ltmp36:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v66, v148, v148
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v57, v56, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v148, v66, v54
	v_max_f32_e32 v66, v149, v149
	v_max_f32_e32 v149, v66, v55
	v_max_f32_e32 v66, v150, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v150, v66, v69
	v_max_f32_e32 v66, v151, v151
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v51, v51, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v151, v66, v168
	v_max3_f32 v66, v156, v56, v57
	v_max_f32_e32 v56, v157, v157
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v50, v50, v148
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v51, v51
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v52, v52, v149 :: v_dual_sub_f32 v165, v165, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v57, v56, v54
	v_max_f32_e32 v54, v158, v158
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v161, v161, v66
	v_sub_f32_e32 v163, v163, v66
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v56, v54, v55
	v_max_f32_e32 v54, v159, v159
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v53, v53, v151
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v161, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v171, v158, v56
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v55, v54, v69 :: v_dual_max_f32 v54, v160, v160
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v69, v156, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v50, 0, v50, s3
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v171, v171
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 767 74 is_stmt 0              ; attention.py:767:74
	v_sub_f32_e32 v172, v159, v55
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v54, v54, v168
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v168, v157, v57
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v69, v69
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v164, v164, v66
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v172, v172
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v52, 0, v52, s9
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v174, v168
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v162, v162, v66
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v53, v53
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v168, 0, v69, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v69, 0, v174, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v158
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v53, 0, v53, s8
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v156, 0, v171, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v159
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v159, v169, v66
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v173, v160, v54
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v169, v163
	v_exp_f32_e32 v171, v165
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v157, 0, v172, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v160
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v173, v173
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v160, v170, v66
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v159, v159
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v158, 0, v173, s18
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e32 v173, 0, v51, vcc_lo
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v50
.Ltmp40:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v170, v164
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v164, 0, v161, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v50, v50, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp43:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v165, 0, v160, s11
	v_cndmask_b32_e64 v161, 0, v170, s15
	v_cndmask_b32_e64 v160, 0, v171, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v50
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v50, v50, v51
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v50
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v50, v50, v51 :: v_dual_mov_b32 v51, v52
.Ltmp50:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v162, v162
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp52:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v166, v166, v66 :: v_dual_add_f32 v51, v52, v51
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v163, 0, v162, s13
	v_cndmask_b32_e64 v162, 0, v169, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v172, v166
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v166, 0, v159, s2
.Ltmp53:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v52, v51
.Ltmp54:
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s2, s22, 1
	v_or_b32_e32 v170, s2, v71
	v_or_b32_e32 v171, s2, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v159, 0, v172, s17
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v172, s2, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp58:
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v170, v170, 1, 1
	v_lshl_or_b32 v171, v171, 1, 1
	v_lshl_or_b32 v172, v172, 1, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v52, v51
.Ltmp60:
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s27, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s8, s27, v172
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v51, v51, v52 :: v_dual_mov_b32 v52, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v51, v153, v156
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v156, v66 :: v_dual_mov_b32 v153, v51
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v52, v173, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v169, v52
.Ltmp69:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v50, v152, v69
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v169, v169 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v152, v50
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v52, v52, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v169, v52
	v_mov_b32_dpp v169, v169 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v52, v52, v169
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v169, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v52, v52, v169 :: v_dual_mov_b32 v169, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v169, v169 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v53, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v169, v53
	v_mov_b32_dpp v169, v169 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v53, v169
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v169, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v53, v53, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v169, v53 :: v_dual_fmac_f32 v52, v154, v157
	v_mov_b32_e32 v157, v57
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_dual_mov_b32 v154, v52 :: v_dual_add_f32 v53, v53, v169
.Ltmp83:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v169, s2, v70
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s2, s2, s55
	s_mul_i32 s2, s2, s34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e32 vcc_lo, s48, v169
	v_add_nc_u32_e32 v173, s2, v65
	v_add_nc_u32_e32 v174, s2, v146
	v_add_nc_u32_e32 v175, s2, v147
	v_add_nc_u32_e32 v176, s2, v68
	.loc	1 777 26 is_stmt 0              ; attention.py:777:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 782 31 is_stmt 1              ; attention.py:782:31
	v_lshl_or_b32 v169, v169, 1, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_dual_cndmask_b32 v173, 0x80000000, v173 :: v_dual_cndmask_b32 v174, 0x80000000, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v175, 0x80000000, v175 :: v_dual_cndmask_b32 v176, 0x80000000, v176
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v169
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v173, v173, s[44:47], 0 offen
	buffer_load_u8 v174, v174, s[44:47], 0 offen
	buffer_load_u8 v175, v175, s[44:47], 0 offen
	buffer_load_u8 v176, v176, s[44:47], 0 offen
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s2, s27, v170
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(3)
	v_and_b16 v167.h, v173.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v169.l, v174.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v169.h, v175.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v170.l, v176.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v177, 15, v175
	v_and_b32_e32 v178, 15, v176
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v175.l, 4, v175.l
	v_lshrrev_b16 v176.l, 4, v176.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e64 v175.h, v167.l
	v_mov_b16_e64 v176.h, v167.l
	.loc	1 784 29 is_stmt 1              ; attention.py:784:29
	v_and_b32_e32 v172, 15, v174
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v174.l, 4, v174.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e64 v174.h, v167.l
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v175, 0, v175, s3
	v_cndmask_b32_e64 v176, 0, v176, s8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v169.h
	v_cmp_lt_u16_e64 s8, 7, v170.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v170, -16, v177
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v174, 0, v174, s2
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v169.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v169, -16, v172
	v_or_b32_e32 v179, -16, v178
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v170, v177, v170, s3
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v177, -16, v174
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v175
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v169, v172, v169, s2
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s2, 7, v174
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v171, 15, v173
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v173.l, 4, v173.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e64 v173.h, v167.l
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v53, v155, v158 :: v_dual_mov_b32 v158, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e32 v173, 0, v173, vcc_lo
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 vcc_lo, 7, v167.h
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v167, -16, v171
	v_mov_b32_e32 v155, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v172, -16, v173
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v167, v171, v167, vcc_lo
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v173
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v171, v178, v179, s8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s8, 7, v176
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v178, -16, v175
	v_or_b32_e32 v179, -16, v176
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e32 v172, v173, v172, vcc_lo
	v_cndmask_b32_e64 v173, v174, v177, s2
	.loc	1 798 53 is_stmt 1              ; attention.py:798:53
	s_lshr_b32 s2, s22, 4
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v174, v175, v178, s3
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s2, s2, s56
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v175, v176, v179, s8
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s2, s2, s34
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v176, s2, v58, 1
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s22, s22, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s22, s23
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v176, v176, s[28:31], 0 offen
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v132, v168
	v_add_nc_u32_e32 v168, v103, v89
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v168, v168
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v168
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v14, v14, v168
	v_mul_f32_e32 v2, v2, v168
	v_mul_f32_e32 v9, v9, v168
	v_mul_f32_e32 v10, v10, v168
	v_mul_f32_e32 v11, v11, v168
	v_mul_f32_e32 v13, v13, v168
	v_mul_f32_e32 v15, v15, v168
	v_mul_f32_e32 v16, v16, v168
	v_mul_f32_e32 v1, v1, v168
	v_mul_f32_e32 v3, v3, v168
	v_mul_f32_e32 v4, v4, v168
	v_mul_f32_e32 v5, v5, v168
	v_mul_f32_e32 v6, v6, v168
	v_mul_f32_e32 v7, v7, v168
	v_mul_f32_e32 v8, v8, v168
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v168, v166, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v166, v168, 0x7fff
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v169, v169, v176
	v_mul_f32_e32 v167, v167, v176
	v_mul_f32_e32 v172, v172, v176
	v_mul_f32_e32 v173, v173, v176
	v_mul_f32_e32 v170, v170, v176
	v_mul_f32_e32 v174, v176, v174
	v_mul_f32_e32 v171, v176, v171
	v_mul_f32_e32 v175, v176, v175
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_bfe_u32 v176, v167, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v176, v167, v176, 0x7fff
	v_cndmask_b16 v167.l, 0x7fff, v176.h, vcc_lo
	v_bfe_u32 v176, v172, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v176, v172, v176, 0x7fff
	v_bfe_u32 v172, v169, 16, 1
	v_cndmask_b16 v167.h, 0x7fff, v176.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v172, v169, v172, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_cndmask_b16 v169.l, 0x7fff, v172.h, vcc_lo
	v_bfe_u32 v172, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v173, v172, 0x7fff
	v_cndmask_b16 v169.h, 0x7fff, v172.h, vcc_lo
	v_bfe_u32 v172, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v170, v172, 0x7fff
	v_cndmask_b16 v170.l, 0x7fff, v172.h, vcc_lo
	v_bfe_u32 v172, v174, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v174, v172, 0x7fff
	v_cndmask_b16 v170.h, 0x7fff, v172.h, vcc_lo
	v_bfe_u32 v172, v171, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v171, v172, 0x7fff
	v_cndmask_b16 v171.l, 0x7fff, v172.h, vcc_lo
	v_bfe_u32 v172, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v175, v172, 0x7fff
	v_cndmask_b16 v171.h, 0x7fff, v172.h, vcc_lo
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_cndmask_b16 v166.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v165, v168, 0x7fff
	v_cndmask_b16 v165.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v164, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v164, v168, 0x7fff
	v_cndmask_b16 v164.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v163, v168, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v162, v168, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v161, v168, 0x7fff
	v_cndmask_b16 v161.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v160, v168, 0x7fff
	v_cndmask_b16 v160.l, 0x7fff, v168.h, vcc_lo
	v_bfe_u32 v168, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v168, v159, v168, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v168.h, vcc_lo
	ds_store_b16 v133, v166
	ds_store_b16 v133, v165 offset:128
	ds_store_b16 v133, v164 offset:256
	ds_store_b16 v133, v163 offset:384
	ds_store_b16 v133, v162 offset:512
	ds_store_b16 v133, v161 offset:640
	ds_store_b16 v133, v160 offset:768
	ds_store_b16 v133, v159 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v159, v134
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v159, v134 offset:64
	ds_load_u16_d16 v160, v134 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v160, v134 offset:192
	ds_load_u16_d16 v161, v134 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v161, v134 offset:320
	ds_load_u16_d16 v162, v134 offset:384
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v162, v134 offset:448
	ds_load_u16_d16 v163, v134 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v163, v134 offset:576
	ds_load_u16_d16 v164, v134 offset:640
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v164, v134 offset:704
	ds_load_u16_d16 v165, v134 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v165, v134 offset:832
	ds_load_u16_d16 v166, v134 offset:896
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v166, v134 offset:960
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v135, v167
	ds_store_b16_d16_hi v135, v167 offset:128
	ds_store_b16 v135, v169 offset:512
	ds_store_b16_d16_hi v135, v169 offset:640
	ds_store_b16 v135, v170 offset:1024
	ds_store_b16_d16_hi v135, v170 offset:1152
	ds_store_b16 v135, v171 offset:1536
	ds_store_b16_d16_hi v135, v171 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v167, v183
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v167, v183 offset:128
	ds_load_u16_d16 v168, v183 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v168, v183 offset:384
	ds_load_u16_d16 v169, v183 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v169, v183 offset:640
	ds_load_u16_d16 v170, v183 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v170, v183 offset:896
	ds_load_u16_d16 v171, v183 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v171, v183 offset:1152
	ds_load_u16_d16 v172, v183 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v172, v183 offset:1408
	ds_load_u16_d16 v173, v183 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v173, v183 offset:1664
	ds_load_u16_d16 v174, v183 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v174, v183 offset:1920
	ds_load_u16_d16 v175, v183 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v175, v183 offset:192
	ds_load_u16_d16 v176, v183 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v176, v183 offset:448
	ds_load_u16_d16 v177, v183 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v177, v183 offset:704
	ds_load_u16_d16 v178, v183 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v178, v183 offset:960
	ds_load_u16_d16 v179, v183 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v179, v183 offset:1216
	ds_load_u16_d16 v180, v183 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v180, v183 offset:1472
	ds_load_u16_d16 v181, v183 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v181, v183 offset:1728
	ds_load_u16_d16 v182, v183 offset:1856
	.loc	1 816 23                        ; attention.py:816:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[159:166], v[9:16]
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v182, v183 offset:1984
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[175:182], v[159:166], v[1:8]
	v_dual_mov_b32 v159, v55 :: v_dual_mov_b32 v160, v54
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v50, s22, v70
	v_or_b32_e32 v51, s22, v71
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s2, s22, s25
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v52, s22, v72
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s14, s2, s52
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e32 vcc_lo, s27, v50
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v54, s22, v74
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s2, s27, v51
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v50, s14, v59, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v53, s22, v73
	v_or_b32_e32 v55, s22, v75
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s3, s27, v52
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v51, s14, v78, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v56, s22, v76
	v_or_b32_e32 v57, s22, v77
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, vcc_lo
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s9, s27, v54
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v52, s14, v79, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, s2
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s8, s27, v53
	v_cmp_gt_i32_e64 s11, s27, v55
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v54, s14, v80, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, s3
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s12, s27, v56
	v_cmp_gt_i32_e64 s13, s27, v57
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v53, s14, v60, 1
	v_add_lshl_u32 v55, s14, v61, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, s9
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v56, s14, v62, 1
	v_add_lshl_u32 v57, s14, v63, 1
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 s2, s10, s8
	.loc	1 736 32                        ; attention.py:736:32
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_add_nc_u32 v69, 0, v91
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, s11
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s10, s12
	s_and_b32 s2, s10, s13
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x7
	buffer_load_u16 v66, v50, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v56, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v57, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v50, v49
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s7
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v81, v66
	s_waitcnt vmcnt(6)
	ds_store_b16 v81, v54 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v85, v51
	s_waitcnt vmcnt(4)
	ds_store_b16 v85, v55 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v86, v52
	s_waitcnt vmcnt(2)
	ds_store_b16 v86, v56 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v88, v53
	s_waitcnt vmcnt(0)
	ds_store_b16 v88, v57 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[161:164], v69
	ds_load_b128 v[165:168], v105
	ds_load_b128 v[169:172], v106
	ds_load_b128 v[173:176], v107
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v56, v49
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[177:180], v108
	ds_load_b128 v[181:184], v109
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v56, v55
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[185:188], v110
	ds_load_b128 v[189:192], v111
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v66, s22, v82
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[161:168], v[17:24], v[50:57]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s2, s27, v66
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[169:176], v[25:32], v[50:57]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s16, s1, s2
	s_and_b32 s14, s4, s2
	s_and_b32 s17, s5, s2
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[177:184], v[33:40], v[50:57]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s15, s6, s2
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[185:192], v[41:48], v[50:57]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v66, v92
	v_cmp_le_i32_e64 s2, v66, v93
	v_cmp_le_i32_e64 s3, v66, v94
	v_cmp_le_i32_e64 s8, v66, v95
	s_and_not1_b32 s11, s16, exec_lo
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s9, vcc_lo, s16
	s_and_b32 s2, s2, s14
	s_and_b32 s3, s3, s17
	s_and_b32 s8, s8, s15
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s14, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s16, s11, s9
	s_or_b32 s14, s12, s2
	s_and_not1_b32 s2, s17, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s9, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s17, s2, s3
	s_or_b32 s15, s9, s8
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s53
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v66, v136
	v_cmp_ge_i32_e64 s2, v66, v137
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s8, v66, v140
	v_cmp_le_i32_e64 s12, v66, v141
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v66, v138
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s9, v66, v142
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s11, v66, v139
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s13, v66, v143
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s2, s2, s12
	s_and_b32 s3, s3, s9
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s11, s13
	s_and_b32 s2, s2, s14
	s_and_b32 s3, s3, s17
	s_and_b32 s9, s9, s15
	s_and_not1_b32 s11, s16, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s12, s14, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s16, s11, s8
	s_or_b32 s14, s12, s2
	s_and_not1_b32 s2, s17, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s8, s15, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s17, s2, s3
	s_or_b32 s15, s8, s9
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshrrev_b32_e32 v0, 1, v0
	v_lshrrev_b32_e32 v20, 3, v89
	v_add_nc_u32_e32 v21, 0, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v17, 2, v89
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v21, v[50:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v22, v17, v82
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v18, 4, v90
	v_lshrrev_b32_e32 v19, 1, v84
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v0, v0, v20, v83
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v23, s35, v22
	s_mov_b32 s23, 0x31027000
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v20, v18, v19
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v21, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s26, v23
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 2, v20
	v_or_b32_e32 v33, 4, v20
	v_or_b32_e32 v0, 46, v20
	v_or_b32_e32 v17, 44, v20
	v_or_b32_e32 v18, 42, v20
	v_or_b32_e32 v19, 40, v20
	v_or_b32_e32 v24, 38, v20
	v_or_b32_e32 v25, 36, v20
	v_or_b32_e32 v26, 34, v20
	v_or_b32_e32 v27, 32, v20
	v_or_b32_e32 v28, 14, v20
	v_or_b32_e32 v29, 12, v20
	v_or_b32_e32 v30, 10, v20
	v_or_b32_e32 v31, 8, v20
	v_or_b32_e32 v32, 6, v20
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s34, v28
	v_cmp_gt_i32_e64 s6, s34, v29
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v23, null, v21, v21, v9
	v_div_scale_f32 v35, null, v21, v21, v10
	v_div_scale_f32 v36, null, v21, v21, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v23
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v41, null, v21, v21, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v37, vcc_lo, v9, v21, v9
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v42, s1, v10, v21, v10
	v_fma_f32 v45, -v23, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v46, -v35, v39, 1.0
	v_div_scale_f32 v43, s2, v11, v21, v11
	v_fma_f32 v47, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v45, v38 :: v_dual_fmac_f32 v39, v46, v39
	v_fma_f32 v46, -v41, v44, 1.0
	v_div_scale_f32 v45, null, v21, v21, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v40, v47, v40 :: v_dual_mul_f32 v49, v42, v39
	v_mul_f32_e32 v47, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v45
	v_div_scale_f32 v48, s3, v12, v21, v12
	v_fma_f32 v52, -v35, v49, v42
	v_fmac_f32_e32 v44, v46, v44
	v_fma_f32 v46, -v23, v47, v37
	v_mul_f32_e32 v50, v43, v40
	v_div_scale_f32 v54, null, v21, v21, v14
	v_fmac_f32_e32 v49, v52, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v46, v38
	v_fma_f32 v53, -v36, v50, v43
	v_fma_f32 v52, -v45, v51, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s34, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v35, v49, v42
	v_fma_f32 v23, -v23, v47, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v50, v53, v40 :: v_dual_fmac_f32 v51, v52, v51
	v_rcp_f32_e32 v42, v54
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s34, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v23, v23, v38, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v36, v50, v43
	v_div_fmas_f32 v35, v35, v39, v49
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v23, v21, v9
	v_div_scale_f32 v23, s2, v13, v21, v13
	v_mul_f32_e32 v46, v48, v44
	v_div_fixup_f32 v10, v35, v21, v10
	v_div_scale_f32 v38, null, v21, v21, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v23, v51
	v_fma_f32 v37, -v41, v46, v48
	v_div_fmas_f32 v36, v36, v40, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v45, v35, v23
	v_fmac_f32_e32 v46, v37, v44
	v_div_fixup_f32 v11, v36, v21, v11
	v_fma_f32 v36, -v54, v42, 1.0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v21
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v39, v51
	v_fma_f32 v37, -v41, v46, v48
	v_div_scale_f32 v41, null, v21, v21, v16
	v_fma_f32 v43, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v45, v35, v23
	v_div_fmas_f32 v37, v37, v44, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v43, v40
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v21, v14
	v_div_fmas_f32 v23, v23, v51, v35
	v_div_scale_f32 v35, null, v21, v21, v1
	v_div_scale_f32 v46, null, v21, v21, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v23, v21, v13
	v_rcp_f32_e32 v43, v35
	v_fma_f32 v23, -v41, v44, 1.0
	v_mul_f32_e32 v39, v36, v42
	v_div_fixup_f32 v12, v37, v21, v12
	v_rcp_f32_e32 v48, v46
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v23, v44
	v_fma_f32 v37, -v54, v39, v36
	v_div_scale_f32 v23, s3, v16, v21, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v43, 1.0
	v_div_scale_f32 v49, s4, v1, v21, v1
	v_fmac_f32_e32 v39, v37, v42
	v_div_scale_f32 v37, s2, v15, v21, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v46, v48, 1.0
	v_fmac_f32_e32 v43, v47, v43
	v_fma_f32 v36, -v54, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v37, v40
	v_div_scale_f32 v47, null, v21, v21, v3
	v_fmac_f32_e32 v48, v50, v48
	v_div_fmas_f32 v36, v36, v42, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v38, v45, v37
	v_mul_f32_e32 v42, v23, v44
	v_rcp_f32_e32 v51, v47
	v_mul_f32_e32 v52, v49, v43
	v_div_scale_f32 v50, s5, v2, v21, v2
	v_fmac_f32_e32 v45, v39, v40
	v_fma_f32 v39, -v41, v42, v23
	v_div_fixup_f32 v14, v36, v21, v14
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v38, v45, v37
	v_fmac_f32_e32 v42, v39, v44
	v_fma_f32 v37, -v35, v52, v49
	v_fma_f32 v39, -v47, v51, 1.0
	v_mul_f32_e32 v38, v50, v48
	v_div_fmas_f32 v36, v36, v40, v45
	v_fma_f32 v23, -v41, v42, v23
	v_fmac_f32_e32 v52, v37, v43
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v37, -v46, v38, v50
	v_div_scale_f32 v39, s2, v3, v21, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v35, v52, v49
	v_div_scale_f32 v40, null, v21, v21, v4
	v_dual_fmac_f32 v38, v37, v48 :: v_dual_mul_f32 v37, v39, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v36, v21, v15
	v_div_fmas_f32 v23, v23, v44, v42
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v42, -v47, v37, v39
	v_div_fmas_f32 v35, v35, v43, v52
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v41, -v46, v38, v50
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v37, v42, v51
	v_div_fixup_f32 v16, v23, v21, v16
	v_div_fixup_f32 v1, v35, v21, v1
	v_div_fmas_f32 v38, v41, v48, v38
	v_div_scale_f32 v35, null, v21, v21, v5
	v_fma_f32 v23, -v47, v37, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v40, v43, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v38, v21, v2
	v_div_scale_f32 v38, null, v21, v21, v7
	v_div_fmas_f32 v23, v23, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v21, v21, v6
	v_div_scale_f32 v45, null, v21, v21, v8
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v36
	v_div_scale_f32 v39, vcc_lo, v4, v21, v4
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v3, v23, v21, v3
	v_fma_f32 v23, -v35, v37, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v38, v42, 1.0
	v_fmac_f32_e32 v37, v23, v37
	v_div_scale_f32 v23, s2, v5, v21, v5
	v_fma_f32 v46, -v36, v41, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v21, v7
	v_fmac_f32_e32 v41, v46, v41
	v_fma_f32 v48, -v40, v44, v39
	v_fmac_f32_e32 v47, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v23, v37 :: v_dual_mul_f32 v53, v49, v42
	v_div_scale_f32 v46, s3, v6, v21, v6
	v_fmac_f32_e32 v44, v48, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v35, v50, v23
	v_div_scale_f32 v51, s5, v8, v21, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v53, v49
	v_mul_f32_e32 v52, v46, v41
	v_mul_f32_e32 v54, v51, v47
	v_div_fmas_f32 v39, v39, v43, v44
	v_fma_f32 v23, -v35, v50, v23
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v40, -v36, v52, v46
	v_fma_f32 v35, -v45, v54, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v39, v21, v4
	v_div_fmas_f32 v23, v23, v37, v50
	v_fmac_f32_e32 v52, v40, v41
	v_fmac_f32_e32 v54, v35, v47
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v23, v21, v5
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v37, -v45, v54, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v41, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v36, v21, v6
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s34, v20
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v35, v21, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v37, v21, v8
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_nc_u32_e32 v21, s33, v22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v21, v21, s34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s34, v34
	v_cmp_gt_i32_e64 s2, s34, v33
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s34, v32
	v_cmp_gt_i32_e64 s4, s34, v31
	v_cmp_gt_i32_e64 s5, s34, v30
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v20, v21, v20, 2
	v_add_lshl_u32 v22, v21, v34, 2
	v_add_lshl_u32 v23, v21, v33, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s34, v25
	v_cmp_gt_i32_e64 s11, s34, v24
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	s_and_b32 s1, s0, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v9, v20, s[20:23], 0 offen
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	v_add_lshl_u32 v9, v21, v32, 2
	s_clause 0x1
	buffer_store_b32 v10, v22, s[20:23], 0 offen
	buffer_store_b32 v11, v23, s[20:23], 0 offen
	v_add_lshl_u32 v10, v21, v31, 2
	v_add_lshl_u32 v11, v21, v30, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s4
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v20, v21, v29, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s5
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v12, v9, s[20:23], 0 offen
	buffer_store_b32 v13, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s6
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v21, v28, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	v_add_lshl_u32 v10, v21, v27, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s7
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[20:23], 0 offen
	buffer_store_b32 v15, v20, s[20:23], 0 offen
	v_add_lshl_u32 v11, v21, v26, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v12, v21, v25, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s9
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s34, v19
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s10
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v16, v9, s[20:23], 0 offen
	buffer_store_b32 v1, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_add_lshl_u32 v1, v21, v24, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s34, v18
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[20:23], 0 offen
	buffer_store_b32 v3, v12, s[20:23], 0 offen
	v_add_lshl_u32 v2, v21, v19, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s11
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s34, v17
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v3, v21, v18, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s34, v0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s12
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v21, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v0, v21, v0, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s13
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s14
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	s_clause 0x4
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v3, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	buffer_store_b32 v8, v0, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp84:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 193
		.amdhsa_next_free_sgpr 58
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_vgpr, 193
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10728
; TotalNumSgprs: 60
; NumVgprs: 193
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 193
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     193
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
