	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s30, s[0:1], 0x68
	s_load_b128 s[96:99], s[0:1], 0x4c
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b32 s72, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v90, 6, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v81, 63, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v9, v0, 6, 1
	v_and_b32_e32 v94, 15, v0
	v_and_b32_e32 v34, 64, v0
                                        ; implicit-def: $vgpr164 : SGPR spill to VGPR lane
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 0x90, v9
	v_and_b32_e32 v10, 0x70, v10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s10, s3, s98
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[82:83], null, s72, v90, v[81:82]
	s_cselect_b32 s11, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s29, s30
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s29
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s30
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v10, v94, 7, v10
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[83:84], null, s72, 6, v[82:83]
	v_lshl_add_u32 v91, s72, 1, v82
	v_lshl_add_u32 v92, s72, 2, v82
	v_lshl_add_u32 v93, s72, 3, v82
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v13, 16, v10
	v_xor_b32_e32 v14, 32, v10
	v_xor_b32_e32 v15, 48, v10
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[84:85], null, s72, 10, v[82:83]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[85:86], null, s72, 12, v[82:83]
	v_mad_u64_u32 v[86:87], null, s72, 14, v[82:83]
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v16, 64, v10
	v_add_nc_u32_e32 v96, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s21, s4
	s_sub_i32 s4, 0, s29
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s4, s4, s21
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v100, 0, v13
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s4, s21, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v101, 0, v14
	.loc	1 609 32                        ; attention.py:609:32
	s_add_i32 s21, s21, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v102, 0, v15
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s5, s21
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v103, 0, v16
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_i32 s7, s4, s29
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v104, 0, v17
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s5, s29
	s_cmp_ge_u32 s5, s29
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v105, 0, v18
	.loc	1 559 27                        ; attention.py:559:27
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s29
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v106, 0, v10
	.loc	1 559 27                        ; attention.py:559:27
	s_cselect_b32 s4, s7, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s8, s96
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s9, s3
	s_cvt_f32_u32 s5, s8
	s_sub_i32 s7, 0, s8
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s4, s4, s6
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s4, s30
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s20, s4, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s28, s2, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s20, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, 4, v2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s98, v2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 6, v2
	v_or_b32_e32 v5, 8, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 10, v2
	v_or_b32_e32 v7, 12, v2
	v_or_b32_e32 v8, 14, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s5
	s_mul_hi_u32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	s_mul_hi_u32 s5, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s5, s8
	s_sub_i32 s2, s9, s4
	s_add_i32 s4, s5, 1
	s_sub_i32 s6, s2, s8
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s4, s4, s5
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s22, s5, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s9, s97
	s_xor_b32 s24, s96, s97
	s_cvt_f32_u32 s2, s9
	s_sub_i32 s4, 0, s9
	s_ashr_i32 s24, s24, 31
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s5, s72, v81
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_writelane_b32 v164, s5, 0
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, 2, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_u32_f32 s7, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s98, v1
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s6, s4, s7
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s98, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s23, s7, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s98, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s23, s7, s23
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s98, v5
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s23, s8, s23
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s25, s23, s9
	s_add_i32 s26, s23, 1
	s_sub_i32 s25, s8, s25
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s98, v6
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s27, s25, s9
	s_cmp_ge_u32 s25, s9
	s_cselect_b32 s23, s26, s23
	s_cselect_b32 s25, s27, s25
	s_add_i32 s26, s23, 1
	s_cmp_ge_u32 s25, s9
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s98, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s26, s23
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s25, s10, s20
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s25, s25, s72
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s98, v8
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, s25, v82, 1
	v_add_lshl_u32 v2, s25, v91, 1
	v_add_lshl_u32 v3, s25, v92, 1
	v_add_lshl_u32 v4, s25, v83, 1
	v_add_lshl_u32 v5, s25, v93, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s25, v84, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s25, v85, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s25, v86, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v11, 1, v81
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s9
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s2, s99, 63
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s4, s2, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s4, s4, 26
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, v9, v11
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s4, s2, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s23, s24
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s7, s4, 6
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s24
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s7, s7, s30
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s7, s7, -1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v95, 0, v9
	v_xor_b32_e32 v9, 0x360, v9
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s9, s7
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v97, 0, v11
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s10, s9, s21
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v98, 0, v12
	v_add_nc_u32_e32 v99, 0, v9
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s16, s10, s29
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s2, s6
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s7, s7, s30
	s_sub_i32 s9, s9, s16
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s8, s2
	.loc	1 606 14                        ; attention.py:606:14
	s_and_not1_b32 s4, s4, 63
	.loc	1 609 32                        ; attention.py:609:32
	s_ashr_i32 s7, s7, 31
	s_add_i32 s16, s10, 1
	s_sub_i32 s17, s9, s29
	s_cmp_ge_u32 s9, s29
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v33, s8
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s8, s16, s10
	s_cselect_b32 s9, s17, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s29
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v95, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v95, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v97, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v98, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v98, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v99, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v99, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v96
	ds_load_b128 v[5:8], v100
	ds_load_b128 v[9:12], v101
	ds_load_b128 v[13:16], v102
	ds_load_b128 v[17:20], v103
	ds_load_b128 v[21:24], v104
	ds_load_b128 v[25:28], v105
	ds_load_b128 v[29:32], v106
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s8, s10, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_cmp_eq_u32_e64 s10, 0, v34
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s7
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s7, v33
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s9, s28, s8
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s8, s8, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s94, s9, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s8, s94, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s74, s4, s8
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s14, s15
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s15, s13
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, s20
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s20
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s4, s99, s4
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s4, s4, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s94, s94, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s9, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s74, s74, s4
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s73, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v107, 0, 1, s11
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s15, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s99, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s8, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 26
	s_add_i32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s74, s74, s4
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[8:9], s[0:1], 0x40
	.loc	1 696 65 is_stmt 1              ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s73, v81
	v_lshlrev_b32_e32 v89, 1, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s94, s74
	v_writelane_b32 v164, s4, 1
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_writelane_b32 v164, s8, 2
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_ashr_i32 s6, s6, 31
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v33, s20, v94
                                        ; implicit-def: $vgpr163 : SGPR spill to VGPR lane
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v34, 4, v0
	v_writelane_b32 v164, s9, 3
	s_cvt_u32_f32 s7, s7
	s_mov_b32 s20, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v110, s15, v33
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v109, 62, v34
	v_writelane_b32 v164, s10, 4
	s_mov_b32 s21, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	v_writelane_b32 v164, s11, 5
	s_xor_b32 s8, s3, s96
	s_mov_b32 s26, s20
	s_ashr_i32 s8, s8, 31
	s_mov_b32 s27, s20
	s_xor_b32 s9, s22, s8
	v_writelane_b32 v164, s10, 6
	s_sub_i32 s8, s9, s8
	s_sub_i32 s9, 0, s2
	s_mul_i32 s10, s8, s96
	s_mul_i32 s9, s9, s7
	s_sub_i32 s10, s3, s10
	s_mul_hi_u32 s9, s7, s9
	s_abs_i32 s11, s10
	s_add_i32 s7, s7, s9
	s_clause 0x1
	s_load_b32 s9, s[0:1], 0x6c
	s_load_b128 s[16:19], s[0:1], 0x8
	s_mul_hi_u32 s7, s11, s7
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_ashr_i32 s10, s10, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s12, s7, s2
	v_writelane_b32 v164, s30, 7
	s_xor_b32 s6, s10, s6
	s_sub_i32 s10, s11, s12
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s10, s2
	s_cmp_ge_u32 s10, s2
	v_writelane_b32 v164, s28, 8
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s10, s2
	v_writelane_b32 v164, s3, 9
	s_cselect_b32 s0, s11, s7
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s8, s8, s97
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s0, s0, s6
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s9, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s0, s6
	s_mov_b32 s22, s20
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s0, s0, s8
	.loc	1 656 32 is_stmt 0              ; attention.py:656:32
	v_writelane_b32 v164, s1, 10
	s_mul_i32 s0, s0, s99
	s_lshl_b32 s1, s73, 1
	v_dual_mov_b32 v34, 0x5410 :: v_dual_lshlrev_b32 v35, 1, v94
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_writelane_b32 v164, s0, 11
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s98, v33
	v_and_b32_e32 v33, 16, v0
	v_and_b32_e32 v36, 0x60, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[87:88], null, s73, v90, v[81:82]
	s_delay_alu instid0(VALU_DEP_4)
	v_writelane_b32 v164, s0, 12
	s_mul_i32 s0, s72, 18
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_mov_b32_e32 v33, 0x7632
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v108, v0, 4, 1
	v_writelane_b32 v164, s0, 13
	s_mul_i32 s0, s72, 20
	v_cndmask_b32_e32 v34, 0x1054, v34, vcc_lo
	v_cndmask_b32_e32 v33, 0x3276, v33, vcc_lo
	v_subrev_nc_u32_e32 v111, s13, v110
	v_writelane_b32 v164, s0, 14
	s_mul_i32 s0, s72, 22
	v_mov_b32_e32 v48, s27
	v_lshl_or_b32 v33, v33, 8, v33
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_add_nc_u32 v112, s14, v110
	v_writelane_b32 v164, s0, 15
	s_mul_i32 s0, s72, 24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 0x760076, v33
	v_dual_mov_b32 v42, s21 :: v_dual_add_nc_u32 v115, 0, v89
	v_writelane_b32 v164, s0, 16
	s_mul_i32 s0, s72, 26
	v_lshl_or_b32 v33, v33, 4, v33
	v_dual_mov_b32 v46, s25 :: v_dual_mov_b32 v45, s24
	v_writelane_b32 v164, s0, 17
	s_mul_i32 s0, s72, 44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v44, s23 :: v_dual_and_b32 v113, 0x7060706, v33
	v_mov_b32_e32 v33, 0
	v_writelane_b32 v164, s0, 18
	s_mul_i32 s0, s72, 48
	v_lshl_or_b32 v34, v34, 8, v34
	v_mov_b32_e32 v47, s26
	v_add3_u32 v114, 0, v35, v36
	v_writelane_b32 v164, s0, 19
	s_mul_i32 s0, s72, 50
	v_dual_mov_b32 v43, s22 :: v_dual_and_b32 v34, 0x540054, v34
	v_mov_b32_e32 v41, s20
	v_writelane_b32 v164, s0, 20
	s_mul_i32 s0, s72, 52
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v34, v34, 4, v34
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_writelane_b32 v164, s0, 21
	s_mul_i32 s0, s72, 54
	v_and_b32_e32 v88, 0x5040504, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v37, v33
	v_writelane_b32 v164, s0, 22
	s_mul_i32 s0, s72, 56
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_writelane_b32 v164, s0, 23
	s_mul_i32 s0, s72, 58
	v_mov_b32_e32 v116, v33
	s_lshl_b32 s75, s72, 4
	s_mul_i32 s80, s72, 28
	v_writelane_b32 v164, s0, 24
	s_mul_i32 s0, s72, 60
	s_mul_i32 s81, s72, 30
	s_lshl_b32 s82, s72, 5
	s_mul_i32 s83, s72, 34
	v_writelane_b32 v164, s0, 25
	s_mul_i32 s0, s72, 62
	s_mul_i32 s84, s72, 36
	s_mul_i32 s85, s72, 38
	s_mul_i32 s91, s72, 40
	v_writelane_b32 v164, s0, 26
	s_mul_i32 s96, s72, 42
	s_mul_i32 s97, s72, 46
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	v_writelane_b32 v164, s1, 27
	s_lshl_b32 s1, s73, 2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s77, s19, 0xffff
	v_writelane_b32 v164, s1, 28
	s_mul_i32 s1, s73, 6
	s_mov_b32 s76, s18
                                        ; implicit-def: $vgpr162 : SGPR spill to VGPR lane
                                        ; implicit-def: $vgpr161 : SGPR spill to VGPR lane
	v_writelane_b32 v164, s1, 29
	s_lshl_b32 s1, s73, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v164, s1, 30
	s_mul_i32 s1, s73, 10
	v_writelane_b32 v164, s1, 31
	s_mul_i32 s1, s73, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 0
	s_mul_i32 s1, s73, 14
	v_writelane_b32 v163, s1, 1
	s_lshl_b32 s1, s73, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 2
	s_mul_i32 s1, s73, 18
	v_writelane_b32 v163, s1, 3
	s_mul_i32 s1, s73, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 4
	s_mul_i32 s1, s73, 22
	v_writelane_b32 v163, s1, 5
	s_mul_i32 s1, s73, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 6
	s_mul_i32 s1, s73, 26
	v_writelane_b32 v163, s1, 7
	s_mul_i32 s1, s73, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 8
	s_mul_i32 s1, s73, 30
	v_writelane_b32 v163, s1, 9
	s_lshl_b32 s1, s73, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 10
	s_mul_i32 s1, s73, 34
	v_writelane_b32 v163, s1, 11
	s_mul_i32 s1, s73, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 12
	s_mul_i32 s1, s73, 38
	v_writelane_b32 v163, s1, 13
	s_mul_i32 s1, s73, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 14
	s_mul_i32 s1, s73, 42
	v_writelane_b32 v163, s1, 15
	s_mul_i32 s1, s73, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 16
	s_mul_i32 s1, s73, 46
	v_writelane_b32 v163, s1, 17
	s_mul_i32 s1, s73, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 18
	s_mul_i32 s1, s73, 50
	v_writelane_b32 v163, s1, 19
	s_mul_i32 s1, s73, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 20
	s_mul_i32 s1, s73, 54
	v_writelane_b32 v163, s1, 21
	s_mul_i32 s1, s73, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 22
	s_mul_i32 s1, s73, 58
	v_writelane_b32 v163, s1, 23
	s_mul_i32 s1, s73, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v163, s1, 24
	s_mul_i32 s1, s73, 62
	v_writelane_b32 v163, s1, 25
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	v_readlane_b32 s1, v164, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_readlane_b32 s0, v162, 30
	s_mov_b32 s2, 0x76543210
	v_readlane_b32 s4, v164, 1
	s_mov_b32 s5, s11
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v57, s1, v57 :: v_dual_mul_f32 v58, s1, v58
	v_dual_mul_f32 v59, s1, v59 :: v_dual_mul_f32 v60, s1, v60
	v_dual_mul_f32 v61, s1, v61 :: v_dual_mul_f32 v62, s1, v62
	v_dual_mul_f32 v63, s1, v63 :: v_dual_mul_f32 v64, s1, v64
	v_dual_mul_f32 v65, s1, v65 :: v_dual_mul_f32 v66, s1, v66
	v_dual_mul_f32 v69, s1, v69 :: v_dual_mul_f32 v118, s1, v70
	v_dual_mul_f32 v119, s1, v71 :: v_dual_mul_f32 v120, s1, v72
	v_dual_mul_f32 v121, s1, v73 :: v_dual_mul_f32 v122, s1, v74
	v_dual_mul_f32 v123, s1, v75 :: v_dual_mul_f32 v124, s1, v76
	v_dual_mul_f32 v125, s1, v77 :: v_dual_mul_f32 v126, s1, v78
	v_dual_mul_f32 v127, s1, v79 :: v_dual_mul_f32 v128, s1, v80
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v58, s30
	v_cndmask_b32_e64 v79, 0xff800000, v59, s100
	v_cndmask_b32_e64 v78, 0xff800000, v60, s28
	v_cndmask_b32_e64 v76, 0xff800000, v61, s9
	v_cndmask_b32_e64 v77, 0xff800000, v62, s11
	v_cndmask_b32_e64 v75, 0xff800000, v63, s0
	v_cndmask_b32_e64 v74, 0xff800000, v64, s87
	v_cndmask_b32_e64 v71, 0xff800000, v65, s95
	v_cndmask_b32_e64 v70, 0xff800000, v66, s103
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v67, s1, v67 :: v_dual_mul_f32 v68, s1, v68
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v58, v80, v79, v78
	v_max3_f32 v59, v76, v77, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max3_f32 v60, v74, v71, v70
.Ltmp2:
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v49, s1, v49 :: v_dual_mul_f32 v50, s1, v50
	v_dual_mul_f32 v51, s1, v51 :: v_dual_mul_f32 v52, s1, v52
	v_dual_mul_f32 v53, s1, v53 :: v_dual_mul_f32 v54, s1, v54
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v58, v58, v59, v60
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v73, 0xff800000, v67, s93
	v_cndmask_b32_e64 v72, 0xff800000, v68, s101
	v_cndmask_b32_e64 v69, 0xff800000, v69, s88
	v_cndmask_b32_e64 v68, 0xff800000, v118, s92
	v_cndmask_b32_e64 v67, 0xff800000, v119, s86
	v_cndmask_b32_e64 v66, 0xff800000, v120, s3
	v_cndmask_b32_e64 v64, 0xff800000, v121, s18
	v_cndmask_b32_e64 v63, 0xff800000, v122, s17
	v_cndmask_b32_e64 v60, 0xff800000, v123, s15
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v55, s1, v55 :: v_dual_mul_f32 v56, s1, v56
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v59, v73, v72, v69
	v_max3_f32 v61, v68, v67, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v62, v64, v63, v60
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v49, s37
	v_cndmask_b32_e64 v50, 0xff800000, v50, s70
	v_cndmask_b32_e64 v52, 0xff800000, v52, s35
	v_cndmask_b32_e64 v53, 0xff800000, v53, s78
	v_cndmask_b32_e64 v54, 0xff800000, v54, s34
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v118, v59, v61, v62
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v51, 0xff800000, v51, s36
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v49, v50
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s33
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v61, v52, v53, v54
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s102
	v_cndmask_b32_e64 v120, 0xff800000, v57, s31
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s1, v164, 27
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v124, s14
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v59, v59, v51, v61
.Ltmp14:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v125, s13
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v57, v55, v56, v120
.Ltmp16:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v126, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.h, 0
	s_mov_b32 s16, s9
	v_readlane_b32 s8, v162, 26
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v57, v59, v57, v58
.Ltmp18:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v59, 0xff800000, v128, vcc_hi
	v_mad_u64_u32 v[128:129], null, s98, s73, v[87:88]
	v_cndmask_b32_e64 v58, 0xff800000, v127, s104
	v_readlane_b32 s10, v162, 28
	v_readlane_b32 s11, v162, 29
	v_readlane_b32 s9, v162, 27
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s94, s94, 64
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v58, v59
.Ltmp20:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v130, v128, s1, 1
	v_readlane_b32 s1, v164, 28
	s_mov_b32 s79, s11
	v_add_lshl_u32 v131, v128, s1, 1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v119, v65, v61
.Ltmp22:
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s1, v164, 29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v119, v119, v62, v121
.Ltmp24:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v132, v128, s1, 1
	v_readlane_b32 s1, v164, 30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v57, v57, v118, v119
.Ltmp26:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v133, v128, s1, 1
	v_readlane_b32 s1, v164, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v118, v57, s2, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v134, v128, s1, 1
	v_readlane_b32 s1, v163, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v57, v117, v57, v118
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v135, v128, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v50, v57
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s1, v163, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v49, v57
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v160, v117, v57
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v136, v128, s1, 1
	v_readlane_b32 s1, v163, 2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v160, v160
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v137, v128, s1, 1
	v_readlane_b32 s1, v163, 3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v50, s70
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v138, v128, s1, 1
	v_readlane_b32 s1, v163, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.l, v118.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v119, 0, v49, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v139, v128, s1, 1
	v_readlane_b32 s1, v163, 5
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v123
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v140, v128, s1, 1
	v_readlane_b32 s1, v163, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v118, v49, 0x7fff
	v_mov_b16_e32 v49.l, v119.h
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v141, v128, s1, 1
	v_readlane_b32 s1, v163, 7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v123.h
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v142, v128, s1, 1
	v_readlane_b32 s1, v163, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v49
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v143, v128, s1, 1
	v_readlane_b32 s1, v163, 9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v119, v49, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v144, v128, s1, 1
	v_readlane_b32 s1, v163, 10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.l, 0x7fff, v49.h, vcc_lo
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v52, v57
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v145, v128, s1, 1
	v_readlane_b32 s1, v163, 11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v146, v128, s1, 1
	v_readlane_b32 s1, v163, 12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_lshl_u32 v147, v128, s1, 1
	v_readlane_b32 s1, v163, 13
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v49, s35
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v49, v51, v57
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v148, v128, s1, 1
	v_readlane_b32 s1, v163, 14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.l, v121.h
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v149, v128, s1, 1
	v_readlane_b32 s1, v163, 15
	v_add_lshl_u32 v150, v128, s1, 1
	v_readlane_b32 s1, v163, 16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v122, 0, v49, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v123
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s36, 0xff800000, v117
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v151, v128, s1, 1
	v_readlane_b32 s1, v163, 17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v121, v49, 0x7fff
	v_mov_b16_e32 v49.l, v122.h
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v152, v128, s1, 1
	v_readlane_b32 s1, v163, 18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v123.h
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v153, v128, s1, 1
	v_readlane_b32 s1, v163, 19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v49
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v154, v128, s1, 1
	v_readlane_b32 s1, v163, 20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v122, v49, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v155, v128, s1, 1
	v_readlane_b32 s1, v163, 21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.l, 0x7fff, v49.h, vcc_lo
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v54, v57
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v156, v128, s1, 1
	v_readlane_b32 s1, v163, 22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v157, v128, s1, 1
	v_readlane_b32 s1, v163, 23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_lshl_u32 v158, v128, s1, 1
	v_readlane_b32 s1, v163, 24
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v124, 0, v49, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v159, v128, s1, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v53, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.l, v124.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	v_permlanex16_b32 v53, v52, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s1, v163, 25
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v125, 0, v49, s78
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v49, 1, v123
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s78, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v124, v49, 0x7fff
	v_mov_b16_e32 v49.l, v125.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v54.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v123.h
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v125, v49, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v49.h, vcc_lo
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v126, 0, v49, s102
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v55, v57
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v55, v54, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v123.l, v126.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v126, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v127, 0, v49, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v126, v49, 0x7fff
	v_mov_b16_e32 v49.l, v127.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v56.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v123.h
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v127, v49, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v49.h, vcc_lo
	v_perm_b32 v49, v51, v50, v88
	v_perm_b32 v50, v51, v50, v113
	v_perm_b32 v51, v53, v52, v88
	v_perm_b32 v52, v53, v52, v113
	v_permlanex16_b32 v129, v56, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v55, v54, v88
	v_perm_b32 v54, v55, v54, v113
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v55, v129, v56, v88
	v_perm_b32 v56, v129, v56, v113
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v129, 1, v128
	v_add_lshl_u32 v128, v128, s1, 1
	.loc	1 696 26                        ; attention.py:696:26
	v_readlane_b32 s1, v163, 26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v163, 27
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v163, 28
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v117, 0x80000000, v130, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v163, 29
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v130, 0x80000000, v131, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v163, 30
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v131, 0x80000000, v132, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v163, 31
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v132, 0x80000000, v133, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v133, 0x80000000, v134, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v134, 0x80000000, v135, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v135, 0x80000000, v136, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v136, 0x80000000, v137, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 4
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v137, 0x80000000, v138, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 5
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v138, 0x80000000, v139, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 6
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v139, 0x80000000, v140, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 7
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v140, 0x80000000, v141, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v141, 0x80000000, v142, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 9
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v142, 0x80000000, v143, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 10
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v143, 0x80000000, v144, vcc_lo
	s_clause 0x7
	buffer_load_u16 v136, v136, s[76:79], 0 offen
	buffer_load_u16 v137, v137, s[76:79], 0 offen
	buffer_load_u16 v138, v138, s[76:79], 0 offen
	buffer_load_u16 v139, v139, s[76:79], 0 offen
	buffer_load_u16 v140, v140, s[76:79], 0 offen
	buffer_load_u16 v141, v141, s[76:79], 0 offen
	buffer_load_u16 v142, v142, s[76:79], 0 offen
	buffer_load_u16 v143, v143, s[76:79], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 11
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v144, 0x80000000, v145, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 12
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v145, 0x80000000, v146, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 13
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v146, 0x80000000, v147, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 14
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v147, 0x80000000, v148, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 15
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v148, 0x80000000, v149, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v149, 0x80000000, v150, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 23
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v150, 0x80000000, v151, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v151, 0x80000000, v152, vcc_lo
	s_clause 0x7
	buffer_load_u16 v144, v144, s[76:79], 0 offen
	buffer_load_u16 v145, v145, s[76:79], 0 offen
	buffer_load_u16 v146, v146, s[76:79], 0 offen
	buffer_load_u16 v147, v147, s[76:79], 0 offen
	buffer_load_u16 v148, v148, s[76:79], 0 offen
	buffer_load_u16 v149, v149, s[76:79], 0 offen
	buffer_load_u16 v150, v150, s[76:79], 0 offen
	buffer_load_u16 v151, v151, s[76:79], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 18
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v152, 0x80000000, v153, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 21
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v153, 0x80000000, v154, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 24
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v154, 0x80000000, v155, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 19
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v155, 0x80000000, v156, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 20
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v156, 0x80000000, v157, vcc_lo
	s_clause 0x7
	buffer_load_u16 v129, v129, s[76:79], 0 offen
	buffer_load_u16 v117, v117, s[76:79], 0 offen
	buffer_load_u16 v130, v130, s[76:79], 0 offen
	buffer_load_u16 v131, v131, s[76:79], 0 offen
	buffer_load_u16 v132, v132, s[76:79], 0 offen
	buffer_load_u16 v133, v133, s[76:79], 0 offen
	buffer_load_u16 v134, v134, s[76:79], 0 offen
	buffer_load_u16 v135, v135, s[76:79], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 22
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v157, 0x80000000, v158, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	v_readlane_b32 s1, v162, 25
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v158, 0x80000000, v159, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s4, s1
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s94, s74
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	s_clause 0x7
	buffer_load_u16 v152, v152, s[76:79], 0 offen
	buffer_load_u16 v153, v153, s[76:79], 0 offen
	buffer_load_u16 v154, v154, s[76:79], 0 offen
	buffer_load_u16 v155, v155, s[76:79], 0 offen
	buffer_load_u16 v156, v156, s[76:79], 0 offen
	buffer_load_u16 v157, v157, s[76:79], 0 offen
	buffer_load_u16 v158, v158, s[76:79], 0 offen
	buffer_load_u16 v128, v128, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v115, v129
	s_waitcnt vmcnt(14)
	ds_store_b16 v115, v117 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b16 v115, v130 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b16 v115, v131 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b16 v115, v132 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v115, v133 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b16 v115, v134 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b16 v115, v135 offset:1792
	ds_store_b16 v115, v136 offset:2048
	ds_store_b16 v115, v137 offset:2304
	ds_store_b16 v115, v138 offset:2560
	ds_store_b16 v115, v139 offset:2816
	ds_store_b16 v115, v140 offset:3072
	ds_store_b16 v115, v141 offset:3328
	ds_store_b16 v115, v142 offset:3584
	ds_store_b16 v115, v143 offset:3840
	ds_store_b16 v115, v144 offset:4096
	ds_store_b16 v115, v145 offset:4352
	ds_store_b16 v115, v146 offset:4608
	ds_store_b16 v115, v147 offset:4864
	ds_store_b16 v115, v148 offset:5120
	ds_store_b16 v115, v149 offset:5376
	ds_store_b16 v115, v150 offset:5632
	ds_store_b16 v115, v151 offset:5888
	s_waitcnt vmcnt(7)
	ds_store_b16 v115, v152 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v115, v153 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b16 v115, v154 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v115, v155 offset:6912
	s_waitcnt vmcnt(3)
	ds_store_b16 v115, v156 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b16 v115, v157 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b16 v115, v158 offset:7680
	s_waitcnt vmcnt(0)
	ds_store_b16 v115, v128 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v128, v114
	ds_load_u16_d16 v129, v114 offset:256
	ds_load_u16_d16 v130, v114 offset:512
	ds_load_u16_d16 v131, v114 offset:768
	ds_load_u16_d16 v132, v114 offset:1024
	ds_load_u16_d16 v133, v114 offset:1280
	ds_load_u16_d16 v134, v114 offset:1536
	ds_load_u16_d16 v135, v114 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v128, v114 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v129, v114 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v130, v114 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v131, v114 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v132, v114 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v133, v114 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v114 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v135, v114 offset:1920
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v117, 0, v160, s36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v33, v33, v117
	v_mul_f32_e32 v34, v34, v117
	v_mul_f32_e32 v35, v35, v117
	v_mul_f32_e32 v36, v36, v117
	v_mul_f32_e32 v37, v37, v117
	v_mul_f32_e32 v38, v38, v117
	v_mul_f32_e32 v39, v39, v117
	v_mul_f32_e32 v40, v40, v117
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[128:135], v[49:56], v[33:40]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v120, v57
	v_sub_f32_e32 v50, v80, v57
	v_sub_f32_e32 v52, v78, v57
	v_sub_f32_e32 v54, v77, v57
	v_sub_f32_e32 v56, v74, v57
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v56, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v49, s31
	v_cndmask_b32_e64 v120, 0, v50, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v49.h, v123.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v54, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v49.l, v80.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v123.l, v120.h
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	v_cmp_o_f32_e64 s1, v80, v80
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v50, 1, v123
	v_add3_u32 v49, v80, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v50, v120, v50, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v49, v51, v50, v88
	v_perm_b32 v50, v51, v50, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v79, v57
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v52, s28
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v123.l, v79.h
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v52, 1, v123
	v_mov_b16_e32 v123.l, v77.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v51, s100
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.h, v123.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v52, v79, v52, 0x7fff
	v_and_b32_e32 v54, 1, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v51.l, v78.h
	v_cmp_o_f32_e64 s1, v78, v78
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v77, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_and_b32_e32 v51, 1, v51
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v78, v51, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v53, v52, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v53, v52, v88
	v_perm_b32 v52, v53, v52, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v76, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v53, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v53.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v53.l, v76.h
	v_cmp_o_f32_e64 s1, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v76, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s1
	v_permlanex16_b32 v55, v54, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v53, v55, v54, v88
	v_perm_b32 v54, v55, v54, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v75, v57
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v56, s87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v123.l, v75.h
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v56, 1, v123
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v55, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v55.h, v123.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v56, v75, v56, 0x7fff
	v_mov_b16_e32 v55.l, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v55, v74, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v56.l, 0x7fff, v55.h, s1
	v_permlanex16_b32 v128, v56, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v55, v128, v56, v88
	v_perm_b32 v56, v128, v56, v113
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v128, v114 offset:2048
	ds_load_u16_d16 v129, v114 offset:2304
	ds_load_u16_d16 v130, v114 offset:2560
	ds_load_u16_d16 v131, v114 offset:2816
	ds_load_u16_d16 v132, v114 offset:3072
	ds_load_u16_d16 v133, v114 offset:3328
	ds_load_u16_d16 v134, v114 offset:3584
	ds_load_u16_d16 v135, v114 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v128, v114 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v129, v114 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v130, v114 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v131, v114 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v132, v114 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v133, v114 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v114 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v135, v114 offset:3968
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[128:135], v[49:56], v[33:40]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v71, v57
	v_sub_f32_e32 v50, v70, v57
	v_sub_f32_e32 v52, v72, v57
	v_sub_f32_e32 v54, v68, v57
	v_sub_f32_e32 v56, v66, v57
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v56, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v49, s95
	v_cndmask_b32_e64 v129, 0, v50, s103
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v49.h, v123.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v131, 0, v52, s101
	v_cndmask_b32_e64 v133, 0, v54, s92
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v49.l, v128.h
	v_mov_b16_e64 v123.l, v129.h
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_cmp_o_f32_e64 s1, v128, v128
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v56, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v49
	v_and_b32_e32 v50, 1, v123
	v_mov_b16_e64 v123.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v128, v49, 0x7fff
	v_add3_u32 v50, v129, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v52, 1, v123
	v_mov_b16_e64 v123.l, v133.h
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_add3_u32 v52, v131, v52, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_and_b32_e32 v54, 1, v123
	v_mov_b16_e64 v123.l, v135.h
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v54, v133, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_perm_b32 v49, v51, v50, v88
	v_perm_b32 v50, v51, v50, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v51, v73, v57 :: v_dual_and_b32 v56, 1, v123
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v56, v135, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v130, 0, v51, s93
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v51.l, v130.h
	v_cmp_o_f32_e64 s1, v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v130, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s1
	v_permlanex16_b32 v53, v52, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v51, v53, v52, v88
	v_perm_b32 v52, v53, v52, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v69, v57
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v132, 0, v53, s88
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v53.h, v123.h
	v_mov_b16_e64 v53.l, v132.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v132, v132
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v53, v132, v53, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v55, v54, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v55, v54, v88
	v_perm_b32 v54, v55, v54, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v67, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v55, s86
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v55.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v55.l, v134.h
	v_cmp_o_f32_e64 s1, v134, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v55, v134, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v56.l, 0x7fff, v55.h, s1
	v_permlanex16_b32 v66, v56, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v55, v66, v56, v88
	v_perm_b32 v56, v66, v56, v113
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v66, v114 offset:4096
	ds_load_u16_d16 v67, v114 offset:4352
	ds_load_u16_d16 v68, v114 offset:4608
	ds_load_u16_d16 v69, v114 offset:4864
	ds_load_u16_d16 v70, v114 offset:5120
	ds_load_u16_d16 v71, v114 offset:5376
	ds_load_u16_d16 v72, v114 offset:5632
	ds_load_u16_d16 v73, v114 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v66, v114 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v67, v114 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v68, v114 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v69, v114 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v70, v114 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v71, v114 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v114 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v114 offset:6016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[66:73], v[49:56], v[33:40]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v64, v57
	v_sub_f32_e32 v50, v63, v57
	v_sub_f32_e32 v52, v65, v57
	v_sub_f32_e32 v54, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v54, v54
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v49, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v67, 0, v50, s17
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v49.h, v123.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v52, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v54, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v49.l, v66.h
	v_mov_b16_e32 v123.l, v67.h
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s1, v66, v66
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v50, 1, v123
	v_mov_b16_e32 v123.l, v69.h
	v_add3_u32 v49, v66, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v50, v67, v50, 0x7fff
	v_and_b32_e32 v52, 1, v123
	v_mov_b16_e32 v123.l, v71.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s1
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v52, v69, v52, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v54, 1, v123
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v54, v71, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v49, v51, v50, v88
	v_perm_b32 v50, v51, v50, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v60, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v51, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v51.h, v123.h
	v_mov_b16_e32 v51.l, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v68, v68
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v68, v51, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v53, v52, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v53, v52, v88
	v_perm_b32 v52, v53, v52, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v61, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v53, s13
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v53.h, v123.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v53.l, v70.h
	v_cmp_o_f32_e64 s1, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v70, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s1
	v_permlanex16_b32 v55, v54, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v53, v55, v54, v88
	v_perm_b32 v54, v55, v54, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v58, v57
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v55, s104
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v55.h, v123.h
	v_mov_b16_e32 v55.l, v72.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v56, v59, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v72, v72
	v_and_b32_e32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v56
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v55, v72, v55, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v56, vcc_hi
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v123.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v56, 1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v56, v73, v56, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v55.h, s1
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v58, v56, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v58, v56, v88
	v_perm_b32 v56, v58, v56, v113
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v58, v114 offset:6144
	ds_load_u16_d16 v59, v114 offset:6400
	ds_load_u16_d16 v60, v114 offset:6656
	ds_load_u16_d16 v61, v114 offset:6912
	ds_load_u16_d16 v62, v114 offset:7168
	ds_load_u16_d16 v63, v114 offset:7424
	ds_load_u16_d16 v64, v114 offset:7680
	ds_load_u16_d16 v65, v114 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v114 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v114 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v114 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v114 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v62, v114 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v63, v114 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v64, v114 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v65, v114 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[58:65], v[49:56], v[33:40]
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v49, v119, v118 :: v_dual_add_f32 v50, v122, v121
	v_dual_add_f32 v51, v125, v124 :: v_dual_add_f32 v52, v127, v126
	v_dual_add_f32 v53, v80, v120 :: v_dual_add_f32 v54, v78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v49, v49, v50
	v_dual_add_f32 v55, v130, v131 :: v_dual_add_f32 v62, v72, v73
	v_dual_add_f32 v50, v51, v52 :: v_dual_add_f32 v51, v53, v54
	v_add_f32_e32 v56, v132, v133
	v_dual_add_f32 v52, v76, v77 :: v_dual_add_f32 v53, v74, v75
	v_add_f32_e32 v60, v68, v69
	v_add_f32_e32 v54, v128, v129
	v_add_f32_e32 v58, v134, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v59, v66, v67 :: v_dual_add_f32 v52, v52, v53
	v_add_f32_e32 v61, v70, v71
	v_dual_add_f32 v53, v54, v55 :: v_dual_add_f32 v54, v56, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v55, v59, v60
	v_add_f32_e32 v49, v49, v50
	v_add_f32_e32 v56, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v50, v51, v52 :: v_dual_add_f32 v51, v53, v54
	v_dual_add_f32 v52, v55, v56 :: v_dual_add_f32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v50, v51, v52
	v_add_f32_e32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v50, v49, s2, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v49, v116, v117
	v_mov_b32_e32 v117, v57
	v_mov_b32_e32 v116, v49
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	v_readlane_b32 s0, v164, 11
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v49, s94, v90
	v_readlane_b32 s4, v164, 0
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s98, s94, s0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s43, s99, v49
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s1, s98, s72
	.loc	1 658 32                        ; attention.py:658:32
	v_readlane_b32 s0, v164, 13
	v_add_lshl_u32 v51, s1, v91, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 2, v49
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v55, s1, v84, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s43
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v52, s1, v92, 1
	v_add_lshl_u32 v53, s1, v83, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s42, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 4, v49
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v54, s1, v93, 1
	v_add_lshl_u32 v56, s1, v85, 1
	v_add_lshl_u32 v57, s1, v86, 1
	v_writelane_b32 v163, s43, 26
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s25, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 6, v49
	v_writelane_b32 v163, s42, 27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s26, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 8, v49
	v_writelane_b32 v163, s25, 28
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s28, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 10, v49
	v_writelane_b32 v163, s26, 29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s36, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 12, v49
	v_writelane_b32 v163, s28, 30
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s37, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 14, v49
	v_writelane_b32 v163, s36, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_writelane_b32 v162, s37, 0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 16, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s39, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 18, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s38, 2
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s27, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 20, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s27, 3
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s29, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 22, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s29, 4
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s30, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 24, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s30, 5
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s31, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 26, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s31, 6
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s33, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 28, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s33, 7
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s34, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 30, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s34, 8
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s35, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 32, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s35, 9
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s17, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 34, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s17, 10
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s18, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 36, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s18, 11
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s19, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 38, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s19, 12
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s20, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 40, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s20, 13
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s21, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 42, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s21, 14
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s22, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 44, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s22, 15
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s23, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 46, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v162, s23, 16
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s24, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s2, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 50, v49
	v_writelane_b32 v162, s2, 17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s12, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 52, v49
	v_writelane_b32 v162, s12, 18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s13, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 54, v49
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s14, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 56, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s15, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 58, v49
	v_writelane_b32 v162, s15, 19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s16, s99, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v50, 60, v49
	v_add_nc_u32_e32 v49, 62, v49
	v_writelane_b32 v162, s16, 20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s40, s99, v50
	v_cmp_gt_i32_e64 s41, s99, v49
	.loc	1 657 32                        ; attention.py:657:32
	v_add_nc_u32_e32 v49, s1, v82
	v_writelane_b32 v162, s13, 21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v59, v49, s0, 1
	v_readlane_b32 s0, v164, 14
	v_lshlrev_b32_e32 v50, 1, v49
	v_add_lshl_u32 v58, v49, s75, 1
	v_add_lshl_u32 v65, v49, s81, 1
	v_add_lshl_u32 v69, v49, s85, 1
	v_add_lshl_u32 v60, v49, s0, 1
	v_readlane_b32 s0, v164, 15
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s42
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v64, v49, s80, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	v_add_lshl_u32 v61, v49, s0, 1
	v_readlane_b32 s0, v164, 16
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s25
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v66, v49, s82, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s26
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v62, v49, s0, 1
	v_readlane_b32 s0, v164, 17
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s28
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v67, v49, s83, 1
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	v_add_lshl_u32 v63, v49, s0, 1
	v_readlane_b32 s0, v164, 18
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s36
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v68, v49, s84, 1
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s37
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v72, v49, s0, 1
	v_readlane_b32 s0, v164, 19
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s39
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v70, v49, s91, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_add_lshl_u32 v73, v49, s0, 1
	v_readlane_b32 s0, v164, 20
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s38
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v71, v49, s96, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s27
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v74, v49, s0, 1
	v_readlane_b32 s0, v164, 23
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s29
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v79, v49, s97, 1
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	v_add_lshl_u32 v75, v49, s0, 1
	v_readlane_b32 s0, v164, 24
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s30
	v_writelane_b32 v162, s40, 22
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s31
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v76, v49, s0, 1
	v_readlane_b32 s0, v164, 21
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s33
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x7
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v51, v51, s[8:11], 0 offen
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v54, v54, s[8:11], 0 offen
	buffer_load_u16 v55, v55, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_add_lshl_u32 v77, v49, s0, 1
	v_readlane_b32 s0, v164, 25
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s34
	v_writelane_b32 v162, s24, 23
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s35
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v78, v49, s0, 1
	v_readlane_b32 s0, v164, 22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s17
	v_writelane_b32 v162, s14, 24
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v80, v49, s0, 1
	v_readlane_b32 s0, v164, 26
	v_writelane_b32 v162, s41, 25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v49, v49, s0, 1
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s18
	v_readlane_b32 s0, v164, 12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s20
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s22
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s2
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s15
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s40
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v58, v58, s[8:11], 0 offen
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	buffer_load_u16 v64, v64, s[8:11], 0 offen
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s24
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	buffer_load_u16 v78, v78, s[8:11], 0 offen
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s4, s41
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0xa
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	buffer_load_u16 v68, v68, s[8:11], 0 offen
	buffer_load_u16 v70, v70, s[8:11], 0 offen
	buffer_load_u16 v71, v71, s[8:11], 0 offen
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	buffer_load_u16 v79, v79, s[8:11], 0 offen
	buffer_load_u16 v69, v69, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	v_writelane_b32 v162, s8, 26
	buffer_load_u16 v80, v80, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v107
	v_writelane_b32 v162, s9, 27
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v95, v50
	s_waitcnt vmcnt(27)
	ds_store_b16 v95, v54 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v95, v58 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v95, v62 offset:3072
	s_waitcnt vmcnt(11)
	ds_store_b16 v95, v66 offset:4096
	s_waitcnt vmcnt(8)
	ds_store_b16 v95, v70 offset:5120
	ds_store_b16 v95, v73 offset:6144
	ds_store_b16 v95, v75 offset:7168
	ds_store_b16 v97, v51
	ds_store_b16 v97, v55 offset:1024
	ds_store_b16 v97, v59 offset:2048
	ds_store_b16 v97, v63 offset:3072
	ds_store_b16 v97, v67 offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b16 v97, v71 offset:5120
	ds_store_b16 v97, v74 offset:6144
	ds_store_b16 v97, v76 offset:7168
	ds_store_b16 v98, v52
	ds_store_b16 v98, v56 offset:1024
	ds_store_b16 v98, v60 offset:2048
	ds_store_b16 v98, v64 offset:3072
	ds_store_b16 v98, v68 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v98, v72 offset:5120
	ds_store_b16 v98, v77 offset:6144
	ds_store_b16 v98, v78 offset:7168
	ds_store_b16 v99, v53
	ds_store_b16 v99, v57 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v99, v61 offset:2048
	ds_store_b16 v99, v65 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v99, v69 offset:4096
	ds_store_b16 v99, v79 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v99, v80 offset:6144
	ds_store_b16 v99, v49 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v96
	ds_load_b128 v[61:64], v100
	ds_load_b128 v[65:68], v101
	ds_load_b128 v[69:72], v102
	ds_load_b128 v[73:76], v96 offset:2048
	ds_load_b128 v[77:80], v100 offset:2048
	ds_load_b128 v[118:121], v101 offset:2048
	ds_load_b128 v[122:125], v102 offset:2048
	v_writelane_b32 v162, s10, 28
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	v_writelane_b32 v162, s11, 29
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[1:8], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[1:8], v[41:48]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[65:72], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[118:125], v[9:16], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[73:76], v96 offset:4096
	ds_load_b128 v[77:80], v100 offset:4096
	ds_load_b128 v[118:121], v101 offset:4096
	ds_load_b128 v[122:125], v102 offset:4096
	ds_load_b128 v[126:129], v96 offset:6144
	ds_load_b128 v[130:133], v100 offset:6144
	ds_load_b128 v[134:137], v101 offset:6144
	ds_load_b128 v[138:141], v102 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[1:8], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[126:133], v[1:8], v[41:48]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[118:125], v[9:16], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[122:125], v104
	ds_load_b128 v[118:121], v103
	ds_load_b128 v[126:129], v103 offset:2048
	ds_load_b128 v[130:133], v104 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[134:141], v[9:16], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[118:125], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[126:133], v[17:24], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[122:125], v104 offset:4096
	ds_load_b128 v[118:121], v103 offset:4096
	ds_load_b128 v[126:129], v103 offset:6144
	ds_load_b128 v[130:133], v104 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[118:125], v[17:24], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[126:133], v[17:24], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[122:125], v106
	ds_load_b128 v[118:121], v105
	ds_load_b128 v[126:129], v105 offset:2048
	ds_load_b128 v[130:133], v106 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[118:125], v[25:32], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[126:133], v[25:32], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[122:125], v106 offset:4096
	ds_load_b128 v[118:121], v105 offset:4096
	ds_load_b128 v[126:129], v105 offset:6144
	ds_load_b128 v[130:133], v106 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[118:125], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[126:133], v[25:32], v[73:80]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v133, s94, v108
	v_add_nc_u32_e32 v131, s94, v109
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v133
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v122, 44, v133
	v_add_nc_u32_e32 v130, 58, v133
	v_add_nc_u32_e32 v132, 60, v133
	v_add_nc_u32_e32 v141, 2, v133
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s37, s0, s38
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v122
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v134, 6, v133
	v_add_nc_u32_e32 v143, 4, v133
	v_add_nc_u32_e32 v135, 10, v133
	v_add_nc_u32_e32 v144, 8, v133
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s86, s0, s38
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v130
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v136, 14, v133
	v_add_nc_u32_e32 v145, 12, v133
	v_add_nc_u32_e32 v137, 18, v133
	v_add_nc_u32_e32 v146, 16, v133
	v_add_nc_u32_e32 v138, 22, v133
	v_add_nc_u32_e32 v147, 20, v133
	v_add_nc_u32_e32 v139, 26, v133
	v_add_nc_u32_e32 v148, 24, v133
	v_add_nc_u32_e32 v140, 30, v133
	v_add_nc_u32_e32 v149, 28, v133
	v_add_nc_u32_e32 v128, 34, v133
	v_add_nc_u32_e32 v142, 32, v133
	v_add_nc_u32_e32 v126, 38, v133
	v_add_nc_u32_e32 v129, 36, v133
	v_add_nc_u32_e32 v118, 42, v133
	v_add_nc_u32_e32 v127, 40, v133
	v_add_nc_u32_e32 v123, 46, v133
	v_add_nc_u32_e32 v124, 48, v133
	v_add_nc_u32_e32 v125, 50, v133
	v_add_nc_u32_e32 v119, 52, v133
	v_add_nc_u32_e32 v120, 54, v133
	v_add_nc_u32_e32 v121, 56, v133
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s12, s0, s38
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v132
	v_cmp_gt_i32_e64 s39, s99, v141
	v_cmp_gt_i32_e64 s40, s99, v134
	v_cmp_gt_i32_e64 s41, s99, v143
	v_cmp_gt_i32_e64 s42, s99, v135
	v_cmp_gt_i32_e64 s43, s99, v144
	v_cmp_gt_i32_e64 s44, s99, v136
	v_cmp_gt_i32_e64 s45, s99, v145
	v_cmp_gt_i32_e64 s46, s99, v137
	v_cmp_gt_i32_e64 s47, s99, v146
	v_cmp_gt_i32_e64 s48, s99, v138
	v_cmp_gt_i32_e64 s49, s99, v147
	v_cmp_gt_i32_e64 s50, s99, v139
	v_cmp_gt_i32_e64 s51, s99, v148
	v_cmp_gt_i32_e64 s52, s99, v140
	v_cmp_gt_i32_e64 s53, s99, v149
	v_cmp_gt_i32_e64 s54, s99, v128
	v_cmp_gt_i32_e64 s55, s99, v142
	v_cmp_gt_i32_e64 s56, s99, v126
	v_cmp_gt_i32_e64 s57, s99, v129
	v_cmp_gt_i32_e64 s58, s99, v118
	v_cmp_gt_i32_e64 s59, s99, v127
	v_cmp_gt_i32_e64 s60, s99, v123
	v_cmp_gt_i32_e64 s61, s99, v124
	v_cmp_gt_i32_e64 s62, s99, v125
	v_cmp_gt_i32_e64 s63, s99, v119
	v_cmp_gt_i32_e64 s64, s99, v120
	v_cmp_gt_i32_e64 s65, s99, v121
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s104, s0, s38
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v131
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s70, s0, s39
	s_and_b32 s36, s0, s41
	s_and_b32 s35, s0, s40
	s_and_b32 s78, s0, s43
	s_and_b32 s34, s0, s42
	s_and_b32 s33, s0, s45
	s_and_b32 s102, s0, s44
	s_and_b32 s31, s0, s47
	s_and_b32 s30, s0, s46
	s_and_b32 s100, s0, s49
	s_and_b32 s28, s0, s48
	s_and_b32 s9, s0, s51
	s_and_b32 s11, s0, s50
	s_and_b32 s1, s0, s53
	s_and_b32 s87, s0, s52
	s_and_b32 s95, s0, s55
	s_and_b32 s103, s0, s54
	s_and_b32 s93, s0, s57
	s_and_b32 s101, s0, s56
	s_and_b32 s88, s0, s59
	s_and_b32 s92, s0, s58
	s_and_b32 s3, s0, s60
	s_and_b32 s18, s0, s61
	s_and_b32 s17, s0, s62
	s_and_b32 s15, s0, s63
	s_and_b32 s14, s0, s64
	s_and_b32 s13, s0, s65
	s_and_b32 vcc_hi, s0, s38
	v_writelane_b32 v162, s1, 30
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s38, v141, v110
	v_cmp_le_i32_e64 s39, v143, v110
	v_cmp_le_i32_e64 s40, v134, v110
	v_cmp_le_i32_e64 s41, v144, v110
	v_cmp_le_i32_e64 s42, v135, v110
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s38, s38, s70
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s43, v145, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s39, s39, s36
	s_and_b32 s40, s40, s35
	s_and_not1_b32 s70, s70, exec_lo
	s_and_b32 s38, s38, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s44, v136, v110
	v_cmp_le_i32_e64 s45, v146, v110
	v_cmp_le_i32_e64 s46, v137, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s41, s41, s78
	s_and_b32 s42, s42, s34
	s_or_b32 s70, s70, s38
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s38, s39, exec_lo
	s_and_not1_b32 s35, s35, exec_lo
	s_and_b32 s39, s40, exec_lo
	s_mov_b32 s1, s34
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s47, v147, v110
	v_cmp_le_i32_e64 s48, v138, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s43, s43, s33
	s_or_b32 s36, s36, s38
	s_or_b32 s35, s35, s39
	s_and_not1_b32 s34, s78, exec_lo
	s_and_b32 s38, s41, exec_lo
	s_mov_b32 s0, s33
	s_and_not1_b32 s33, s1, exec_lo
	s_and_b32 s39, s42, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s49, v148, v110
	v_cmp_le_i32_e64 s50, v139, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s44, s44, s102
	s_and_b32 s45, s45, s31
	s_and_b32 s46, s46, s30
	s_or_b32 s78, s34, s38
	s_or_b32 s34, s33, s39
	s_and_not1_b32 s38, s0, exec_lo
	s_and_b32 s39, s43, exec_lo
	s_mov_b32 s1, s31
	s_mov_b32 s0, s30
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s51, v149, v110
	v_cmp_le_i32_e64 s52, v140, v110
	v_readlane_b32 s2, v162, 30
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s47, s47, s100
	s_and_b32 s48, s48, s28
	s_and_not1_b32 s31, s102, exec_lo
	s_and_b32 s40, s44, exec_lo
	s_or_b32 s33, s38, s39
	s_and_not1_b32 s30, s1, exec_lo
	s_and_b32 s38, s45, exec_lo
	s_and_not1_b32 s1, s0, exec_lo
	s_and_b32 s39, s46, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s53, v142, v110
	v_cmp_le_i32_e64 s54, v128, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s49, s49, s9
	s_and_b32 s50, s50, s11
	s_or_b32 s102, s31, s40
	s_or_b32 s31, s30, s38
	s_or_b32 s30, s1, s39
	s_and_not1_b32 s29, s100, exec_lo
	s_and_b32 s38, s47, exec_lo
	s_and_not1_b32 s28, s28, exec_lo
	s_and_b32 s39, s48, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s55, v129, v110
	v_cmp_le_i32_e64 s56, v126, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s51, s51, s2
	s_and_b32 s52, s52, s87
	s_or_b32 s100, s29, s38
	s_or_b32 s28, s28, s39
	s_and_not1_b32 s27, s9, exec_lo
	s_and_b32 s38, s49, exec_lo
	s_and_not1_b32 s26, s11, exec_lo
	s_and_b32 s39, s50, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s57, v127, v110
	v_cmp_le_i32_e64 s58, v118, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s53, s53, s95
	s_and_b32 s54, s54, s103
	s_or_b32 s9, s27, s38
	s_or_b32 s11, s26, s39
	s_and_not1_b32 s25, s2, exec_lo
	s_and_b32 s38, s51, exec_lo
	s_and_not1_b32 s24, s87, exec_lo
	s_and_b32 s39, s52, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s59, v122, v110
	v_cmp_le_i32_e64 s60, v123, v110
	v_cmp_le_i32_e64 s61, v124, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s55, s55, s93
	s_and_b32 s56, s56, s101
	s_or_b32 s1, s25, s38
	s_or_b32 s87, s24, s39
	s_and_not1_b32 s23, s95, exec_lo
	s_and_b32 s38, s53, exec_lo
	s_and_not1_b32 s22, s103, exec_lo
	s_and_b32 s39, s54, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s62, v125, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s57, s57, s88
	s_and_b32 s58, s58, s92
	s_or_b32 s95, s23, s38
	s_or_b32 s103, s22, s39
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s38, s55, exec_lo
	s_and_not1_b32 s20, s101, exec_lo
	s_and_b32 s39, s56, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s63, v119, v110
	v_cmp_le_i32_e64 s64, v120, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s59, s59, s86
	s_and_b32 s60, s60, s3
	s_and_b32 s61, s61, s18
	s_or_b32 s93, s21, s38
	s_or_b32 s101, s20, s39
	s_and_not1_b32 s19, s88, exec_lo
	s_and_b32 s38, s57, exec_lo
	s_mov_b32 s20, s18
	s_and_not1_b32 s18, s92, exec_lo
	s_and_b32 s39, s58, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s65, v121, v110
	v_cmp_le_i32_e64 s66, v130, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s62, s62, s17
	s_or_b32 s88, s19, s38
	s_or_b32 s92, s18, s39
	s_mov_b32 s2, s17
	s_and_not1_b32 s17, s86, exec_lo
	s_and_b32 s38, s59, exec_lo
	s_and_not1_b32 s16, s3, exec_lo
	s_and_b32 s39, s60, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v133, v110
	v_cmp_le_i32_e64 s67, v132, v110
	v_cmp_le_i32_e64 s68, v131, v110
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s63, s63, s15
	s_and_b32 s64, s64, s14
	v_writelane_b32 v162, s1, 30
	s_or_b32 s86, s17, s38
	s_or_b32 s3, s16, s39
	s_mov_b32 s1, s15
	s_and_not1_b32 s15, s20, exec_lo
	s_and_b32 s38, s61, exec_lo
	s_mov_b32 s16, s14
	s_and_not1_b32 s14, s2, exec_lo
	s_and_b32 s39, s62, exec_lo
	s_and_b32 s65, s65, s13
	s_and_b32 s66, s66, s12
	s_or_b32 s18, s15, s38
	s_or_b32 s17, s14, s39
	s_mov_b32 s2, s13
	s_and_not1_b32 s13, s1, exec_lo
	s_and_b32 s38, s63, exec_lo
	s_mov_b32 s1, s12
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s39, s64, exec_lo
	s_and_b32 s69, vcc_lo, s37
	s_and_b32 s67, s67, s104
	s_and_b32 s68, s68, vcc_hi
	s_or_b32 s15, s13, s38
	s_or_b32 s14, s12, s39
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s38, s65, exec_lo
	s_and_not1_b32 s39, s1, exec_lo
	s_and_b32 s40, s66, exec_lo
	s_and_not1_b32 s37, s37, exec_lo
	s_and_b32 s69, s69, exec_lo
	s_or_b32 s13, s2, s38
	s_or_b32 s12, s39, s40
	s_and_not1_b32 s38, s104, exec_lo
	s_and_b32 s39, s67, exec_lo
	s_and_not1_b32 s40, vcc_hi, exec_lo
	s_and_b32 s41, s68, exec_lo
	s_or_b32 s37, s37, s69
	s_or_b32 s104, s38, s39
	s_or_b32 vcc_hi, s40, s41
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s71
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v161, s13, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s0, v132, v111
	v_cmp_ge_i32_e64 s39, v141, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s40, v141, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s41, v143, v111
	v_writelane_b32 v161, vcc_hi, 1
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s42, v143, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s43, v134, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s44, v134, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s45, v144, v111
	v_writelane_b32 v161, s12, 2
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s46, v144, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s47, v135, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s48, v135, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s40, s39, s40
	v_writelane_b32 v161, s0, 3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s0, v131, v111
	v_writelane_b32 v162, s98, 31
	v_cmp_ge_i32_e64 s98, v133, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s38, v133, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s49, v145, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s50, v145, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s41, s41, s42
	s_and_b32 s40, s40, s70
	s_and_b32 s43, s43, s44
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s51, v136, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s52, v136, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v146, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s54, v146, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v137, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v137, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s67, v140, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s68, v140, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v120, v111
	v_cmp_ge_i32_e64 s89, v121, v111
	v_writelane_b32 v161, s0, 4
	s_mov_b32 s10, s100
	s_mov_b32 s0, s33
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s33, v120, v112
	s_mov_b32 s100, s34
	v_cmp_le_i32_e64 s34, v121, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s41, s41, s36
	s_and_b32 s43, s43, s35
	s_and_b32 s44, s45, s46
	s_and_b32 s45, s47, s48
	s_and_not1_b32 s70, s70, exec_lo
	s_and_b32 s40, s40, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s57, v147, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s58, v147, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s59, v138, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s60, v138, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s98, s98, s38
	s_and_b32 s44, s44, s78
	s_and_b32 s45, s45, s100
	s_and_b32 s46, s49, s50
	s_or_b32 s70, s70, s40
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s40, s41, exec_lo
	s_and_not1_b32 s35, s35, exec_lo
	s_and_b32 s41, s43, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s61, v148, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s62, v148, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s63, v139, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s64, v139, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s65, v149, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s66, v149, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v123, v111
	v_cmp_ge_i32_e64 s25, v125, v111
	s_mov_b32 s2, s30
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s30, v123, v112
	s_mov_b32 s1, s31
	v_cmp_le_i32_e64 s31, v125, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s42, s98, s37
	s_and_b32 s47, s51, s52
	s_and_b32 s46, s46, s0
	s_and_b32 s48, s53, s54
	s_and_b32 s49, s55, s56
	s_and_b32 s55, s67, s68
	s_and_b32 s67, s27, s33
	s_and_b32 s68, s89, s34
	s_or_b32 s36, s36, s40
	s_or_b32 s35, s35, s41
	s_and_not1_b32 s34, s78, exec_lo
	s_and_b32 s40, s44, exec_lo
	s_and_not1_b32 s33, s100, exec_lo
	s_and_b32 s41, s45, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s69, v142, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v142, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v130, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s79, v130, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s47, s47, s102
	s_and_b32 s48, s48, s1
	s_and_b32 s49, s49, s2
	s_and_b32 s50, s57, s58
	s_and_b32 s51, s59, s60
	s_and_not1_b32 s37, s37, exec_lo
	s_and_b32 s42, s42, exec_lo
	s_or_b32 s78, s34, s40
	s_or_b32 s34, s33, s41
	s_and_not1_b32 s40, s0, exec_lo
	s_and_b32 s41, s46, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v128, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 vcc_hi, v128, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s26, v119, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v119, v112
	v_readlane_b32 s98, v162, 30
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s24, v124, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v124, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s50, s50, s10
	s_and_b32 s51, s51, s28
	s_and_b32 s52, s61, s62
	s_and_b32 s53, s63, s64
	s_and_b32 s54, s65, s66
	s_and_b32 s63, s22, s30
	s_and_b32 s65, s25, s31
	s_or_b32 s37, s37, s42
	s_and_not1_b32 s31, s102, exec_lo
	s_and_b32 s42, s47, exec_lo
	s_or_b32 s33, s40, s41
	s_and_not1_b32 s30, s1, exec_lo
	s_and_b32 s40, s48, exec_lo
	s_and_not1_b32 s1, s2, exec_lo
	s_and_b32 s41, s49, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s20, v129, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v129, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v126, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v126, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s52, s52, s9
	s_and_b32 s53, s53, s11
	s_and_b32 s56, s69, s7
	s_and_b32 s69, s29, s79
	s_or_b32 s102, s31, s42
	s_or_b32 s31, s30, s40
	s_or_b32 s30, s1, s41
	s_and_not1_b32 s29, s10, exec_lo
	s_and_b32 s40, s50, exec_lo
	s_and_not1_b32 s28, s28, exec_lo
	s_and_b32 s41, s51, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v127, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v127, v112
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v118, v111
	v_cmp_ge_i32_e64 s23, v122, v111
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s90, v118, v112
	v_cmp_le_i32_e32 vcc_lo, v122, v112
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s54, s54, s98
	s_and_b32 s55, s55, s87
	s_and_b32 s57, s13, vcc_hi
	s_and_b32 s66, s26, s6
	s_or_b32 s100, s29, s40
	s_or_b32 s28, s28, s41
	s_and_not1_b32 s27, s9, exec_lo
	s_and_b32 s40, s52, exec_lo
	s_and_not1_b32 s26, s11, exec_lo
	s_and_b32 s41, s53, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s38, v132, v112
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s64, s24, s4
	v_readlane_b32 s4, v161, 3
	s_and_b32 s56, s56, s95
	s_and_b32 s57, s57, s103
	s_and_b32 s58, s20, s12
	s_and_b32 s59, s8, s5
	s_or_b32 s9, s27, s40
	s_or_b32 s11, s26, s41
	s_and_not1_b32 s25, s98, exec_lo
	s_and_b32 s40, s54, exec_lo
	s_and_not1_b32 s24, s87, exec_lo
	s_and_b32 s41, s55, exec_lo
	s_and_b32 s58, s58, s93
	s_and_b32 s59, s59, s101
	s_and_b32 s60, s21, s16
	s_and_b32 s61, s19, s90
	s_and_b32 s62, s23, vcc_lo
	s_or_b32 s0, s25, s40
	s_or_b32 s87, s24, s41
	s_and_not1_b32 s23, s95, exec_lo
	s_and_b32 s40, s56, exec_lo
	s_and_not1_b32 s22, s103, exec_lo
	s_and_b32 s41, s57, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s39, v131, v112
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s60, s60, s88
	s_and_b32 s61, s61, s92
	s_and_b32 s38, s4, s38
	v_readlane_b32 s4, v161, 4
	s_or_b32 s95, s23, s40
	s_or_b32 s103, s22, s41
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s40, s58, exec_lo
	s_and_not1_b32 s20, s101, exec_lo
	s_and_b32 s41, s59, exec_lo
	s_and_b32 s62, s62, s86
	s_and_b32 s63, s63, s3
	s_and_b32 s64, s64, s18
	s_mov_b32 s13, s18
	s_or_b32 s93, s21, s40
	s_or_b32 s101, s20, s41
	s_and_not1_b32 s19, s88, exec_lo
	s_and_b32 s40, s60, exec_lo
	s_and_not1_b32 s18, s92, exec_lo
	s_and_b32 s41, s61, exec_lo
	v_readlane_b32 s6, v161, 0
	v_readlane_b32 s5, v161, 2
	s_and_b32 s65, s65, s17
	s_mov_b32 s12, s17
	s_or_b32 s88, s19, s40
	s_or_b32 s92, s18, s41
	s_and_not1_b32 s17, s86, exec_lo
	s_and_b32 s40, s62, exec_lo
	s_and_not1_b32 s16, s3, exec_lo
	s_and_b32 s41, s63, exec_lo
	s_and_b32 s39, s4, s39
	v_readlane_b32 s4, v161, 1
	s_and_b32 s66, s66, s15
	s_mov_b32 s8, s15
	s_and_b32 s67, s67, s14
	s_mov_b32 s7, s14
	s_or_b32 s86, s17, s40
	s_or_b32 s3, s16, s41
	s_and_not1_b32 s15, s13, exec_lo
	s_and_b32 s40, s64, exec_lo
	s_and_not1_b32 s14, s12, exec_lo
	s_and_b32 s41, s65, exec_lo
	s_and_b32 s68, s68, s6
	s_and_b32 s69, s69, s5
	s_or_b32 s18, s15, s40
	s_or_b32 s17, s14, s41
	s_and_not1_b32 s13, s8, exec_lo
	s_and_b32 s40, s66, exec_lo
	s_and_not1_b32 s12, s7, exec_lo
	s_and_b32 s41, s67, exec_lo
	s_and_b32 s38, s38, s104
	s_and_b32 s39, s39, s4
	s_or_b32 s15, s13, s40
	s_or_b32 s14, s12, s41
	s_and_not1_b32 s2, s6, exec_lo
	s_and_b32 s40, s68, exec_lo
	s_and_not1_b32 s41, s5, exec_lo
	s_and_b32 s42, s69, exec_lo
	v_readlane_b32 s98, v162, 31
	s_or_b32 s13, s2, s40
	s_or_b32 s12, s41, s42
	s_and_not1_b32 s40, s104, exec_lo
	s_and_b32 s38, s38, exec_lo
	s_and_not1_b32 s41, s4, exec_lo
	s_and_b32 s39, s39, exec_lo
	s_or_b32 s104, s40, s38
	s_or_b32 vcc_hi, s41, s39
	v_writelane_b32 v162, s0, 30
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v57, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v49, v40
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	v_readlane_b32 s12, v164, 2
	v_readlane_b32 s13, v164, 3
	v_readlane_b32 s28, v164, 8
	v_readlane_b32 s3, v164, 9
	v_readlane_b32 s30, v164, 7
	v_readlane_b32 s10, v164, 6
	s_mov_b64 s[8:9], s[12:13]
	v_readlane_b32 s14, v164, 4
	v_readlane_b32 s15, v164, 5
.LBB0_13:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v94
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s30, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s73, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s28, s1
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v1, 0xff800000, v57 :: v_dual_cndmask_b32 v6, 0, v35
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v4, 0, v33 :: v_dual_cndmask_b32 v5, 0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v2, v1
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v3, 0, v49, vcc_lo
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v14, 0, v39
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp37:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v40
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp41:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp44:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp66:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp75:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp76:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp78:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
	v_add_f32_e32 v17, v15, v20
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v20, v17 :: v_dual_add_f32 v13, v11, v13
	v_dual_mov_b32 v18, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v12, v15
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v12, v11 :: v_dual_add_f32 v17, v17, v20
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v16, v18 :: v_dual_add_f32 v16, v14, v19
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp102:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp104:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp106:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s6, s8, s6
	s_addc_u32 s7, s9, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp107:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
.Ltmp108:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v4, 0xe0, v89
	v_and_b32_e32 v1, 28, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v2, 0, v3
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v3, 0, v4
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s0, v81
	.loc	1 835 13                        ; attention.py:835:13
	v_readlane_b32 s0, v164, 1
	ds_load_b32 v0, v0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s11, 0x31027000
	v_lshl_add_u32 v1, v1, 2, 8
	s_and_b32 vcc_lo, s10, s0
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp109:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 165
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_vgpr, 165
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15376
; TotalNumSgprs: 107
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 165
; Occupancy: 9
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	7                               ; Abbreviation Code
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
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp29                         ; DW_AT_low_pc
	.long	.Ltmp32-.Ltmp29                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 103
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
