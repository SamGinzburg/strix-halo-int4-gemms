	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x80
	s_load_b32 s27, s[0:1], 0x68
	s_mov_b32 s26, s3
                                        ; implicit-def: $vgpr244 : SGPR spill to VGPR lane
	s_load_b128 s[92:95], s[0:1], 0x4c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v88, 6, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v73, 63, v0
	s_mov_b32 s11, 0x31027000
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v92, 15, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v98, 64, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 0x90, v9
	v_and_b32_e32 v10, 0x70, v10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s16
	s_bitcmp1_b32 s16, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v92, 7, v10
	s_cselect_b32 s4, -1, 0
	s_cmp_eq_u32 s3, 1
	v_writelane_b32 v244, s4, 0
	s_cselect_b32 s4, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s7, s27
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s3, s7
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s27
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v13, 16, v10
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 32, v10
	v_xor_b32_e32 v15, 48, v10
	v_xor_b32_e32 v16, 64, v10
	v_add_nc_u32_e32 v94, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	v_add_nc_u32_e32 v99, 0, v13
	v_add_nc_u32_e32 v100, 0, v14
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s3, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v101, 0, v15
	v_add_nc_u32_e32 v102, 0, v16
	v_add_nc_u32_e32 v103, 0, v17
	v_add_nc_u32_e32 v104, 0, v18
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s3, s3, 0x4f7ffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v105, 0, v10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s15, s3
	s_sub_i32 s3, 0, s7
	s_mul_i32 s3, s3, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s15, s3
	s_add_i32 s15, s15, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s3, s5, s15
	s_mul_i32 s8, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s5, s9, s5
	s_add_i32 s10, s3, 1
	s_cmp_ge_u32 s5, s7
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s5, s10, s3
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s12, s92
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s20, s26
	s_cvt_f32_u32 s3, s12
	s_sub_i32 s13, 0, s12
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s5, s6
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s21, s26, s94
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s5, s27
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s14, s5, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s28, s2, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v33, s14, v88
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s3, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v34, 2, v33
	v_or_b32_e32 v35, 4, v33
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s29, s94, v33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v36, 6, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s10, s3, 0x4f7ffffe
	s_load_b32 s3, s[0:1], 0x5c
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s30, s94, v34
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v37, 8, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s10, s10
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s31, s94, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, 10, v33
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s33, s94, v36
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s13, s13, s10
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v39, 12, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s13, s10, s13
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v40, 14, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s10, s10, s13
	v_writelane_b32 v244, s29, 1
	s_mul_hi_u32 s10, s20, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s10, s12
	s_sub_i32 s2, s20, s5
	s_add_i32 s5, s10, 1
	s_sub_i32 s6, s2, s12
	s_cmp_ge_u32 s2, s12
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s3, v88, v[73:74]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s5, s5, s10
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s12
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s20, s6, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s13, s93
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[75:76], null, s3, 6, v[74:75]
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s2, s13
	s_sub_i32 s6, 0, s13
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v89, s3, 1, v74
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s5, s3, v73
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v90, s3, 2, v74
	v_mad_u64_u32 v[76:77], null, s3, 10, v[74:75]
	v_lshl_add_u32 v91, s3, 3, v74
	v_mad_u64_u32 v[77:78], null, s3, 12, v[74:75]
	v_mad_u64_u32 v[78:79], null, s3, 14, v[74:75]
	v_writelane_b32 v244, s30, 2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s2, v1
	v_writelane_b32 v244, s31, 3
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_cvt_u32_f32 s2, s2
	v_writelane_b32 v244, s33, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s2
	s_mul_hi_u32 s6, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s2, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s94, v37
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s22, s12, s6
	s_xor_b32 s6, s92, s93
	s_mul_i32 s23, s22, s13
	s_ashr_i32 s24, s6, 31
	s_sub_i32 s12, s12, s23
	s_add_i32 s23, s22, 1
	s_sub_i32 s25, s12, s13
	s_cmp_ge_u32 s12, s13
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s94, v38
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s22, s23, s22
	s_cselect_b32 s12, s25, s12
	s_add_i32 s23, s22, 1
	s_cmp_ge_u32 s12, s13
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s94, v39
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s22, s23, s22
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s21, s21, s14
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s29
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s21, s21, s3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s94, v40
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, s21, v74, 1
	v_add_lshl_u32 v2, s21, v89, 1
	v_add_lshl_u32 v3, s21, v90, 1
	v_add_lshl_u32 v4, s21, v75, 1
	v_add_lshl_u32 v5, s21, v91, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s30
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s21, v76, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s21, v77, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s33
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s21, v78, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v11, 1, v73
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s12
	.loc	1 599 26                        ; attention.py:599:26
	v_cmp_eq_u32_e64 s29, 0, v98
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s13
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, v9, v11
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s8, s95, 63
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 606 15 is_stmt 0              ; attention.py:606:15
	s_ashr_i32 s9, s8, 31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s9, s9, 26
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s10, s8, s9
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v93, 0, v9
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s11, s10, 6
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, 0x360, v9
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s11, s11, s27
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s8, s22, s24
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s11, s11, -1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v95, 0, v11
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s22, s11
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s23, s10, 0xffffffc0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s10, s22, s15
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v96, 0, v12
	v_add_nc_u32_e32 v97, 0, v9
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s15, s10, s7
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s9, s8, s24
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s11, s11, s27
	s_sub_i32 s15, s22, s15
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s8, s9
	.loc	1 609 32                        ; attention.py:609:32
	s_ashr_i32 s11, s11, 31
	s_add_i32 s22, s10, 1
	s_sub_i32 s24, s15, s7
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s21, s8
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s15, s7
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v93, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v93, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v95, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v95, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v96, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v96, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v97, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v94
	ds_load_b128 v[5:8], v99
	ds_load_b128 v[9:12], v100
	ds_load_b128 v[13:16], v101
	ds_load_b128 v[17:20], v102
	ds_load_b128 v[21:24], v103
	ds_load_b128 v[25:28], v104
	ds_load_b128 v[29:32], v105
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s10, s22, s10
	s_cselect_b32 s15, s24, s15
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v41, s21
	.loc	1 609 32                        ; attention.py:609:32
	s_add_i32 s21, s10, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s21, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s11, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s28, s11
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s11, s11, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s7, s7, 6
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s10, v41
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s11, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s104, s23, s11
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s11, s16, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s18, s19
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s15, s19, s17
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s15, s15, s14
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s11, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s15, s15, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s11, s95, s11
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s15, s15, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s11, s11, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s7, s7, s15
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s16, s11, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 26
	s_add_i32 s11, s11, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s11, s11, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s104, s104, s11
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s94, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v106, 0, 1, s4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s19, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s95, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s11, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 26
	s_add_i32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s104, s104, s4
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x40
	.loc	1 696 65 is_stmt 1              ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s94, v73
	v_lshlrev_b32_e32 v86, 1, v0
	v_lshlrev_b32_e32 v87, 2, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s7, s104
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_writelane_b32 v244, s24, 5
	s_xor_b32 s11, s26, s92
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_ashr_i32 s11, s11, 31
	s_ashr_i32 s9, s9, 31
	v_writelane_b32 v244, s25, 6
	s_xor_b32 s15, s20, s11
	s_cvt_u32_f32 s10, s10
	s_sub_i32 s11, s15, s11
	s_sub_i32 s15, 0, s8
	v_writelane_b32 v244, s26, 7
	s_mul_i32 s16, s11, s92
	s_mul_i32 s15, s15, s10
	s_sub_i32 s16, s26, s16
	s_mul_hi_u32 s15, s10, s15
	v_writelane_b32 v244, s27, 8
	s_abs_i32 s24, s16
	s_add_i32 s10, s10, s15
	s_ashr_i32 s15, s16, 31
	s_mul_hi_u32 s10, s24, s10
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s9, s15, s9
	s_mul_i32 s25, s10, s8
	v_writelane_b32 v244, s28, 9
	s_sub_i32 s15, s24, s25
	s_add_i32 s24, s10, 1
	s_sub_i32 s25, s15, s8
	s_cmp_ge_u32 s15, s8
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b32 s28, s[0:1], 0x7c
	s_cselect_b32 s10, s24, s10
	s_cselect_b32 s15, s25, s15
	s_add_i32 s24, s10, 1
	s_cmp_ge_u32 s15, s8
	v_writelane_b32 v244, s27, 10
	s_cselect_b32 s8, s24, s10
	v_and_b32_e32 v81, 16, v0
	s_xor_b32 s8, s8, s9
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s10, s11, s93
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s15, s8, s9
	v_writelane_b32 v244, s26, 11
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[8:9], s[0:1], 0x30
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s0, s15, s10
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v108, s19, v34
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	v_mov_b32_e32 v81, 0x7632
	.loc	1 656 32                        ; attention.py:656:32
	s_mul_i32 s0, s0, s95
	v_and_b32_e32 v34, 60, v86
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v244, s0, 12
	s_lshl_b32 s1, s3, 4
	v_cndmask_b32_e32 v81, 0x3276, v81, vcc_lo
	v_dual_mov_b32 v82, 0x5410 :: v_dual_add_nc_u32 v107, s19, v33
	v_writelane_b32 v244, s1, 13
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v33, s23, v88
	v_lshl_or_b32 v81, v81, 8, v81
	s_lshl_b32 s1, s3, 5
	v_add_nc_u32_e32 v109, s19, v35
	v_dual_cndmask_b32 v82, 0x1054, v82 :: v_dual_lshlrev_b32 v35, 6, v0
	v_add_nc_u32_e32 v110, s19, v36
	v_add_nc_u32_e32 v111, s19, v37
	v_writelane_b32 v244, s1, 14
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_and_b32 v36, 32, v0
	v_cndmask_b32_e64 v37, 0x104, 0, s29
	v_and_b32_e32 v81, 0x760076, v81
	v_lshl_or_b32 v82, v82, 8, v82
	v_add_nc_u32_e32 v112, s19, v38
	v_writelane_b32 v244, s29, 15
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[79:80], null, s28, v73, v[33:34]
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_and_b32 v33, 64, v35
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_lshlrev_b32 v38, 2, v36
	v_xor_b32_e32 v37, v37, v34
	v_lshrrev_b32_e32 v55, 5, v0
	v_lshl_or_b32 v81, v81, 4, v81
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s14, s14, s23
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s0, s11, s21
	v_and_b32_e32 v82, 0x540054, v82
	v_writelane_b32 v244, s28, 16
	v_or3_b32 v131, v37, v38, v33
	v_or3_b32 v134, v55, v33, v34
	v_lshrrev_b32_e32 v80, 2, v98
	v_add_nc_u32_e32 v33, 0, v33
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s16, s16, s22
	s_add_i32 s0, s0, s14
	v_lshl_add_u32 v36, v36, 1, 0
	v_and_b32_e32 v137, 0x7060706, v81
	v_or_b32_e32 v81, 0x700, v86
	s_add_i32 s0, s0, s16
	v_lshl_or_b32 v82, v82, 4, v82
	v_writelane_b32 v244, s0, 17
	v_and_b32_e32 v34, 0x380, v35
	v_lshlrev_b32_e32 v35, 1, v92
	v_and_b32_e32 v55, 64, v87
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v140, v33, v80
	v_mov_b32_e32 v33, 0
	v_and_b32_e32 v37, 0x7c, v87
	v_add_nc_u32_e32 v139, v36, v80
	v_add_nc_u32_e32 v177, 0, v81
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[80:81], null, s23, 6, v[79:80]
	s_lshl_b32 s0, s94, 1
	v_and_b32_e32 v136, 0x5040504, v82
	v_or_b32_e32 v82, 0xf00, v86
	v_or3_b32 v135, v34, v55, v35
	v_writelane_b32 v244, s0, 18
	v_or_b32_e32 v83, 0x1700, v86
	v_mov_b32_e32 v190, v33
	v_lshl_or_b32 v133, v92, 8, v37
	v_or_b32_e32 v84, 0x1f00, v86
	s_lshl_b32 s0, s94, 2
	v_add_nc_u32_e32 v178, 0, v82
	v_mad_u64_u32 v[81:82], null, s23, 10, v[79:80]
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v113, s19, v39
	v_add_nc_u32_e32 v114, s19, v40
	v_xor_b32_e32 v38, 0x208, v131
	v_xor_b32_e32 v39, 0x410, v131
	v_xor_b32_e32 v40, 0x618, v131
	v_xor_b32_e32 v37, 0x820, v131
	v_xor_b32_e32 v41, 0xa28, v131
	v_xor_b32_e32 v42, 0xc30, v131
	v_xor_b32_e32 v43, 0xe38, v131
	v_xor_b32_e32 v44, 4, v133
	v_xor_b32_e32 v45, 8, v133
	v_xor_b32_e32 v46, 12, v133
	v_xor_b32_e32 v47, 16, v133
	v_xor_b32_e32 v48, 20, v133
	v_xor_b32_e32 v49, 24, v133
	v_xor_b32_e32 v50, 28, v133
	v_xor_b32_e32 v51, 32, v133
	v_xor_b32_e32 v52, 36, v133
	v_xor_b32_e32 v53, 40, v133
	v_xor_b32_e32 v54, 44, v133
	v_xor_b32_e32 v56, 48, v133
	v_xor_b32_e32 v57, 52, v133
	v_xor_b32_e32 v58, 56, v133
	v_xor_b32_e32 v59, 60, v133
	v_and_b32_e32 v60, 0x60, v0
	v_xor_b32_e32 v61, 0x84, v134
	v_xor_b32_e32 v62, 0x108, v134
	v_xor_b32_e32 v63, 0x18c, v134
	v_xor_b32_e32 v34, 0x210, v134
	v_xor_b32_e32 v55, 0x294, v134
	v_xor_b32_e32 v64, 0x318, v134
	v_xor_b32_e32 v65, 0x39c, v134
	v_xor_b32_e32 v66, 4, v135
	v_xor_b32_e32 v67, 8, v135
	v_xor_b32_e32 v68, 12, v135
	v_xor_b32_e32 v69, 16, v135
	v_xor_b32_e32 v70, 20, v135
	v_xor_b32_e32 v71, 24, v135
	v_xor_b32_e32 v72, 28, v135
	v_writelane_b32 v244, s0, 19
	v_add_nc_u32_e32 v179, 0, v83
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[82:83], null, s23, 12, v[79:80]
	v_add_nc_u32_e32 v180, 0, v84
	v_mad_u64_u32 v[83:84], null, s23, 14, v[79:80]
	v_mad_u64_u32 v[84:85], null, s94, v88, v[73:74]
	s_lshl_b32 s0, s94, 3
	v_subrev_nc_u32_e32 v115, s17, v107
	v_subrev_nc_u32_e32 v116, s17, v108
	v_subrev_nc_u32_e32 v118, s17, v110
	v_add_nc_u32_e32 v123, s18, v107
	v_add_nc_u32_e32 v124, s18, v108
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_add_nc_u32 v126, s18, v110
	v_lshl_add_u32 v132, s23, 1, v79
	v_writelane_b32 v244, s0, 20
	v_add3_u32 v138, 0, v35, v60
	v_add_nc_u32_e32 v141, 0, v38
	v_add_nc_u32_e32 v142, 0, v39
	v_add_nc_u32_e32 v143, 0, v40
	v_add_nc_u32_e32 v144, 0, v37
	v_add_nc_u32_e32 v145, 0, v41
	v_add_nc_u32_e32 v146, 0, v42
	v_add_nc_u32_e32 v147, 0, v43
	v_add_nc_u32_e32 v148, 0, v44
	v_add_nc_u32_e32 v149, 0, v45
	v_add_nc_u32_e32 v150, 0, v46
	v_add_nc_u32_e32 v151, 0, v47
	v_add_nc_u32_e32 v152, 0, v48
	v_add_nc_u32_e32 v153, 0, v49
	v_add_nc_u32_e32 v154, 0, v50
	v_add_nc_u32_e32 v155, 0, v51
	v_add_nc_u32_e32 v156, 0, v52
	v_add_nc_u32_e32 v157, 0, v53
	v_add_nc_u32_e32 v158, 0, v54
	v_add_nc_u32_e32 v159, 0, v56
	v_add_nc_u32_e32 v160, 0, v57
	v_add_nc_u32_e32 v161, 0, v58
	v_add_nc_u32_e32 v162, 0, v59
	v_add_nc_u32_e32 v163, 0, v61
	v_add_nc_u32_e32 v164, 0, v62
	v_add_nc_u32_e32 v165, 0, v63
	v_add_nc_u32_e32 v166, 0, v34
	v_add_nc_u32_e32 v167, 0, v55
	v_add_nc_u32_e32 v168, 0, v64
	v_add_nc_u32_e32 v169, 0, v65
	v_add_nc_u32_e32 v170, 0, v66
	v_add_nc_u32_e32 v171, 0, v67
	v_add_nc_u32_e32 v172, 0, v68
	v_add_nc_u32_e32 v173, 0, v69
	v_add_nc_u32_e32 v174, 0, v70
	v_add_nc_u32_e32 v175, 0, v71
	v_add_nc_u32_e32 v176, 0, v72
	v_mov_b32_e32 v34, v33
	v_subrev_nc_u32_e32 v117, s17, v109
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v125, s18, v109
	v_mov_b32_e32 v35, v33
	v_subrev_nc_u32_e32 v120, s17, v112
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v128, s18, v112
	v_mov_b32_e32 v36, v33
	v_subrev_nc_u32_e32 v119, s17, v111
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v127, s18, v111
	v_mov_b32_e32 v37, v33
	v_subrev_nc_u32_e32 v122, s17, v114
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_add_nc_u32 v130, s18, v114
	v_mov_b32_e32 v38, v33
	v_subrev_nc_u32_e32 v121, s17, v113
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_add_nc_u32 v129, s18, v113
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_lshl_add_u32 v181, s23, 2, v79
	v_lshl_add_u32 v182, s23, 3, v79
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s93, s20, 0x3fb8aa3b
	s_mov_b32 s84, 0
	s_and_b32 s97, s25, 0xffff
	s_mov_b32 s96, s24
	s_mov_b32 s99, 0x31027000
	s_mov_b32 s98, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_lshl_b32 s0, s94, 4
	s_lshl_b32 s92, s94, 5
	s_and_b32 s101, s27, 0xffff
	s_mov_b32 s100, s26
	s_mov_b32 s85, s84
	s_mov_b32 s86, s84
	s_mov_b32 s87, s84
	s_mov_b32 s88, s84
	s_mov_b32 s89, s84
	s_mov_b32 s90, s84
	s_mov_b32 s91, s84
	s_mov_b32 vcc_hi, 0x76543210
	v_writelane_b32 v244, s0, 21
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	v_readlane_b32 s10, v244, 16
	v_readlane_b32 s45, v244, 17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s44, s4, s44
	s_and_b32 s43, s4, s43
	s_and_b32 s42, s4, s42
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s11, s7, s10
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s10, s98
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s45, s45, s11
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s11, s99
	v_add_lshl_u32 v193, s45, v79, 2
	v_add_lshl_u32 v194, s45, v132, 2
	v_add_lshl_u32 v195, s45, v181, 2
	v_add_lshl_u32 v196, s45, v80, 2
	v_add_lshl_u32 v197, s45, v182, 2
	v_add_lshl_u32 v198, s45, v81, 2
	v_add_lshl_u32 v199, s45, v82, 2
	v_add_lshl_u32 v200, s45, v83, 2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s67
	v_cndmask_b32_e64 v194, 0x80000000, v194, s66
	v_cndmask_b32_e64 v195, 0x80000000, v195, s65
	v_cndmask_b32_e64 v196, 0x80000000, v196, s63
	v_cndmask_b32_e64 v197, 0x80000000, v197, s64
	v_cndmask_b32_e64 v198, 0x80000000, v198, s61
	v_cndmask_b32_e64 v199, 0x80000000, v199, s62
	v_cndmask_b32_e64 v200, 0x80000000, v200, s60
	s_clause 0x7
	buffer_load_b32 v193, v193, s[8:11], 0 offen
	buffer_load_b32 v194, v194, s[8:11], 0 offen
	buffer_load_b32 v195, v195, s[8:11], 0 offen
	buffer_load_b32 v196, v196, s[8:11], 0 offen
	buffer_load_b32 v197, v197, s[8:11], 0 offen
	buffer_load_b32 v198, v198, s[8:11], 0 offen
	buffer_load_b32 v199, v199, s[8:11], 0 offen
	buffer_load_b32 v200, v200, s[8:11], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s41, s4, s41
	s_and_b32 s40, s4, s40
	s_and_b32 s39, s4, s39
	s_and_b32 s29, s4, s29
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s103, s99
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s26, s4, s26
	s_and_b32 s24, s4, s24
	s_and_b32 s22, s4, s22
	s_and_b32 s21, s4, s21
	s_and_b32 s20, s4, s20
	s_and_b32 s18, s4, s18
	s_and_b32 s16, s4, s16
	s_and_b32 s15, s4, s15
	s_and_b32 s0, s4, s0
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s7, s7, 64
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v236, 0xff800000, v193, s67
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v237, 0xff800000, v194, s66
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v238, 0xff800000, v195, s65
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v239, 0xff800000, v196, s63
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v240, 0xff800000, v197, s64
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v241, 0xff800000, v198, s61
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v242, 0xff800000, v199, s62
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v199, 0, v131
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v243, 0xff800000, v200, s60
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v199, v236
	ds_store_b32 v141, v237
	ds_store_b32 v142, v238
	ds_store_b32 v143, v239
	ds_store_b32 v144, v240
	ds_store_b32 v145, v241
	ds_store_b32 v146, v242
	ds_store_b32 v147, v243
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[212:213], v149 offset1:32
	ds_load_2addr_b32 v[218:219], v153 offset1:32
	ds_load_2addr_b32 v[220:221], v154 offset1:32
	ds_load_2addr_b32 v[214:215], v150 offset1:32
	ds_load_2addr_b32 v[216:217], v151 offset1:32
	ds_load_2addr_b32 v[210:211], v148 offset1:32
	v_add_nc_u32_e32 v200, 0, v133
	ds_load_2addr_b32 v[224:225], v157 offset1:32
	ds_load_2addr_b32 v[226:227], v158 offset1:32
	ds_load_2addr_b32 v[230:231], v160 offset1:32
	ds_load_2addr_b32 v[234:235], v162 offset1:32
	ds_load_2addr_b32 v[196:197], v200 offset1:32
	ds_load_2addr_b32 v[232:233], v161 offset1:32
	ds_load_2addr_b32 v[228:229], v159 offset1:32
	ds_load_2addr_b32 v[222:223], v156 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	v_cmp_neq_f32_e64 s45, 0xff800000, v237
	v_cmp_neq_f32_e64 s46, 0xff800000, v240
	v_cmp_neq_f32_e64 s47, 0xff800000, v241
	v_cmp_neq_f32_e64 s48, 0xff800000, v242
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(12)
	v_dual_mul_f32 v202, 0x3fb8aa3b, v212 :: v_dual_mul_f32 v201, 0x3fb8aa3b, v218
	s_waitcnt lgkmcnt(11)
	v_mul_f32_e32 v198, 0x3fb8aa3b, v220
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s68, s67, vcc_lo
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(9)
	v_mul_f32_e32 v204, 0x3fb8aa3b, v216
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v202, s93, v43 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v214
	v_dual_fmac_f32 v201, s93, v47 :: v_dual_fmac_f32 v198, s93, v48
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_2addr_b32 v[47:48], v155 offset1:32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v204, s93, v45 :: v_dual_fmac_f32 v43, s93, v44
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_2addr_b32 v[44:45], v152 offset1:32
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v194, 0x3fb8aa3b, v196 :: v_dual_mul_f32 v205, 0x3fb8aa3b, v226
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v208, 0x3fb8aa3b, v232
	v_dual_mul_f32 v196, 0x3fb8aa3b, v224 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v209, 0x3fb8aa3b, v234 :: v_dual_fmac_f32 v194, s93, v41
	v_dual_mul_f32 v41, 0x3fb8aa3b, v210 :: v_dual_fmac_f32 v196, s93, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v205, s93, v52 :: v_dual_fmac_f32 v208, s93, v55
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v210, 0x3fb8aa3b, v197 :: v_dual_fmac_f32 v207, s93, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v52, 0x3fb8aa3b, v213 :: v_dual_fmac_f32 v209, s93, v56
	v_mul_f32_e32 v56, 0x3fb8aa3b, v211
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v195, 0x3fb8aa3b, v47
	v_dual_mul_f32 v51, 0x3fb8aa3b, v215 :: v_dual_fmac_f32 v210, s93, v57
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v52, s93, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v56, s93, v58 :: v_dual_fmac_f32 v195, s93, v49
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v49, 0x3fb8aa3b, v45
	v_mul_f32_e32 v45, 0x3fb8aa3b, v221
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v51, s93, v60
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v48, 0x3fb8aa3b, v229 :: v_dual_fmac_f32 v49, s93, v62
	v_mul_f32_e32 v59, 0x3fb8aa3b, v227
	.loc	1 685 34 is_stmt 1              ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v238
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s72, s66, s45
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v239
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_dual_fmac_f32 v48, s93, v69 :: v_dual_fmac_f32 v59, s93, v68
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v60, 0, v134
	v_cndmask_b32_e64 v57, 0, 1, s68
	v_cndmask_b32_e64 v58, 0, 1, s72
	s_and_b32 s75, s65, vcc_lo
	s_and_b32 s74, s63, s45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v60, v57
	v_cndmask_b32_e64 v57, 0, 1, s75
	ds_store_b8 v163, v58
	v_cndmask_b32_e64 v58, 0, 1, s74
	s_and_b32 s73, s64, s46
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s49, 0xff800000, v243
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s71, s61, s47
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_dual_mul_f32 v193, 0x3fb8aa3b, v222 :: v_dual_mul_f32 v206, 0x3fb8aa3b, v228
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v164, v57
	v_cndmask_b32_e64 v57, 0, 1, s73
	ds_store_b8 v165, v58
	v_cndmask_b32_e64 v58, 0, 1, s71
	s_and_b32 s70, s62, s48
	s_and_b32 s69, s60, s49
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v203, 0x3fb8aa3b, v44
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v193, s93, v50 :: v_dual_fmac_f32 v206, s93, v53
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v217 :: v_dual_mul_f32 v47, 0x3fb8aa3b, v219
	v_dual_mul_f32 v55, 0x3fb8aa3b, v223 :: v_dual_fmac_f32 v54, s93, v65
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_store_b8 v166, v57
	ds_store_b8 v167, v58
	v_cndmask_b32_e64 v57, 0, 1, s70
	v_cndmask_b32_e64 v58, 0, 1, s69
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v203, s93, v46 :: v_dual_fmac_f32 v50, s93, v61
	v_dual_fmac_f32 v47, s93, v63 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v233
	v_fmac_f32_e32 v55, s93, v66
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v168, v57
	ds_store_b8 v169, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v57, v170 offset:32
	ds_load_u16_d16 v66, v172
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v171
	ds_load_u16_d16 v68, v170
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v172 offset:32
	ds_load_u16_d16_hi v211, v174 offset:32
	ds_load_u16_d16 v212, v175 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v212, v176 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v46, s93, v71
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v69, v173 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v69, v176
	ds_load_u16_d16 v71, v175
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v71, v174
	ds_load_u16_d16 v211, v173
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v41, s93, v42
	v_dual_fmac_f32 v45, s93, v64 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v231
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v225 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v42, s93, v70 :: v_dual_fmac_f32 v53, s93, v67
	v_fmac_f32_e32 v44, s93, v72
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v57.h, 1, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v57.h
	ds_load_u16_d16_hi v57, v171 offset:32
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v197, 0xff800000, v193, s45
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v58.l, 1, v57.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v58.l
	v_and_b16 v58.l, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e32 v196, 0xff800000, v196, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s60, 1, v58.l
	v_and_b16 v58.l, 1, v69.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v193, 0xff800000, v205, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s59, 1, v58.l
	v_and_b16 v58.l, 1, v211.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v206, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s58, 1, v58.l
	v_and_b16 v58.l, 1, v212.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v207, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s54, 1, v58.l
	v_and_b16 v58.l, 1, v212.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v208, s54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s61, 1, v58.l
	v_add_nc_u32_e32 v58, 0, v135
	ds_load_u16_d16 v213, v58
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v213, v58 offset:32
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v209, s61
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v58.l, 8, v213.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v58.l, 1, v58.l
	v_cmp_eq_u16_e64 s52, 1, v58.l
	v_lshrrev_b16 v58.l, 8, v68.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v210, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v58.l, 1, v58.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s56, 1, v58.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v58, v72, v70, v65
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v63, 0xff800000, v56, s56
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v197, v196, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v60, v67, v61, v63
	v_max3_f32 v208, v56, v58, v60
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v56.l, 8, v57.l
	v_lshrrev_b16 v56.h, 8, v57.h
	v_lshrrev_b16 v57.l, 8, v213.h
	v_lshrrev_b16 v58.l, 8, v71.l
	v_lshrrev_b16 v57.h, 8, v71.h
	v_and_b16 v205.h, 1, v56.l
	v_lshrrev_b16 v56.l, 8, v66.h
	v_and_b16 v205.l, 1, v57.l
	v_and_b16 v206.l, 1, v56.h
	v_lshrrev_b16 v56.h, 8, v66.l
	v_lshrrev_b16 v57.l, 8, v211.l
	v_and_b16 v206.h, 1, v58.l
	v_lshrrev_b16 v58.l, 8, v69.h
	v_and_b16 v56.l, 1, v56.l
	v_and_b16 v56.h, 1, v56.h
	v_and_b16 v57.l, 1, v57.l
	v_and_b16 v57.h, 1, v57.h
	v_and_b16 v207.l, 1, v58.l
	v_cmp_eq_u16_e64 s55, 1, v56.l
	v_cmp_eq_u16_e64 s57, 1, v56.h
	v_cmp_eq_u16_e64 s51, 1, v57.l
	v_cmp_eq_u16_e64 s53, 1, v57.h
	v_cmp_eq_u16_e64 s49, 1, v206.h
	v_cmp_eq_u16_e64 s50, 1, v207.l
	v_cmp_eq_u16_e64 s47, 1, v205.l
	v_cmp_eq_u16_e64 s48, 1, v205.h
	v_cmp_eq_u16_e64 s46, 1, v206.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v52, s55
	v_cndmask_b32_e64 v64, 0xff800000, v51, s57
	v_cndmask_b32_e64 v58, 0xff800000, v50, s51
	v_cndmask_b32_e64 v60, 0xff800000, v49, s53
	v_cndmask_b32_e64 v56, 0xff800000, v47, s49
	v_cndmask_b32_e64 v57, 0xff800000, v45, s50
	v_cndmask_b32_e64 v54, 0xff800000, v54, s47
	v_cndmask_b32_e64 v55, 0xff800000, v55, s48
	v_cndmask_b32_e64 v53, 0xff800000, v53, s46
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v45, v62, v64, v58
	v_max3_f32 v47, v60, v56, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v49, v54, v55, v53
	v_max3_f32 v205, v45, v47, v49
.Ltmp6:
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v45.l, 1, v213.l
	v_and_b16 v45.h, 1, v68.l
	v_and_b16 v47.l, 1, v66.l
	v_and_b16 v47.h, 1, v211.l
	v_and_b16 v49.h, 1, v71.h
	v_and_b16 v49.l, 1, v66.h
	v_cmp_eq_u16_e64 s76, 1, v45.l
	v_cmp_eq_u16_e64 s77, 1, v45.h
	v_cmp_eq_u16_e64 s78, 1, v47.l
	v_cmp_eq_u16_e64 s79, 1, v47.h
	v_cmp_eq_u16_e64 s80, 1, v49.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v50, 0xff800000, v194, s76
	v_cndmask_b32_e64 v41, 0xff800000, v41, s77
	v_cndmask_b32_e64 v43, 0xff800000, v43, s78
	v_cndmask_b32_e64 v45, 0xff800000, v204, s79
	v_cndmask_b32_e64 v47, 0xff800000, v203, s80
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s81, 1, v49.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v50, v41
.Ltmp8:
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v66.l, 1, v213.h
	v_lshrrev_b16 v68.l, 8, v211.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v52, v43, v45, v47
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v202, s81
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.h, 0
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s67, 1, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v194, v51, v49, v52
.Ltmp12:
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v51.l, 1, v71.l
	v_and_b16 v52.l, 1, v69.h
	v_and_b16 v71.l, 1, v68.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v202.h, v71.h
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s82, 1, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s83, 1, v52.l
	v_cmp_eq_u16_e64 s66, 1, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v51, 0xff800000, v201, s82
	v_cndmask_b32_e64 v52, 0xff800000, v198, s83
	v_cndmask_b32_e64 v198, 0xff800000, v195, s67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v195, 0xff800000, v42, s66
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v51, v52, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v201, v194, v66, v208
.Ltmp14:
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v66.l, 8, v68.h
	v_lshrrev_b16 v66.h, 8, v69.l
	v_lshrrev_b16 v68.h, 8, v212.l
	v_lshrrev_b16 v69.l, 8, v212.h
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v68.l, 1, v68.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v68.h, 1, v69.l
	v_cmp_eq_u16_e64 s65, 1, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s64, 1, v66.h
	v_cmp_eq_u16_e64 s62, 1, v68.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s63, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v194, 0xff800000, v59, s65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v69, 0xff800000, v48, s64
	v_cndmask_b32_e64 v66, 0xff800000, v46, s62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v68, 0xff800000, v44, s63
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v48.h, v71.h
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v194, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v44, v66, v68
	v_max3_f32 v42, v42, v195, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v42, v201, v205, v42
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v201.h, v71.h
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v44, v42, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v59, v192, v42, v44
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v41, v59
	v_sub_f32_e32 v44, v50, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s77
	v_cndmask_b32_e64 v44, 0, v44, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v42.h
	v_cmp_o_f32_e64 s76, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v71
	v_add3_u32 v46, v42, v46, 0x7fff
	v_mov_b16_e32 v46.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v42.h, 0x7fff, v46.h, s76
	v_mov_b16_e32 v46.h, v71.h
	v_cmp_o_f32_e64 s76, v44, v44
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v44, v46, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v49, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v46, v43, v59
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s81
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v48.l, v44.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s78
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s76, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v48, 1, v48
	v_mov_b16_e32 v71.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v48, v44, v48, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v48.h, s76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v48, 1, v71
	v_cmp_o_f32_e64 s76, v46, v46
	v_add3_u32 v48, v46, v48, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v45, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s76
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v48, v47, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v201.l, v46.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s76, v46, v46
	v_and_b32_e32 v201, 1, v201
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_2addr_b32 v200, v50, v61 offset1:32
	ds_store_2addr_b32 v148, v41, v63 offset1:32
	ds_store_2addr_b32 v149, v49, v62 offset1:32
	ds_store_2addr_b32 v150, v43, v64 offset1:32
	ds_store_2addr_b32 v151, v45, v58 offset1:32
	ds_store_2addr_b32 v152, v47, v60 offset1:32
	ds_store_2addr_b32 v153, v51, v56 offset1:32
	ds_store_2addr_b32 v154, v52, v57 offset1:32
	ds_store_2addr_b32 v155, v198, v54 offset1:32
	ds_store_2addr_b32 v156, v197, v55 offset1:32
	ds_store_2addr_b32 v157, v196, v53 offset1:32
	ds_store_2addr_b32 v158, v193, v194 offset1:32
	ds_store_2addr_b32 v159, v72, v69 offset1:32
	ds_store_2addr_b32 v160, v70, v195 offset1:32
	ds_store_2addr_b32 v161, v65, v66 offset1:32
	ds_store_2addr_b32 v162, v67, v68 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v199
	ds_load_b32 v43, v141
	ds_load_b32 v45, v142
	ds_load_b32 v47, v143
	ds_load_b32 v203, v144
	ds_load_b32 v204, v145
	ds_load_b32 v205, v146
	ds_load_b32 v206, v147
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v201, v46, v201, 0x7fff
	v_mov_b16_e32 v71.l, v48.h
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.l, 0x7fff, v201.h, s76
	v_and_b32_e32 v201, 1, v71
	v_cmp_o_f32_e64 s76, v48, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v201, v48, v201, 0x7fff
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v49, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v41, v41
.Ltmp23:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v51, v59
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v43, v43
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.h, 0x7fff, v201.h, s76
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v49, v49
.Ltmp27:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v201, v52, v59 :: v_dual_max_f32 v52, v45, v45
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v200, v203, v203 :: v_dual_max_f32 v49, v50, v49
.Ltmp29:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v201, v201
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v206, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v201, 0, v201, s83
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v71.l, v201.h
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v49, v49, v50
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v50, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v49, v49, v50
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s10, v49, 31
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v50, v50, v50 :: v_dual_mov_b32 v49, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v51, v50
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v51
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v51, v50, -1, -1 op_sel:[1,0]
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v51
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v52, v51
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v199, v52
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v199, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v199
	v_max_f32_e32 v52, v52, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v199, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v199
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v199, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v199
	v_max_f32_e32 v52, v52, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v199, v52, -1, -1 op_sel:[1,0]
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v199
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v199, v203 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v199, v200, v199
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v200, v199 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v200, v200
	v_max_f32_e32 v199, v199, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v200, v199 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v200, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v199, v199, v200
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v200, v199 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v200, v200
	v_max_f32_e32 v199, v199, v200
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s10, v50, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v200, v199, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v200, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, s10
	v_readlane_b32 s10, v51, 31
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v199, v200
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v200, v204 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v51, s10
	v_readlane_b32 s10, v52, 31
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v200, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v52, s10
	v_readlane_b32 s10, v199, 31
	v_mov_b32_e32 v199, s10
.Ltmp87:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s82
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v202.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s76, v48, v48
	v_and_b32_e32 v202, 1, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v202, v48, v202, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v202.h, s76
	v_and_b32_e32 v202, 1, v71
	v_cmp_o_f32_e64 s76, v201, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v202, v201, v202, 0x7fff
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v201, v204, v204
.Ltmp89:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.h, 0x7fff, v202.h, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v200, v201, v200
	v_max_f32_e32 v202, v205, v205
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v201, v200 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v201, v201, v201
	v_max_f32_e32 v200, v200, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v201, v200 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v201, v201, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v200, v200, v201
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v201, v200 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v201, v201, v201
	v_max_f32_e32 v200, v200, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v201, v200, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v201, v201, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v200, v200, v201
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v201, v205 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s10, v200, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v201, v201, v201 :: v_dual_mov_b32 v200, s10
	v_max_f32_e32 v201, v202, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v201 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v201, v201, v202
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v201 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	v_max_f32_e32 v201, v201, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v201 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v201, v201, v202
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v202, v201, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	v_max_f32_e32 v201, v201, v202
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v206 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s10, v201, 31
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v202, v202, v202 :: v_dual_mov_b32 v201, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v202, v207, v202
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v202 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	v_max_f32_e32 v202, v202, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v202 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v202, v202, v207
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v202 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	v_max_f32_e32 v202, v202, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v207, v202, -1, -1 op_sel:[1,0]
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v202, v202, v207
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s10, v202, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v202, s10
	ds_store_b128 v139, v[49:52]
	ds_store_b128 v139, v[199:202] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v140
	ds_load_b128 v[199:202], v140 offset:32
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v207, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v184, v184, v50, v207
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v43, v184
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v185, v185, v51, v50
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v51, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v185
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s72
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max3_f32 v188, v188, v200, v51
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v204, v188
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s75
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp136:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v51, 0, v51, s71
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v200, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v43, v43, v200
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v43, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v204, s10
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v43, v43, v45
.Ltmp145:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v45, v44, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v43, 31
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v52
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp148:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v186, v186, v52, v50
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v52, v49
	v_dual_mov_b32 v50, v199 :: v_dual_max_f32 v49, v49, v49
.Ltmp150:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v47, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp152:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp154:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v187, v187, v199, v50
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v199, v49, v52
.Ltmp156:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v49, v183, v183
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s74
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v183, v49, v199
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v49, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp158:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v183
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v189, v189, v201, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v205, v189
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v205, s10
.Ltmp162:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
.Ltmp163:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v49, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v41, 31
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v203, v187
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v47, v46, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v203, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp175:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v50, 0, v50, s73
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v41, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v52, v202 :: v_dual_add_f32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v85, v85, v202, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v52, v206, v85
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v206, s10
	v_readlane_b32 s10, v41, 31
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v207, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp187:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp189:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v52, v52
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v41, 31
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mad_u64_u32 v[49:50], null, s102, s94, v[84:85]
.Ltmp192:
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s102, s98
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v208, s10
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp195:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v52, s69
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v213, v49, s92, 1
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v41, 31
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v209, s10
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp205:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v43, v42, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v41, 31
	v_dual_mov_b32 v210, s10 :: v_dual_lshlrev_b32 v41, 1, v49
.Ltmp207:
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s10, v244, 18
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v50, 0x80000000, v41, s44
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_store_b128 v139, v[203:206]
	ds_store_b128 v139, v[207:210] offset:32
.Ltmp209:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v203, v48, vcc_hi, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v41, v49, s10, 1
	v_readlane_b32 s10, v244, 19
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp211:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v51, 0x80000000, v41, s43
	v_add_lshl_u32 v41, v49, s10, 1
	s_mul_i32 s10, s94, 6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v52, 0x80000000, v41, s42
	v_add_lshl_u32 v41, v49, s10, 1
	v_readlane_b32 s10, v244, 20
	v_cndmask_b32_e64 v200, 0x80000000, v41, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v49, s10, 1
	s_mul_i32 s10, s94, 10
	v_cndmask_b32_e64 v201, 0x80000000, v41, s40
	v_add_lshl_u32 v41, v49, s10, 1
	s_mul_i32 s10, s94, 12
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v202, 0x80000000, v41, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v41, v43, v42, v136
	v_perm_b32 v42, v43, v42, v137
	v_perm_b32 v43, v45, v44, v136
	v_perm_b32 v44, v45, v44, v137
	v_perm_b32 v45, v47, v46, v136
	v_perm_b32 v46, v47, v46, v137
	v_perm_b32 v47, v203, v48, v136
	v_perm_b32 v48, v203, v48, v137
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v203, v49, s10, 1
	v_readlane_b32 s10, v244, 21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v203, 0x80000000, v203, s29
	v_add_lshl_u32 v204, v49, s10, 1
	s_mul_i32 s10, s94, 18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s30
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v205, v49, s10, 1
	s_mul_i32 s10, s94, 20
	v_cndmask_b32_e64 v204, 0x80000000, v204, s29
	v_add_lshl_u32 v206, v49, s10, 1
	s_mul_i32 s10, s94, 22
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s31
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v207, v49, s10, 1
	s_mul_i32 s10, s94, 24
	v_cndmask_b32_e64 v205, 0x80000000, v205, s29
	v_add_lshl_u32 v208, v49, s10, 1
	s_mul_i32 s10, s94, 26
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s33
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v209, v49, s10, 1
	s_mul_i32 s10, s94, 14
	v_cndmask_b32_e64 v206, 0x80000000, v206, s29
	v_add_lshl_u32 v210, v49, s10, 1
	s_mul_i32 s10, s94, 28
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s34
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v211, v49, s10, 1
	s_mul_i32 s10, s94, 30
	v_cndmask_b32_e64 v207, 0x80000000, v207, s29
	v_add_lshl_u32 v212, v49, s10, 1
	s_mul_i32 s10, s94, 34
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s35
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v214, v49, s10, 1
	s_mul_i32 s10, s94, 36
	v_cndmask_b32_e64 v208, 0x80000000, v208, s29
	v_add_lshl_u32 v215, v49, s10, 1
	s_mul_i32 s10, s94, 38
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s36
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v216, v49, s10, 1
	s_mul_i32 s10, s94, 40
	v_cndmask_b32_e64 v209, 0x80000000, v209, s29
	v_add_lshl_u32 v217, v49, s10, 1
	s_mul_i32 s10, s94, 42
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s4, s37
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v218, v49, s10, 1
	s_mul_i32 s10, s94, 44
	v_cndmask_b32_e64 v211, 0x80000000, v211, s29
	v_add_lshl_u32 v219, v49, s10, 1
	s_mul_i32 s10, s94, 46
	s_clause 0xd
	buffer_load_u16 v228, v50, s[100:103], 0 offen
	buffer_load_u16 v229, v51, s[100:103], 0 offen
	buffer_load_u16 v230, v52, s[100:103], 0 offen
	buffer_load_u16 v200, v200, s[100:103], 0 offen
	buffer_load_u16 v201, v201, s[100:103], 0 offen
	buffer_load_u16 v202, v202, s[100:103], 0 offen
	buffer_load_u16 v203, v203, s[100:103], 0 offen
	buffer_load_u16 v204, v204, s[100:103], 0 offen
	buffer_load_u16 v205, v205, s[100:103], 0 offen
	buffer_load_u16 v206, v206, s[100:103], 0 offen
	buffer_load_u16 v207, v207, s[100:103], 0 offen
	buffer_load_u16 v208, v208, s[100:103], 0 offen
	buffer_load_u16 v209, v209, s[100:103], 0 offen
	buffer_load_u16 v211, v211, s[100:103], 0 offen
	v_add_lshl_u32 v220, v49, s10, 1
	s_mul_i32 s10, s94, 48
	v_cndmask_b32_e64 v50, 0x80000000, v213, s26
	v_add_lshl_u32 v221, v49, s10, 1
	s_mul_i32 s10, s94, 50
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s26, s4, s27
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v222, v49, s10, 1
	s_mul_i32 s10, s94, 52
	v_cndmask_b32_e64 v51, 0x80000000, v214, s26
	v_add_lshl_u32 v223, v49, s10, 1
	s_mul_i32 s10, s94, 54
	v_cndmask_b32_e64 v52, 0x80000000, v215, s24
	v_add_lshl_u32 v224, v49, s10, 1
	s_mul_i32 s10, s94, 56
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s24, s4, s25
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v225, v49, s10, 1
	s_mul_i32 s10, s94, 58
	v_cndmask_b32_e64 v214, 0x80000000, v217, s22
	v_add_lshl_u32 v226, v49, s10, 1
	s_mul_i32 s10, s94, 60
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s22, s4, s23
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v213, 0x80000000, v216, s24
	v_add_lshl_u32 v227, v49, s10, 1
	v_cndmask_b32_e64 v215, 0x80000000, v218, s22
	v_cndmask_b32_e64 v216, 0x80000000, v219, s21
	s_clause 0x6
	buffer_load_u16 v217, v50, s[100:103], 0 offen
	buffer_load_u16 v218, v51, s[100:103], 0 offen
	buffer_load_u16 v219, v52, s[100:103], 0 offen
	buffer_load_u16 v213, v213, s[100:103], 0 offen
	buffer_load_u16 v214, v214, s[100:103], 0 offen
	buffer_load_u16 v215, v215, s[100:103], 0 offen
	buffer_load_u16 v216, v216, s[100:103], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v221, s20
	v_cndmask_b32_e64 v51, 0x80000000, v222, s18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s18, s4, s19
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v221, 0x80000000, v224, s16
	v_cndmask_b32_e64 v52, 0x80000000, v223, s18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s16, s4, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v223, 0x80000000, v226, s15
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s15, s4, s38
	.loc	1 694 30                        ; attention.py:694:30
	s_mul_i32 s10, s94, 62
	v_cndmask_b32_e64 v222, 0x80000000, v225, s16
	v_cndmask_b32_e64 v224, 0x80000000, v227, s15
	s_clause 0x6
	buffer_load_u16 v225, v50, s[100:103], 0 offen
	buffer_load_u16 v226, v51, s[100:103], 0 offen
	buffer_load_u16 v227, v52, s[100:103], 0 offen
	buffer_load_u16 v221, v221, s[100:103], 0 offen
	buffer_load_u16 v222, v222, s[100:103], 0 offen
	buffer_load_u16 v223, v223, s[100:103], 0 offen
	buffer_load_u16 v224, v224, s[100:103], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v210, s0
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s0, s4, s1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v49, v49, s10, 1
	v_cndmask_b32_e64 v51, 0x80000000, v212, s0
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s0, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v52, 0x80000000, v220, s0
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s0, s4, s28
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s7, s104
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	s_clause 0x3
	buffer_load_u16 v210, v50, s[100:103], 0 offen
	buffer_load_u16 v212, v51, s[100:103], 0 offen
	buffer_load_u16 v220, v52, s[100:103], 0 offen
	buffer_load_u16 v231, v49, s[100:103], 0 offen
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[49:52], v140
.Ltmp213:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v50, 0, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v192
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v50, v228
	s_waitcnt vmcnt(30)
	ds_store_b16 v50, v229 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v50, v230 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v50, v200 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v50, v201 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v50, v202 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v50, v203 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v50, v204 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v50, v205 offset:2304
	s_waitcnt vmcnt(22)
	ds_store_b16 v50, v206 offset:2560
	s_waitcnt vmcnt(21)
	ds_store_b16 v50, v207 offset:2816
	s_waitcnt vmcnt(20)
	ds_store_b16 v50, v208 offset:3072
	s_waitcnt vmcnt(19)
	ds_store_b16 v50, v209 offset:3328
	s_waitcnt vmcnt(18)
	ds_store_b16 v50, v211 offset:3584
	s_waitcnt vmcnt(17)
	ds_store_b16 v50, v217 offset:4096
	s_waitcnt vmcnt(16)
	ds_store_b16 v50, v218 offset:4352
	s_waitcnt vmcnt(15)
	ds_store_b16 v50, v219 offset:4608
	s_waitcnt vmcnt(14)
	ds_store_b16 v50, v213 offset:4864
	s_waitcnt vmcnt(13)
	ds_store_b16 v50, v214 offset:5120
	s_waitcnt vmcnt(12)
	ds_store_b16 v50, v215 offset:5376
	s_waitcnt vmcnt(11)
	ds_store_b16 v50, v216 offset:5632
	s_waitcnt vmcnt(10)
	ds_store_b16 v50, v225 offset:6144
	s_waitcnt vmcnt(9)
	ds_store_b16 v50, v226 offset:6400
	s_waitcnt vmcnt(8)
	ds_store_b16 v50, v227 offset:6656
	s_waitcnt vmcnt(7)
	ds_store_b16 v50, v221 offset:6912
	s_waitcnt vmcnt(6)
	ds_store_b16 v50, v222 offset:7168
	s_waitcnt vmcnt(5)
	ds_store_b16 v50, v223 offset:7424
	s_waitcnt vmcnt(4)
	ds_store_b16 v50, v224 offset:7680
	s_waitcnt vmcnt(3)
	ds_store_b16 v177, v210
	s_waitcnt vmcnt(2)
	ds_store_b16 v178, v212
	s_waitcnt vmcnt(1)
	ds_store_b16 v179, v220
	s_waitcnt vmcnt(0)
	ds_store_b16 v180, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v200, v138
	ds_load_u16_d16 v201, v138 offset:256
	ds_load_u16_d16 v202, v138 offset:512
	ds_load_u16_d16 v203, v138 offset:768
	ds_load_u16_d16 v204, v138 offset:1024
	ds_load_u16_d16 v205, v138 offset:1280
	ds_load_u16_d16 v206, v138 offset:1536
	ds_load_u16_d16 v207, v138 offset:1792
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v50, v192, v59
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v200, v138 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v201, v138 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v202, v138 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v203, v138 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v204, v138 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v205, v138 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v206, v138 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v207, v138 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v50, v50
	v_mov_b32_e32 v192, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v50, 0, v50, s0
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v33, v33, v50
	v_mul_f32_e32 v34, v34, v50
	v_mul_f32_e32 v35, v35, v50
	v_mul_f32_e32 v36, v36, v50
	v_mul_f32_e32 v37, v37, v50
	v_mul_f32_e32 v38, v38, v50
	v_mul_f32_e32 v39, v39, v50
	v_mul_f32_e32 v40, v40, v50
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v50.h, v71.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[200:207], v[41:48], v[33:40]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v41, v198, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.h, v71.h
	v_mov_b16_e32 v44.h, v71.h
	v_mov_b16_e32 v46.h, v71.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v200, v138 offset:2048
	ds_load_u16_d16 v201, v138 offset:2304
	ds_load_u16_d16 v202, v138 offset:2560
	ds_load_u16_d16 v203, v138 offset:2816
	ds_load_u16_d16 v204, v138 offset:3072
	ds_load_u16_d16 v205, v138 offset:3328
	ds_load_u16_d16 v206, v138 offset:3584
	ds_load_u16_d16 v207, v138 offset:3840
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v200, v138 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v201, v138 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v202, v138 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v203, v138 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v204, v138 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v205, v138 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v206, v138 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v207, v138 offset:3968
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v197, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v42.h
	v_cmp_o_f32_e64 s1, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v71
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	v_permlanex16_b32 v43, v42, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v41, v43, v42, v136
	v_perm_b32 v42, v43, v42, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v196, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v193, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s60
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v44, v44
	v_and_b32_e32 v45, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v136
	v_perm_b32 v44, v45, v44, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v72, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v46.l, v45.h
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v45, v45, v46, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v70, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v46.h
	v_cmp_o_f32_e64 s0, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v71
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s0
	v_permlanex16_b32 v47, v46, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v136
	v_perm_b32 v46, v47, v46, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v67, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s61
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v48, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v65, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v50.l, v47.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v50, v47, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s0
	v_permlanex16_b32 v50, v48, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v47, v50, v48, v136
	v_perm_b32 v48, v50, v48, v137
	v_mov_b16_e32 v50.h, v71.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[200:207], v[41:48], v[33:40]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v41, v63, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.h, v71.h
	v_mov_b16_e32 v45.h, v71.h
	v_mov_b16_e32 v47.h, v71.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v200, v138 offset:4096
	ds_load_u16_d16 v201, v138 offset:4352
	ds_load_u16_d16 v202, v138 offset:4608
	ds_load_u16_d16 v203, v138 offset:4864
	ds_load_u16_d16 v204, v138 offset:5120
	ds_load_u16_d16 v205, v138 offset:5376
	ds_load_u16_d16 v206, v138 offset:5632
	ds_load_u16_d16 v207, v138 offset:5888
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v200, v138 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v201, v138 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v202, v138 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v203, v138 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v204, v138 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v205, v138 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v206, v138 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v207, v138 offset:6016
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v71
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v61, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s52
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v43, v41, v43, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v136
	v_perm_b32 v42, v43, v42, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v64, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v43.h
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v71
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v62, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s55
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v43, v43
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v43, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v136
	v_perm_b32 v44, v45, v44, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v45.h
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v71
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v58, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s51
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v136
	v_perm_b32 v46, v47, v46, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v57, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v47.h
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v71
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v56, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s49
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v47, v47
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v50, v47, v50, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v50, v48, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v50, v48, v136
	v_perm_b32 v48, v50, v48, v137
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[200:207], v[41:48], v[33:40]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v41, v55, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.h, v71.h
	v_mov_b16_e32 v45.h, v71.h
	v_mov_b16_e32 v47.h, v71.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s48
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_and_b32_e32 v42, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v54, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v41, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s0
	v_permlanex16_b32 v43, v42, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v41, v43, v42, v136
	v_perm_b32 v42, v43, v42, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v194, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s65
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v44, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v53, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.l, v43.h
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v43, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s0
	v_permlanex16_b32 v45, v44, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v136
	v_perm_b32 v44, v45, v44, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v195, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s66
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_and_b32_e32 v46, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v69, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s0
	v_permlanex16_b32 v47, v46, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v136
	v_perm_b32 v46, v47, v46, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v68, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s63
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v48, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v66, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v191
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.l, v47.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v71
	v_add3_u32 v50, v47, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s0
	v_permlanex16_b32 v50, v48, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v50, v48, v136
	v_perm_b32 v48, v50, v48, v137
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v138 offset:6144
	ds_load_u16_d16 v51, v138 offset:6400
	ds_load_u16_d16 v52, v138 offset:6656
	ds_load_u16_d16 v53, v138 offset:6912
	ds_load_u16_d16 v54, v138 offset:7168
	ds_load_u16_d16 v55, v138 offset:7424
	ds_load_u16_d16 v56, v138 offset:7680
	ds_load_u16_d16 v57, v138 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v138 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v138 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v138 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v138 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v138 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v138 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v138 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v138 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[50:57], v[41:48], v[33:40]
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v42, v191, v191 :: v_dual_mov_b32 v41, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v42, v42, v199
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v43, v191, v42
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v49, v41
	v_mov_b32_e32 v191, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp217:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v43, v43
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v41, v190, v43
	v_mov_b32_e32 v190, v41
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 657 32 is_stmt 1              ; attention.py:657:32
	v_readlane_b32 s10, v244, 12
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v208, s91 :: v_dual_add_nc_u32 v41, s7, v88
	v_mov_b32_e32 v204, s87
	v_mov_b32_e32 v202, s85
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s102, s7, s10
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s44, s95, v41
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s10, s102, s3
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v207, s90
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v43, s10, v89, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 2, v41
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v47, s10, v76, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s44
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v44, s10, v90, 1
	v_add_lshl_u32 v45, s10, v75, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s43, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 4, v41
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v46, s10, v91, 1
	v_add_lshl_u32 v48, s10, v77, 1
	v_add_lshl_u32 v49, s10, v78, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v205, s88
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s42, s95, v42
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v203, s86 :: v_dual_add_nc_u32 v42, 6, v41
	v_dual_mov_b32 v201, s84 :: v_dual_mov_b32 v206, s89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s41, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 8, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s40, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 10, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 12, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s29, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 14, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s0, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 16, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s30, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 18, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s31, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 20, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s33, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 22, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s34, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 24, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s35, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 26, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s36, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 28, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s37, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 30, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s1, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 32, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s26, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 34, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s27, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 36, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s24, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 38, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s25, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 40, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s22, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s23, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 44, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s21, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s14, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 48, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s20, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 50, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s18, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 52, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s19, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 54, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s16, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 56, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s17, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 58, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s15, s95, v42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v42, 60, v41
	v_add_nc_u32_e32 v41, 62, v41
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s95, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s28, s95, v41
	.loc	1 657 32                        ; attention.py:657:32
	v_add_nc_u32_e32 v41, s10, v74
	.loc	1 658 32                        ; attention.py:658:32
	v_readlane_b32 s10, v244, 13
	v_lshlrev_b32_e32 v42, 1, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v50, v41, s10, 1
	s_mul_i32 s10, s3, 18
	v_add_lshl_u32 v51, v41, s10, 1
	s_mul_i32 s10, s3, 20
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	v_add_lshl_u32 v52, v41, s10, 1
	s_mul_i32 s10, s3, 22
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s43
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v53, v41, s10, 1
	s_mul_i32 s10, s3, 24
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_add_lshl_u32 v54, v41, s10, 1
	s_mul_i32 s10, s3, 26
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s42
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v55, v41, s10, 1
	s_mul_i32 s10, s3, 28
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	v_add_lshl_u32 v56, v41, s10, 1
	s_mul_i32 s10, s3, 30
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s41
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v57, v41, s10, 1
	v_readlane_b32 s10, v244, 14
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s40
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	v_add_lshl_u32 v58, v41, s10, 1
	s_mul_i32 s10, s3, 34
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s39
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v59, v41, s10, 1
	s_mul_i32 s10, s3, 36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	v_add_lshl_u32 v60, v41, s10, 1
	s_mul_i32 s10, s3, 38
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s29
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v61, v41, s10, 1
	s_mul_i32 s10, s3, 40
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	v_add_lshl_u32 v62, v41, s10, 1
	s_mul_i32 s10, s3, 42
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s0
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v63, v41, s10, 1
	s_mul_i32 s10, s3, 44
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s30
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v64, v41, s10, 1
	s_mul_i32 s10, s3, 48
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s31
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, v41, s10, 1
	s_mul_i32 s10, s3, 56
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s33
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v66, v41, s10, 1
	s_mul_i32 s10, s3, 50
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s34
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v67, v41, s10, 1
	s_mul_i32 s10, s3, 58
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s35
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v68, v41, s10, 1
	s_mul_i32 s10, s3, 52
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s36
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v69, v41, s10, 1
	s_mul_i32 s10, s3, 60
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s37
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v70, v41, s10, 1
	s_mul_i32 s10, s3, 46
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v71, v41, s10, 1
	s_mul_i32 s10, s3, 54
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s26
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v72, v41, s10, 1
	s_mul_i32 s10, s3, 62
	s_clause 0x7
	buffer_load_u16 v42, v42, s[96:99], 0 offen
	buffer_load_u16 v43, v43, s[96:99], 0 offen
	buffer_load_u16 v44, v44, s[96:99], 0 offen
	buffer_load_u16 v45, v45, s[96:99], 0 offen
	buffer_load_u16 v46, v46, s[96:99], 0 offen
	buffer_load_u16 v47, v47, s[96:99], 0 offen
	buffer_load_u16 v48, v48, s[96:99], 0 offen
	buffer_load_u16 v49, v49, s[96:99], 0 offen
	v_add_lshl_u32 v41, v41, s10, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s27
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s10, v244, 1
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s24
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s25
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s22
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s23
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s20
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s17
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s18
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s15
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s19
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v65, v65, s[96:99], 0 offen
	buffer_load_u16 v66, v66, s[96:99], 0 offen
	buffer_load_u16 v67, v67, s[96:99], 0 offen
	buffer_load_u16 v68, v68, s[96:99], 0 offen
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s38
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v50, v50, s[96:99], 0 offen
	buffer_load_u16 v51, v51, s[96:99], 0 offen
	buffer_load_u16 v52, v52, s[96:99], 0 offen
	buffer_load_u16 v54, v54, s[96:99], 0 offen
	buffer_load_u16 v55, v55, s[96:99], 0 offen
	buffer_load_u16 v56, v56, s[96:99], 0 offen
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s14
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_u16 v69, v69, s[96:99], 0 offen
	buffer_load_u16 v70, v70, s[96:99], 0 offen
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s16
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s5, s28
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0xb
	buffer_load_u16 v58, v58, s[96:99], 0 offen
	buffer_load_u16 v59, v59, s[96:99], 0 offen
	buffer_load_u16 v60, v60, s[96:99], 0 offen
	buffer_load_u16 v62, v62, s[96:99], 0 offen
	buffer_load_u16 v63, v63, s[96:99], 0 offen
	buffer_load_u16 v64, v64, s[96:99], 0 offen
	buffer_load_u16 v57, v57, s[96:99], 0 offen
	buffer_load_u16 v53, v53, s[96:99], 0 offen
	buffer_load_u16 v71, v71, s[96:99], 0 offen
	buffer_load_u16 v61, v61, s[96:99], 0 offen
	buffer_load_u16 v41, v41, s[96:99], 0 offen
	buffer_load_u16 v72, v72, s[96:99], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v106
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v93, v42
	s_waitcnt vmcnt(27)
	ds_store_b16 v93, v46 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v93, v50 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v93, v54 offset:3072
	s_waitcnt vmcnt(11)
	ds_store_b16 v93, v58 offset:4096
	s_waitcnt vmcnt(8)
	ds_store_b16 v93, v62 offset:5120
	ds_store_b16 v93, v65 offset:6144
	ds_store_b16 v93, v66 offset:7168
	ds_store_b16 v95, v43
	ds_store_b16 v95, v47 offset:1024
	ds_store_b16 v95, v51 offset:2048
	ds_store_b16 v95, v55 offset:3072
	ds_store_b16 v95, v59 offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b16 v95, v63 offset:5120
	ds_store_b16 v95, v67 offset:6144
	ds_store_b16 v95, v68 offset:7168
	ds_store_b16 v96, v44
	ds_store_b16 v96, v48 offset:1024
	ds_store_b16 v96, v52 offset:2048
	ds_store_b16 v96, v56 offset:3072
	ds_store_b16 v96, v60 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v96, v64 offset:5120
	ds_store_b16 v96, v69 offset:6144
	ds_store_b16 v96, v70 offset:7168
	ds_store_b16 v97, v45
	ds_store_b16 v97, v49 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v53 offset:2048
	ds_store_b16 v97, v57 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v61 offset:4096
	ds_store_b16 v97, v71 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v72 offset:6144
	ds_store_b16 v97, v41 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v99
	ds_load_b128 v[49:52], v94
	ds_load_b128 v[57:60], v94 offset:2048
	ds_load_b128 v[61:64], v99 offset:2048
	ds_load_b128 v[69:72], v99 offset:4096
	ds_load_b128 v[65:68], v94 offset:4096
	ds_load_b128 v[193:196], v94 offset:6144
	ds_load_b128 v[197:200], v99 offset:6144
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[1:8], v[201:208]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[1:8], v[201:208]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[1:8], v[201:208]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[193:200], v[1:8], v[201:208]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v101
	ds_load_b128 v[193:196], v100
	ds_load_b128 v[201:204], v100 offset:2048
	ds_load_b128 v[205:208], v101 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[193:200], v[9:16], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[201:208], v[9:16], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v101 offset:4096
	ds_load_b128 v[193:196], v100 offset:4096
	ds_load_b128 v[201:204], v100 offset:6144
	ds_load_b128 v[205:208], v101 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[193:200], v[9:16], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[201:208], v[9:16], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v103
	ds_load_b128 v[193:196], v102
	ds_load_b128 v[201:204], v102 offset:2048
	ds_load_b128 v[205:208], v103 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[193:200], v[17:24], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[201:208], v[17:24], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v103 offset:4096
	ds_load_b128 v[193:196], v102 offset:4096
	ds_load_b128 v[201:204], v102 offset:6144
	ds_load_b128 v[205:208], v103 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[193:200], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[201:208], v[17:24], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v105
	ds_load_b128 v[193:196], v104
	ds_load_b128 v[201:204], v104 offset:2048
	ds_load_b128 v[205:208], v105 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[193:200], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[201:208], v[25:32], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[197:200], v105 offset:4096
	ds_load_b128 v[193:196], v104 offset:4096
	ds_load_b128 v[201:204], v104 offset:6144
	ds_load_b128 v[205:208], v105 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[193:200], v[25:32], v[57:64]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v193, s7, v73
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[201:208], v[25:32], v[65:72]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s45, s95, v193
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s67, s10, s45
	v_readlane_b32 s10, v244, 2
	s_and_b32 s64, s2, s45
	s_and_b32 s61, s6, s45
	s_and_b32 s62, s12, s45
	s_and_b32 s60, s13, s45
	s_and_b32 s66, s10, s45
	v_readlane_b32 s10, v244, 3
	s_and_b32 s65, s10, s45
	v_readlane_b32 s10, v244, 4
	s_and_b32 s63, s10, s45
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v193, v107
	v_cmp_le_i32_e64 s45, v193, v108
	v_cmp_le_i32_e64 s46, v193, v109
	v_cmp_le_i32_e64 s47, v193, v110
	v_cmp_le_i32_e64 s48, v193, v111
	v_cmp_le_i32_e64 s49, v193, v112
	v_cmp_le_i32_e64 s50, v193, v113
	v_cmp_le_i32_e64 s51, v193, v114
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s10, vcc_lo, s67
	s_and_b32 s11, s45, s66
	s_and_b32 s45, s46, s65
	s_and_b32 s46, s47, s63
	s_and_b32 s47, s48, s64
	s_and_b32 s48, s49, s61
	s_and_b32 s49, s50, s62
	s_and_b32 s50, s51, s60
	s_and_not1_b32 s51, s67, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s52, s66, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_or_b32 s67, s51, s10
	s_or_b32 s66, s52, s11
	s_and_not1_b32 s10, s65, exec_lo
	s_and_b32 s11, s45, exec_lo
	s_and_not1_b32 s45, s63, exec_lo
	s_and_b32 s46, s46, exec_lo
	s_or_b32 s65, s10, s11
	s_or_b32 s63, s45, s46
	s_and_not1_b32 s10, s64, exec_lo
	s_and_b32 s11, s47, exec_lo
	s_and_not1_b32 s45, s61, exec_lo
	s_and_b32 s46, s48, exec_lo
	s_or_b32 s64, s10, s11
	s_or_b32 s61, s45, s46
	s_and_not1_b32 s10, s62, exec_lo
	s_and_b32 s11, s49, exec_lo
	s_and_not1_b32 s45, s60, exec_lo
	s_and_b32 s46, s50, exec_lo
	s_or_b32 s62, s10, s11
	s_or_b32 s60, s45, s46
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s10, v244, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v193, v115
	v_cmp_ge_i32_e64 s45, v193, v116
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s52, v193, v123
	v_cmp_le_i32_e64 s53, v193, v124
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v193, v117
	v_cmp_ge_i32_e64 s47, v193, v118
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s54, v193, v125
	v_cmp_le_i32_e64 s55, v193, v126
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v193, v119
	v_cmp_ge_i32_e64 s49, v193, v120
	v_cmp_ge_i32_e64 s50, v193, v121
	v_cmp_ge_i32_e64 s51, v193, v122
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v193, v127
	v_cmp_le_i32_e64 s57, v193, v128
	v_cmp_le_i32_e64 s58, v193, v129
	v_cmp_le_i32_e64 s59, v193, v130
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s10, vcc_lo, s52
	s_and_b32 s11, s45, s53
	s_and_b32 s10, s10, s67
	s_and_b32 s11, s11, s66
	s_and_b32 s45, s46, s54
	s_and_b32 s46, s47, s55
	s_and_b32 s45, s45, s65
	s_and_b32 s46, s46, s63
	s_and_b32 s47, s48, s56
	s_and_b32 s48, s49, s57
	s_and_b32 s49, s50, s58
	s_and_b32 s50, s51, s59
	s_and_not1_b32 s51, s67, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s52, s66, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s47, s47, s64
	s_and_b32 s48, s48, s61
	s_or_b32 s67, s51, s10
	s_or_b32 s66, s52, s11
	s_and_not1_b32 s10, s65, exec_lo
	s_and_b32 s11, s45, exec_lo
	s_and_not1_b32 s45, s63, exec_lo
	s_and_b32 s46, s46, exec_lo
	s_and_b32 s49, s49, s62
	s_and_b32 s50, s50, s60
	s_or_b32 s65, s10, s11
	s_or_b32 s63, s45, s46
	s_and_not1_b32 s10, s64, exec_lo
	s_and_b32 s11, s47, exec_lo
	s_and_not1_b32 s45, s61, exec_lo
	s_and_b32 s46, s48, exec_lo
	s_or_b32 s64, s10, s11
	s_or_b32 s61, s45, s46
	s_and_not1_b32 s10, s62, exec_lo
	s_and_b32 s11, s49, exec_lo
	s_and_not1_b32 s45, s60, exec_lo
	s_and_b32 s46, s50, exec_lo
	s_or_b32 s62, s10, s11
	s_or_b32 s60, s45, s46
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v3, v40
	s_branch .LBB0_13
.LBB0_12:                               ; %._crit_edge.loopexit
.Ltmp218:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v42, v42
	v_readlane_b32 s0, v244, 5
	v_readlane_b32 s1, v244, 6
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, 0, v41
	v_readlane_b32 s26, v244, 11
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v2, 0xff800000, v1
	v_readlane_b32 s27, v244, 10
	v_readlane_b32 s28, v244, 9
	v_readlane_b32 s29, v244, 15
	s_mov_b64 s[24:25], s[0:1]
	v_readlane_b32 s2, v244, 7
	v_readlane_b32 s3, v244, 8
.Ltmp221:
.LBB0_13:                               ; %._crit_edge
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
.Ltmp222:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v4, 4, v98
	v_and_b32_e32 v1, 1, v0
.Ltmp223:
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e64 v2, 0xff800000, v2, s29
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e64 v3, 0, v3, s29
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v6, 0, v33, vcc_lo
	v_dual_cndmask_b32 v7, 0, v34 :: v_dual_add_nc_u32 v4, 0, v4
	v_cndmask_b32_e32 v8, 0, v35, vcc_lo
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v5, v1, 2, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v6
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_mov_b32 v11, v8
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v4, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v5
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v4, v3
.Ltmp232:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp233:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v6, v9
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_add_f32 v6, v8, v11 :: v_dual_mov_b32 v7, v3
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	ds_load_b32 v5, v5
.Ltmp237:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v37 :: v_dual_cndmask_b32 v14, 0, v38
.Ltmp238:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v9, v6
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v7, v6, v9
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v2
.Ltmp244:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s0, s27, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v9, v7
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp246:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v11, v5 :: v_dual_cndmask_b32 v12, 0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp248:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v6
.Ltmp249:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v39 :: v_dual_cndmask_b32 v16, 0, v40
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v6, v4, v8 :: v_dual_add_f32 v7, v7, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v4, v3
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v21, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v8, v6
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v14, v14, v19
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v16, v21
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v21, v16
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v15, v20
	v_dual_add_f32 v16, v16, v21 :: v_dual_mov_b32 v15, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp264:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp265:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp266:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v12, v14
	v_add_f32_e32 v12, v13, v15
	v_add_f32_e32 v15, v17, v19
	v_dual_add_f32 v17, v18, v20 :: v_dual_add_f32 v18, v16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp267:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v14 :: v_dual_mov_b32 v13, v12
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v21, v18
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp268:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s94, s94, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s0, s28, s0
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s0, s94
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v0, v10, v10 :: v_dual_add_f32 v11, v5, v11
	v_max_f32_e32 v2, v2, v2
.Ltmp270:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshl_b64 s[6:7], s[0:1], 2
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v2, v0
.Ltmp272:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v0, 0
	s_add_u32 s6, s24, s6
	s_addc_u32 s7, s25, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v0, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp273:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v7, v9 :: v_dual_and_b32 v0, 0xc0, v87
	v_add_f32_e32 v8, v6, v8
	v_dual_add_f32 v7, v3, v4 :: v_dual_and_b32 v2, 0xe0, v86
.Ltmp274:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 28, v86
	v_lshlrev_b32_e32 v1, 5, v1
	s_and_b32 vcc_lo, s29, s4
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v21, v18, v21 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_f32 v19, v15, v19
	v_add_f32_e32 v10, v14, v16
.Ltmp276:
	.loc	1 835 13                        ; attention.py:835:13
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v12, v13
.Ltmp278:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v0, v0, v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[7:10]
	ds_store_b128 v2, v[18:21] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s0, v73
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[24:27], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp279:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 245
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 245
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17160
; TotalNumSgprs: 107
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 245
; Occupancy: 5
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
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x9d:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp219                        ; DW_AT_low_pc
	.long	.Ltmp220-.Ltmp219               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 22
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
