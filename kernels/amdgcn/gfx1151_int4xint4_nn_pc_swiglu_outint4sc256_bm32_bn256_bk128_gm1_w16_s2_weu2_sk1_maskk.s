	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[4:7], s[0:1], 0x0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s11, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v89, 0x1f0, v0
	v_lshrrev_b32_e32 v91, 4, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v92, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v90, 0x1e0, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s12, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s9, s8, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s14, s12, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s9, s9, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s14, s14, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s8, s8, s9
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s12, s12, s14
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s8, s8, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s12, s12, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s13, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s10
	s_mul_hi_u32 s13, s10, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s13
	s_xor_b32 s13, s2, s8
	s_mul_hi_u32 s10, s11, s10
	s_ashr_i32 s13, s13, 31
	s_mul_i32 s14, s10, s9
	s_sub_i32 s11, s11, s14
	s_add_i32 s14, s10, 1
	s_sub_i32 s15, s11, s9
	s_cmp_ge_u32 s11, s9
	s_cselect_b32 s10, s14, s10
	s_cselect_b32 s11, s15, s11
	s_add_i32 s14, s10, 1
	s_cmp_ge_u32 s11, s9
	s_cselect_b32 s9, s14, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s9, s9, s13
	s_sub_i32 s10, s9, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s9, s12, s10
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s8, s10, s8
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s11, s9, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s15, s2, s8
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s13, s11
	s_load_b32 s12, s[0:1], 0x38
	s_cvt_f32_u32 s9, s13
	s_sub_i32 s14, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshrrev_b32_e32 v1, 3, v89
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s14, s14, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s14
	s_abs_i32 s14, s15
	s_add_i32 s2, s9, s2
	s_mov_b64 s[8:9], s[6:7]
	s_mul_hi_u32 s2, s14, s2
	s_xor_b32 s6, s15, s11
	s_mul_i32 s7, s2, s13
	s_ashr_i32 s16, s6, 31
	s_sub_i32 s6, s14, s7
	s_add_i32 s14, s2, 1
	s_sub_i32 s17, s6, s13
	s_cmp_ge_u32 s6, s13
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s2, s14, s2
	s_cselect_b32 s6, s17, s6
	s_add_i32 s14, s2, 1
	s_cmp_ge_u32 s6, s13
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s2, s14, s2
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s14, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s2, s2, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s13, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s24, s2, s16
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v2, s14, v1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s11, s24, s11
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s13, s12, s13
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s11, s15, s11
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s22, s13, 1
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s11, s11, s10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s21, s25, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s2, s24, 8
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v2
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s26, s11, 5
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s12, 1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s17, s21, s14
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s20, -1, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s10, s6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v93, 15, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s11, s7
	s_and_b32 s9, s9, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v88, 4, v93
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[9:10], null, s21, v1, v[88:89]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, s2, s17, v9
	v_add_nc_u32_e32 v2, s21, v3
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[12:15], v4, s[8:11], 0 offen
	buffer_load_b128 v[16:19], v2, s[8:11], 0 offen
	.loc	1 166 39 is_stmt 1              ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v2, s25, v3
	v_add_nc_u32_e32 v3, s21, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 31 is_stmt 0              ; generate_amdgcn.py:166:31
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[8:11], 0 offen
	buffer_load_b128 v[24:27], v3, s[8:11], 0 offen
	.loc	1 154 30 is_stmt 1              ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v3, s22, v91
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v2, 2, v93
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s10, s26, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v4, s14, v2
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v10, v3, v2, s10
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 154 30 is_stmt 0              ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v3, s14, v10
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s20, vcc_lo
	s_cmpk_gt_i32 s12, 0x81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_load_b32 v33, v3, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v5, 56, v3
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v3, 56, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v4, v5, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v6, v92, v3
	v_and_b32_e32 v5, 56, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshl_or_b32 v7, v93, 10, v4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v11, 0, v6
	v_lshlrev_b32_e32 v4, 6, v93
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v36, 0, v7
	v_xor_b32_e32 v6, 0x88, v7
	v_xor_b32_e32 v8, 0x110, v7
	v_xor_b32_e32 v28, 0x198, v7
	v_xor_b32_e32 v29, 0x220, v7
	v_xor_b32_e32 v30, 0x2a8, v7
	v_xor_b32_e32 v31, 0x330, v7
	v_xor_b32_e32 v7, 0x3b8, v7
	v_add_nc_u32_e32 v38, 0, v8
	v_add_nc_u32_e32 v39, 0, v28
	v_add_nc_u32_e32 v40, 0, v29
	v_add_nc_u32_e32 v41, 0, v30
	v_add_nc_u32_e32 v43, 0, v7
	v_add_nc_u32_e32 v42, 0, v31
	v_add_nc_u32_e32 v37, 0, v6
	s_waitcnt vmcnt(3)
	v_perm_b32 v7, v16, v12, 0x5010400
	v_perm_b32 v8, v16, v12, 0x7030602
	v_perm_b32 v12, v17, v13, 0x5010400
	v_perm_b32 v13, v17, v13, 0x7030602
	v_perm_b32 v16, v18, v14, 0x5010400
	v_perm_b32 v17, v18, v14, 0x7030602
	v_perm_b32 v18, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_lshrrev_b32_e32 v28, 8, v7
	v_lshrrev_b32_e32 v34, 24, v12
	v_lshrrev_b32_e32 v29, 24, v7
	v_lshrrev_b32_e32 v30, 8, v8
	v_lshrrev_b32_e32 v31, 24, v8
	v_lshrrev_b32_e32 v32, 8, v12
	v_lshrrev_b32_e32 v35, 8, v13
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v53, v24, v20, 0x5010400
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v44, 24, v13
	v_lshrrev_b32_e32 v45, 8, v16
	v_lshrrev_b32_e32 v46, 24, v16
	v_lshrrev_b32_e32 v47, 8, v17
	v_lshrrev_b32_e32 v48, 24, v17
	v_lshrrev_b32_e32 v49, 8, v18
	v_lshrrev_b32_e32 v50, 24, v18
	v_lshrrev_b32_e32 v51, 8, v19
	v_lshrrev_b32_e32 v52, 24, v19
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_perm_b32 v54, v24, v20, 0x7030602
	v_perm_b32 v55, v25, v21, 0x5010400
	v_perm_b32 v56, v25, v21, 0x7030602
	v_perm_b32 v57, v26, v22, 0x5010400
	v_perm_b32 v58, v26, v22, 0x7030602
	v_perm_b32 v59, v27, v23, 0x5010400
	v_perm_b32 v60, v27, v23, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v6.l, 0xff, v7.l
	v_and_b16 v6.h, 0xff, v7.h
	v_and_b16 v7.h, 0xff, v8.h
	v_and_b16 v8.h, 0xff, v12.h
	v_and_b16 v12.h, 0xff, v13.h
	v_and_b16 v13.h, 0xff, v16.h
	v_and_b16 v14.l, 0xff, v17.l
	v_and_b16 v16.h, 0xff, v19.h
	v_lshlrev_b16 v17.l, 8, v28.l
	v_lshlrev_b16 v19.h, 8, v34.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v34, 8, v53
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v7.l, 0xff, v8.l
	v_and_b16 v8.l, 0xff, v12.l
	v_and_b16 v12.l, 0xff, v13.l
	v_and_b16 v13.l, 0xff, v16.l
	v_and_b16 v14.h, 0xff, v17.h
	v_and_b16 v15.l, 0xff, v18.l
	v_and_b16 v15.h, 0xff, v18.h
	v_and_b16 v16.l, 0xff, v19.l
	v_lshlrev_b16 v17.h, 8, v29.l
	v_lshlrev_b16 v18.l, 8, v30.l
	v_lshlrev_b16 v18.h, 8, v31.l
	v_lshlrev_b16 v19.l, 8, v32.l
	v_lshlrev_b16 v20.l, 8, v35.l
	v_lshlrev_b16 v20.h, 8, v44.l
	v_lshlrev_b16 v21.l, 8, v45.l
	v_lshlrev_b16 v21.h, 8, v46.l
	v_lshlrev_b16 v22.l, 8, v47.l
	v_lshlrev_b16 v22.h, 8, v48.l
	v_lshlrev_b16 v23.l, 8, v49.l
	v_lshlrev_b16 v23.h, 8, v50.l
	v_lshlrev_b16 v24.l, 8, v51.l
	v_lshlrev_b16 v24.h, 8, v52.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v25.l, 0xff, v53.l
	v_lshrrev_b32_e32 v35, 24, v53
	v_and_b16 v25.h, 0xff, v53.h
	v_and_b16 v26.l, 0xff, v54.l
	v_lshrrev_b32_e32 v44, 8, v54
	v_lshrrev_b32_e32 v45, 24, v54
	v_and_b16 v26.h, 0xff, v54.h
	v_and_b16 v27.l, 0xff, v55.l
	v_lshrrev_b32_e32 v46, 8, v55
	v_lshrrev_b32_e32 v47, 24, v55
	v_and_b16 v27.h, 0xff, v55.h
	v_and_b16 v28.l, 0xff, v56.l
	v_lshrrev_b32_e32 v48, 8, v56
	v_lshrrev_b32_e32 v49, 24, v56
	v_and_b16 v28.h, 0xff, v56.h
	v_and_b16 v29.l, 0xff, v57.l
	v_lshrrev_b32_e32 v50, 8, v57
	v_lshrrev_b32_e32 v51, 24, v57
	v_and_b16 v29.h, 0xff, v57.h
	v_lshrrev_b32_e32 v52, 8, v58
	v_lshrrev_b32_e32 v53, 24, v58
	v_lshrrev_b32_e32 v54, 8, v59
	v_lshrrev_b32_e32 v55, 24, v59
	v_lshrrev_b32_e32 v56, 8, v60
	v_lshrrev_b32_e32 v57, 24, v60
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v6.l, v6.l, v17.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v17.l, 8, v34.l
	v_and_b16 v30.l, 0xff, v58.l
	v_and_b16 v30.h, 0xff, v58.h
	v_and_b16 v31.l, 0xff, v59.l
	v_and_b16 v31.h, 0xff, v59.h
	v_and_b16 v32.l, 0xff, v60.l
	v_and_b16 v32.h, 0xff, v60.h
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v6.h, v6.h, v17.h
	v_or_b16 v7.l, v7.l, v18.l
	v_or_b16 v7.h, v7.h, v18.h
	v_or_b16 v8.l, v8.l, v19.l
	v_or_b16 v8.h, v8.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v17.h, 8, v35.l
	v_lshlrev_b16 v18.l, 8, v44.l
	v_lshlrev_b16 v18.h, 8, v45.l
	v_lshlrev_b16 v19.l, 8, v46.l
	v_lshlrev_b16 v19.h, 8, v47.l
	v_lshlrev_b16 v20.l, 8, v48.l
	v_lshlrev_b16 v20.h, 8, v49.l
	v_lshlrev_b16 v21.l, 8, v50.l
	v_lshlrev_b16 v21.h, 8, v51.l
	v_lshlrev_b16 v22.l, 8, v52.l
	v_lshlrev_b16 v22.h, 8, v53.l
	v_lshlrev_b16 v23.l, 8, v54.l
	v_lshlrev_b16 v23.h, 8, v55.l
	v_lshlrev_b16 v24.l, 8, v56.l
	v_lshlrev_b16 v24.h, 8, v57.l
	v_or_b16 v17.l, v25.l, v17.l
	v_or_b16 v17.h, v25.h, v17.h
	v_or_b16 v18.l, v26.l, v18.l
	v_or_b16 v18.h, v26.h, v18.h
	v_or_b16 v19.l, v27.l, v19.l
	v_or_b16 v19.h, v27.h, v19.h
	v_or_b16 v20.l, v28.l, v20.l
	v_or_b16 v20.h, v28.h, v20.h
	v_or_b16 v21.l, v29.l, v21.l
	v_or_b16 v21.h, v29.h, v21.h
	v_or_b16 v22.l, v30.l, v22.l
	v_or_b16 v22.h, v30.h, v22.h
	v_or_b16 v23.l, v31.l, v23.l
	v_or_b16 v23.h, v31.h, v23.h
	v_or_b16 v24.l, v32.l, v24.l
	v_or_b16 v24.h, v32.h, v24.h
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v11, v33 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v36, v6
	ds_store_b16_d16_hi v36, v6 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v36, v17 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v37, v7
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v36, v17 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v37, v7 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v37, v18 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v38, v8
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v37, v18 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v38, v8 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v38, v19 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v39, v12
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v38, v19 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v39, v12 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v39, v20 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v40, v13
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v39, v20 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v40, v13 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v40, v21 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v41, v14
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v40, v21 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v41, v14 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v41, v22 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v42, v15
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v41, v22 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v42, v15 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v42, v23 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v43, v16
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v42, v23 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v43, v16 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v43, v24 offset:16384
	ds_store_b16_d16_hi v43, v24 offset:16448
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshl_or_b32 v6, v90, 5, v5
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_or_b32_e32 v46, v4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v6, v6, v3
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v50, 8, v46
	v_xor_b32_e32 v51, 16, v46
	v_xor_b32_e32 v48, 24, v46
	v_xor_b32_e32 v56, 32, v46
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v44, v6, v4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v57, 40, v46
	v_xor_b32_e32 v58, 48, v46
	v_xor_b32_e32 v59, 56, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v45, 8, v44
	v_xor_b32_e32 v47, 16, v44
	v_xor_b32_e32 v49, 24, v44
	v_xor_b32_e32 v94, 32, v44
	v_xor_b32_e32 v95, 40, v44
	v_xor_b32_e32 v96, 48, v44
	v_xor_b32_e32 v97, 56, v44
	s_load_b256 s[12:19], s[0:1], 0x10
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_mov_b32 s1, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v11, v4
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v4
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v10, v4
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v52, v4 :: v_dual_mov_b32 v35, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v4 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v22, v6
	v_dual_mov_b32 v15, v4 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v14, v4 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v13, v4 :: v_dual_mov_b32 v30, v6
	v_dual_mov_b32 v12, v4 :: v_dual_mov_b32 v23, v7
	v_mov_b32_e32 v55, v4
	v_dual_mov_b32 v54, v4 :: v_dual_mov_b32 v21, v5
	v_mov_b32_e32 v53, v4
	v_mov_b32_e32 v19, v4
	v_dual_mov_b32 v18, v4 :: v_dual_mov_b32 v33, v9
	v_mov_b32_e32 v17, v4
	v_dual_mov_b32 v16, v4 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v29, v5
	v_mov_b32_e32 v20, v4
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v28, v4
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
	s_load_b256 s[12:19], s[0:1], 0x10
	s_mov_b32 s1, 0
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v6, v90, 5, v5
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v54, s22, v1
	v_or_b32_e32 v46, v4, v5
	v_sub_nc_u32_e32 v53, s22, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s22, s22, 63
	v_xor_b32_e32 v1, v6, v3
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s22, 6
	v_xor_b32_e32 v50, 8, v46
	v_xor_b32_e32 v51, 16, v46
	v_xor_b32_e32 v48, 24, v46
	v_or_b32_e32 v44, v1, v4
	v_xor_b32_e32 v56, 32, v46
	v_xor_b32_e32 v57, 40, v46
	v_xor_b32_e32 v58, 48, v46
	v_xor_b32_e32 v59, 56, v46
	v_xor_b32_e32 v45, 8, v44
	v_xor_b32_e32 v47, 16, v44
	v_xor_b32_e32 v49, 24, v44
	v_xor_b32_e32 v94, 32, v44
	v_xor_b32_e32 v95, 40, v44
	v_xor_b32_e32 v96, 48, v44
	v_xor_b32_e32 v97, 56, v44
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v61, 0, v50
.Ltmp13:
	.loc	1 158 30 is_stmt 1              ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v52, s21, v9
	v_sub_nc_u32_e64 v55, s0, 2 clamp
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v15, v12 :: v_dual_add_nc_u32 v60, 0, v46
	v_dual_mov_b32 v17, v12 :: v_dual_add_nc_u32 v62, 0, v51
	v_dual_mov_b32 v14, v12 :: v_dual_add_nc_u32 v63, 0, v48
	v_dual_mov_b32 v19, v12 :: v_dual_add_nc_u32 v64, 0, v56
	v_dual_mov_b32 v16, v12 :: v_dual_add_nc_u32 v65, 0, v57
	v_dual_mov_b32 v21, v12 :: v_dual_add_nc_u32 v66, 0, v58
	v_dual_mov_b32 v18, v12 :: v_dual_add_nc_u32 v67, 0, v59
	v_dual_mov_b32 v23, v12 :: v_dual_add_nc_u32 v68, 0, v44
	v_dual_mov_b32 v20, v12 :: v_dual_add_nc_u32 v69, 0, v45
	v_dual_mov_b32 v25, v12 :: v_dual_add_nc_u32 v70, 0, v47
	v_dual_mov_b32 v22, v12 :: v_dual_add_nc_u32 v71, 0, v49
	v_dual_mov_b32 v27, v12 :: v_dual_add_nc_u32 v72, 0, v94
	v_dual_mov_b32 v24, v12 :: v_dual_add_nc_u32 v73, 0, v95
	v_dual_mov_b32 v1, v12 :: v_dual_add_nc_u32 v74, 0, v96
	v_dual_mov_b32 v26, v12 :: v_dual_add_nc_u32 v75, 0, v97
	v_mov_b32_e32 v13, v12
	v_mov_b32_e32 v2, v12
	v_mov_b32_e32 v3, v12
	v_mov_b32_e32 v4, v12
	v_mov_b32_e32 v5, v12
	v_mov_b32_e32 v6, v12
	v_mov_b32_e32 v7, v12
	v_mov_b32_e32 v8, v12
	v_mov_b32_e32 v28, v12
	v_mov_b32_e32 v29, v12
	v_mov_b32_e32 v30, v12
	v_mov_b32_e32 v31, v12
	v_mov_b32_e32 v32, v12
	v_mov_b32_e32 v33, v12
	v_mov_b32_e32 v34, v12
	v_mov_b32_e32 v35, v12
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s22, s1, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s0, s22, s3
	s_lshl_b32 s23, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v76, s23, v10
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s0, s23, v53
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s27, s23, s21
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s23, v54
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s27, s27, s2
	v_add_nc_u32_e32 v77, s27, v9
	v_add_nc_u32_e32 v78, s27, v52
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s27, s27, s25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_dual_cndmask_b32 v108, 0x80000000, v77 :: v_dual_cndmask_b32 v109, 0x80000000, v78
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v110, v76, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[76:79], v60 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[80:83], v68 offset1:32
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[84:87], v61 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v69 offset1:32
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[102:105], v62 offset0:64 offset1:66
	.loc	1 166 39 is_stmt 1              ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v106, s27, v9
	v_add_nc_u32_e32 v107, s27, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 31 is_stmt 0              ; generate_amdgcn.py:166:31
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_cmp_ne_u32_e32 vcc_lo, s1, v55
	s_mov_b32 s1, s22
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[76:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[80:81], v[78:79], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[82:83], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[82:83], v[78:79], v[20:27] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v70 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[80:83], v63 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[98:99], v[86:87], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[100:101], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[100:101], v[86:87], v[20:27] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[84:87], v71 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[98:101], v64 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[76:77], v[104:105], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[78:79], v[102:103], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[78:79], v[104:105], v[20:27] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v72 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[102:105], v65 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[84:85], v[82:83], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[86:87], v[80:81], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[86:87], v[82:83], v[20:27] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[80:83], v73 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[84:87], v66 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[76:77], v[100:101], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[78:79], v[98:99], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[78:79], v[100:101], v[20:27] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v74 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[98:101], v67 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[80:81], v[104:105], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[82:83], v[102:103], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[82:83], v[104:105], v[20:27] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[102:105], v108, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[80:83], v75 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[76:77], v[86:87], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[78:79], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[78:79], v[86:87], v[20:27] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x2
	buffer_load_b128 v[76:79], v109, s[8:11], 0 offen
	buffer_load_b128 v[84:87], v106, s[8:11], 0 offen
	buffer_load_b128 v[106:109], v107, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[80:81], v[100:101], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[82:83], v[98:99], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[82:83], v[100:101], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v11, v110 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v80, v76, v102, 0x5010400
	v_perm_b32 v81, v76, v102, 0x7030602
	v_perm_b32 v82, v77, v103, 0x5010400
	v_perm_b32 v83, v77, v103, 0x7030602
	v_perm_b32 v100, v79, v105, 0x5010400
	v_perm_b32 v101, v79, v105, 0x7030602
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v106, v84, 0x5010400
	v_perm_b32 v103, v106, v84, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v79, 8, v80
	v_lshrrev_b32_e32 v84, 24, v80
	v_perm_b32 v98, v78, v104, 0x5010400
	v_perm_b32 v99, v78, v104, 0x7030602
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_perm_b32 v104, v107, v85, 0x5010400
	v_perm_b32 v105, v107, v85, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v76.l, 0xff, v80.l
	v_and_b16 v76.h, 0xff, v80.h
	v_and_b16 v77.l, 0xff, v81.l
	v_lshrrev_b32_e32 v80, 8, v81
	v_lshrrev_b32_e32 v85, 24, v81
	v_and_b16 v77.h, 0xff, v81.h
	v_lshrrev_b32_e32 v81, 8, v82
	v_lshlrev_b16 v78.h, 8, v79.l
	v_lshlrev_b16 v79.h, 8, v84.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_perm_b32 v106, v108, v86, 0x5010400
	v_perm_b32 v107, v108, v86, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v78.l, 0xff, v82.l
	v_or_b16 v76.l, v76.l, v78.h
	v_lshrrev_b32_e32 v86, 24, v82
	v_and_b16 v78.h, 0xff, v82.h
	v_or_b16 v76.h, v76.h, v79.h
	v_lshrrev_b32_e32 v82, 8, v83
	v_lshlrev_b16 v79.h, 8, v80.l
	v_lshrrev_b32_e32 v84, 24, v83
	v_lshlrev_b16 v80.h, 8, v81.l
	v_and_b16 v79.l, 0xff, v83.l
	v_lshlrev_b16 v80.l, 8, v85.l
	v_or_b16 v77.l, v77.l, v79.h
	v_and_b16 v79.h, 0xff, v83.h
	v_or_b16 v78.l, v78.l, v80.h
	v_lshrrev_b32_e32 v83, 8, v98
	v_lshlrev_b16 v80.h, 8, v86.l
	v_lshrrev_b32_e32 v85, 24, v98
	v_lshlrev_b16 v81.l, 8, v82.l
	v_lshlrev_b16 v81.h, 8, v84.l
	v_lshrrev_b32_e32 v84, 8, v99
	v_or_b16 v77.h, v77.h, v80.l
	v_and_b16 v80.l, 0xff, v98.l
	v_or_b16 v78.h, v78.h, v80.h
	v_and_b16 v80.h, 0xff, v98.h
	v_or_b16 v79.l, v79.l, v81.l
	v_and_b16 v81.l, 0xff, v99.l
	v_or_b16 v79.h, v79.h, v81.h
	v_lshlrev_b16 v81.h, 8, v83.l
	v_lshrrev_b32_e32 v83, 24, v99
	v_lshlrev_b16 v82.l, 8, v85.l
	v_lshlrev_b16 v82.h, 8, v84.l
	v_lshrrev_b32_e32 v84, 8, v100
	v_or_b16 v80.l, v80.l, v81.h
	v_and_b16 v81.h, 0xff, v99.h
	v_or_b16 v80.h, v80.h, v82.l
	v_and_b16 v82.l, 0xff, v100.l
	v_or_b16 v81.l, v81.l, v82.h
	v_lshlrev_b16 v82.h, 8, v83.l
	v_lshrrev_b32_e32 v85, 24, v100
	v_lshlrev_b16 v83.l, 8, v84.l
	v_lshrrev_b32_e32 v84, 8, v101
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v86, 24, v103
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v81.h, v81.h, v82.h
	v_and_b16 v82.h, 0xff, v100.h
	v_or_b16 v82.l, v82.l, v83.l
	v_lshlrev_b16 v83.l, 8, v85.l
	v_lshlrev_b16 v83.h, 8, v84.l
	v_lshrrev_b32_e32 v84, 24, v101
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v85, 24, v102
	v_lshlrev_b16 v86.l, 8, v86.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v82.h, v82.h, v83.l
	v_and_b16 v83.l, 0xff, v101.l
	v_lshlrev_b16 v84.l, 8, v84.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v85.l, 8, v85.l
	v_perm_b32 v108, v109, v87, 0x5010400
	v_perm_b32 v109, v109, v87, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v83.l, v83.l, v83.h
	v_and_b16 v83.h, 0xff, v101.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v87, 24, v104
	v_lshrrev_b32_e32 v98, 24, v105
	v_lshrrev_b32_e32 v99, 24, v106
	v_lshrrev_b32_e32 v100, 24, v107
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v83.h, v83.h, v84.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v84, 8, v102
	v_and_b16 v84.h, 0xff, v102.l
	v_lshlrev_b16 v87.l, 8, v87.l
	v_lshlrev_b16 v98.l, 8, v98.l
	v_lshlrev_b16 v99.l, 8, v99.l
	v_lshlrev_b16 v84.l, 8, v84.l
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshrrev_b32_e32 v101, 24, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v84.l, v84.h, v84.l
	v_and_b16 v84.h, 0xff, v102.h
	v_lshlrev_b16 v101.l, 8, v101.l
	v_lshrrev_b32_e32 v102, 24, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v84.h, v84.h, v85.l
	v_lshrrev_b32_e32 v85, 8, v103
	v_and_b16 v85.h, 0xff, v103.l
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v85.l, 8, v85.l
	v_or_b16 v85.l, v85.h, v85.l
	v_and_b16 v85.h, 0xff, v103.h
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v36, v76
	ds_store_b16_d16_hi v36, v76 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v36, v84 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v37, v77
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v36, v84 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v37, v77 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v37, v85 offset:16384
	v_or_b16 v85.h, v85.h, v86.l
	v_lshrrev_b32_e32 v86, 8, v104
	v_and_b16 v86.h, 0xff, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v86.l, 8, v86.l
	v_or_b16 v86.l, v86.h, v86.l
	v_and_b16 v86.h, 0xff, v104.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v86.h, v86.h, v87.l
	v_lshrrev_b32_e32 v87, 8, v105
	v_and_b16 v87.h, 0xff, v105.l
	v_lshlrev_b16 v87.l, 8, v87.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v87.l, v87.h, v87.l
	v_and_b16 v87.h, 0xff, v105.h
	v_or_b16 v87.h, v87.h, v98.l
	v_lshrrev_b32_e32 v98, 8, v106
	v_and_b16 v98.h, 0xff, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v98.l, 8, v98.l
	v_or_b16 v98.l, v98.h, v98.l
	v_and_b16 v98.h, 0xff, v106.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v98.h, v98.h, v99.l
	v_lshrrev_b32_e32 v99, 8, v107
	v_and_b16 v99.h, 0xff, v107.l
	v_lshlrev_b16 v99.l, 8, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v99.l, v99.h, v99.l
	v_and_b16 v99.h, 0xff, v107.h
	v_or_b16 v99.h, v99.h, v100.l
	v_lshrrev_b32_e32 v100, 8, v108
	v_and_b16 v100.h, 0xff, v108.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v100.l, 8, v100.l
	v_or_b16 v100.l, v100.h, v100.l
	v_and_b16 v100.h, 0xff, v108.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v100.h, v100.h, v101.l
	v_lshrrev_b32_e32 v101, 8, v109
	v_and_b16 v101.h, 0xff, v109.l
	v_lshlrev_b16 v101.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v101.l, v101.h, v101.l
	v_and_b16 v101.h, 0xff, v109.h
	v_or_b16 v101.h, v101.h, v102.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v38, v78
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v37, v85 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v38, v78 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v38, v86 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v39, v79
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v38, v86 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v39, v79 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v39, v87 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v40, v80
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v39, v87 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v40, v80 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v40, v98 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v41, v81
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v40, v98 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v41, v81 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v41, v99 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v42, v82
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v41, v99 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v42, v82 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v42, v100 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v43, v83
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v42, v100 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v43, v83 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v43, v101 offset:16384
	ds_store_b16_d16_hi v43, v101 offset:16448
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_vccnz .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v55, v8 :: v_dual_mov_b32 v54, v7
	v_dual_mov_b32 v53, v6 :: v_dual_mov_b32 v52, v5
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v40, v52 :: v_dual_add_nc_u32 v5, 0, v46
	v_dual_mov_b32 v41, v53 :: v_dual_add_nc_u32 v6, 0, v50
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v42, v54 :: v_dual_add_nc_u32 v7, 0, v51
	s_barrier
	ds_load_2addr_stride64_b64 v[84:87], v5 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[68:71], v6 offset0:64 offset1:66
	v_add_nc_u32_e32 v5, 0, v48
	v_dual_mov_b32 v43, v55 :: v_dual_add_nc_u32 v6, 0, v56
	v_dual_mov_b32 v39, v4 :: v_dual_add_nc_u32 v8, 0, v58
	ds_load_2addr_stride64_b64 v[64:67], v7 offset0:64 offset1:66
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v7, 0, v57
	v_mov_b32_e32 v38, v3
	ds_load_2addr_stride64_b64 v[76:79], v5 offset0:64 offset1:66
	v_add_nc_u32_e32 v5, 0, v59
	ds_load_2addr_stride64_b64 v[80:83], v6 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[72:75], v7 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[56:59], v8 offset0:64 offset1:66
	v_add_nc_u32_e32 v9, 0, v97
	v_dual_mov_b32 v37, v2 :: v_dual_add_nc_u32 v10, 0, v96
	v_add_nc_u32_e32 v11, 0, v95
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v49
	v_add_nc_u32_e32 v96, 0, v47
	v_add_nc_u32_e32 v97, 0, v45
	v_add_nc_u32_e32 v98, 0, v44
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[60:63], v5 offset0:64 offset1:66
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v6, 0, 1, s20
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v6
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
	s_and_not1_b32 vcc_lo, exec_lo, s20
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[99:100], v98
	ds_load_b64 v[101:102], v97
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v7, v54 :: v_dual_mov_b32 v8, v55
	v_dual_mov_b32 v5, v52 :: v_dual_mov_b32 v6, v53
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[103:104], v96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v43, v8 :: v_dual_mov_b32 v42, v7
	v_dual_mov_b32 v41, v6 :: v_dual_mov_b32 v40, v5
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[5:6], v95
	ds_load_b64 v[7:8], v94
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[99:100], v[84:85], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[99:100], v[86:87], v[28:35] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[99:100], v11
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[101:102], v[68:69], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[101:102], v[70:71], v[44:51] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[101:102], v10
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[103:104], v[64:65], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[103:104], v[66:67], v[44:51] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[103:104], v9
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[5:6], v[76:77], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[5:6], v[78:79], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[80:81], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[82:83], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[99:100], v[72:73], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[99:100], v[74:75], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[101:102], v[56:57], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[101:102], v[58:59], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[103:104], v[60:61], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[103:104], v[62:63], v[44:51] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[1:2], v98 offset:16384
	ds_load_b64 v[3:4], v97 offset:16384
	ds_load_b64 v[5:6], v96 offset:16384
	ds_load_b64 v[7:8], v95 offset:16384
	ds_load_b64 v[28:29], v94 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[86:87], v[20:27] neg_lo:[1,1,0]
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[1:2], v11 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[68:69], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[70:71], v[20:27] neg_lo:[1,1,0]
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[3:4], v10 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[64:65], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[66:67], v[20:27] neg_lo:[1,1,0]
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[5:6], v9 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[7:8], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[7:8], v[78:79], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[80:81], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[82:83], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[72:73], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[74:75], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[56:57], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[58:59], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[60:61], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[62:63], v[20:27] neg_lo:[1,1,0]
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v52 :: v_dual_mov_b32 v41, v53
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	v_dual_mov_b32 v42, v54 :: v_dual_mov_b32 v43, v55
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
.LBB0_12:                               ; %._crit_edge43
	.loc	1 169 22 is_stmt 1              ; generate_amdgcn.py:169:22
	v_or_b32_e32 v2, s26, v93
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v90
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s0, s2, s25
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v9, 32, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_or_b32 v1, v91, 1, v1
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v11, v2, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s15, 0xffff
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 10, v1
	v_or_b32_e32 v6, 8, v1
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 2, v1
	v_or_b32_e32 v10, 4, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s2, v1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v4, 12, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v28, s2, v8
	v_or_b32_e32 v29, s2, v10
	v_or_b32_e32 v30, s2, v7
	v_or_b32_e32 v31, s2, v6
	v_or_b32_e32 v32, s2, v5
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_mov_b32 s20, s14
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v7, s0, v7, 1
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v33, s2, v4
	v_or_b32_e32 v34, s2, v3
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v2
	buffer_load_u16 v35, v2, s[20:23], 0 offen
	v_lshlrev_b32_e32 v2, 1, v28
	v_lshlrev_b32_e32 v28, 1, v29
	v_lshlrev_b32_e32 v29, 1, v30
	v_lshlrev_b32_e32 v30, 1, v31
	v_lshlrev_b32_e32 v31, 1, v32
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	buffer_load_u16 v32, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, s0, v8, 1
	v_add_lshl_u32 v8, s0, v10, 1
	s_clause 0x6
	buffer_load_u16 v10, v1, s[20:23], 0 offen
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v52, v5, s[20:23], 0 offen
	buffer_load_u16 v53, v4, s[20:23], 0 offen
	buffer_load_u16 v54, v3, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v51, v13
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v5, 16, v11
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	s_waitcnt vmcnt(4) lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v9, v8 :: v_dual_lshlrev_b32 v7, 16, v7
	v_dual_mul_f32 v57, v9, v7 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v7, v5, v7
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v11, 16, v32
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v32, 16, v35
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v35, 16, v52
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v53
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v54
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v59, v9, v10
	v_mul_f32_e32 v10, v5, v10
	v_mul_f32_e32 v54, v9, v11
	v_dual_mul_f32 v11, v5, v11 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v1, 1, v33
	v_lshlrev_b32_e32 v3, 1, v34
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v22, v58, v22 :: v_dual_mul_f32 v23, v57, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 175 25 is_stmt 0              ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v56, v9, v6
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_clause 0x6
	buffer_load_u16 v33, v2, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v34, v1, s[20:23], 0 offen
	buffer_load_u16 v55, v3, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v42, v49
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v49, v12
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v50, v14
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v43, v48
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v48, v15
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v49, v11, v49 :: v_dual_mul_f32 v6, v5, v6
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
.Ltmp16:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v20, v54, v20 :: v_dual_mul_f32 v21, v59, v21
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v30
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v30, v9, v32
	v_mul_f32_e32 v32, v5, v32
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v30, v30, v44
	v_mul_f32_e32 v32, v32, v36
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v63, v9, v28 :: v_dual_lshlrev_b32 v14, 16, v34
	v_mul_f32_e32 v61, v9, v12
	v_dual_mul_f32 v54, v9, v14 :: v_dual_lshlrev_b32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v62, v9, v29 :: v_dual_lshlrev_b32 v13, 16, v31
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v55
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v55, v9, v35
	v_mul_f32_e32 v35, v5, v35
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v60, v9, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v24, v56, v24 :: v_dual_mul_f32 v11, v9, v15
	.loc	1 175 25 is_stmt 0              ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v34, v9, v52
	v_mul_f32_e32 v52, v5, v52
	v_mul_f32_e32 v31, v9, v53
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v9, v9, v33
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v25, v55, v25 :: v_dual_mul_f32 v26, v34, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 175 25 is_stmt 0              ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v8, v5, v8 :: v_dual_mul_f32 v27, v31, v27
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v29, v5, v29
	v_mul_f32_e32 v28, v5, v28
	v_dual_mul_f32 v31, v5, v33 :: v_dual_mul_f32 v34, v8, v50
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v33, v10, v51
	v_dual_mul_f32 v16, v6, v16 :: v_dual_mul_f32 v17, v35, v17
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v6, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v35, v9, v45
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v9, v63, v46 :: v_dual_mul_f32 v36, v62, v47
	v_dual_mul_f32 v41, v54, v41 :: v_dual_mul_f32 v40, v11, v40
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v10, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v26
	v_dual_mul_f32 v44, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v24
	v_dual_mul_f32 v46, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v22
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v53, v5, v53 :: v_dual_mul_f32 v8, v7, v48
	.loc	1 175 13 is_stmt 0              ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v18, v52, v18 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v49
	.loc	1 176 44 is_stmt 1              ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v48, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v29, v29, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v11
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v48
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v44
	v_cndmask_b32_e64 v11, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v10
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_cndmask_b32_e64 v48, 0, 0x42800000, s2
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cndmask_b32_e64 v44, 0, 0x42800000, s6
	v_cndmask_b32_e64 v10, 0, 0x42800000, s8
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v23
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v27
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v19, v53, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v31, v31, v37 :: v_dual_mul_f32 v28, v28, v38
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v37, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v34
	v_dual_mul_f32 v39, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v19
	v_dual_mul_f32 v51, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v17
	v_dual_mul_f32 v53, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v21
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v11, v11
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v43, v61, v43 :: v_dual_mul_f32 v42, v60, v42
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v37
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v52
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s7
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v39, 0, 0x42800000, s9
	v_cndmask_b32_e64 v38, 0, 0x42800000, s10
	v_cndmask_b32_e64 v37, 0, 0x42800000, s11
	v_cndmask_b32_e64 v52, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v51
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s8
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v6, v6, v54
	v_ldexp_f32 v47, v47, v57
	v_ldexp_f32 v45, v45, v59
	v_ldexp_f32 v11, v11, v61
	v_cndmask_b32_e64 v51, 0, 0x42800000, s14
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v34
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v17
	v_ldexp_f32 v7, v7, v55
	v_ldexp_f32 v48, v48, v56
	v_ldexp_f32 v46, v46, v58
	v_ldexp_f32 v10, v10, v62
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_add_f32 v55, 1.0, v11
	v_add_f32_e32 v11, 1.0, v45
	v_add_f32_e32 v45, 1.0, v47
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v18 :: v_dual_add_f32 v54, 1.0, v7
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v44, v44, v60
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v7, 1.0, v10
	v_add_f32_e32 v10, 1.0, v46
	v_add_f32_e32 v46, 1.0, v48
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v60, null, v45, v45, v22
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v53
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v82, v60
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_ldexp_f32 v38, v38, v64
	v_ldexp_f32 v37, v37, v65
	v_ldexp_f32 v52, v52, v67
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v16
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_add_f32 v38, 1.0, v38
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v56, null, v54, v54, v49
	v_fma_f32 v100, -v60, v82, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v47, 1.0, v52
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v52, null, v6, v6, v20
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v19
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v51, v51
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v58, null, v46, v46, v21
	v_div_scale_f32 v74, null, v38, v38, v34
	v_rcp_f32_e32 v79, v52
	v_rcp_f32_e32 v80, v56
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s14
	v_ldexp_f32 v39, v39, v63
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v62, null, v10, v10, v23
	v_div_scale_f32 v64, null, v11, v11, v24
	v_rcp_f32_e32 v81, v58
	v_rcp_f32_e32 v95, v74
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v53, v53, v66
	v_ldexp_f32 v51, v51, v68
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v66, null, v44, v44, v25
	v_div_scale_f32 v68, null, v55, v55, v26
	v_rcp_f32_e32 v83, v62
	v_rcp_f32_e32 v84, v64
	v_fma_f32 v97, -v52, v79, 1.0
	v_fma_f32 v98, -v56, v80, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v48, 1.0, v53
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v57, s2, v49, v54, v49
	v_div_scale_f32 v70, null, v7, v7, v27
	v_div_scale_f32 v72, null, v39, v39, v33
	v_rcp_f32_e32 v85, v66
	v_rcp_f32_e32 v86, v68
	v_fma_f32 v99, -v58, v81, 1.0
	v_fma_f32 v107, -v74, v95, 1.0
	v_dual_fmac_f32 v79, v97, v79 :: v_dual_fmac_f32 v80, v98, v80
	v_div_scale_f32 v53, s1, v20, v6, v20
	v_div_scale_f32 v59, vcc_lo, v21, v46, v21
	v_div_scale_f32 v76, null, v37, v37, v8
	v_rcp_f32_e32 v87, v70
	v_rcp_f32_e32 v94, v72
	v_fma_f32 v101, -v62, v83, 1.0
	v_fma_f32 v102, -v64, v84, 1.0
	v_fmac_f32_e32 v81, v99, v81
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v98, v57, v80
	v_div_scale_f32 v61, s3, v22, v45, v22
	v_fmac_f32_e32 v82, v100, v82
	v_div_scale_f32 v63, s4, v23, v10, v23
	v_div_scale_f32 v65, s5, v24, v11, v24
	v_rcp_f32_e32 v96, v76
	v_fma_f32 v103, -v66, v85, 1.0
	v_fma_f32 v104, -v68, v86, 1.0
	v_dual_fmac_f32 v83, v101, v83 :: v_dual_fmac_f32 v84, v102, v84
	v_dual_mul_f32 v99, v59, v81 :: v_dual_mul_f32 v100, v61, v82
	v_fma_f32 v110, -v56, v98, v57
	v_mul_f32_e32 v97, v53, v79
	v_div_scale_f32 v67, s6, v25, v44, v25
	v_fma_f32 v105, -v70, v87, 1.0
	v_fma_f32 v106, -v72, v94, 1.0
	v_dual_fmac_f32 v85, v103, v85 :: v_dual_fmac_f32 v86, v104, v86
	v_dual_mul_f32 v101, v63, v83 :: v_dual_mul_f32 v102, v65, v84
	v_fma_f32 v111, -v58, v99, v59
	v_fmac_f32_e32 v98, v110, v80
	v_fma_f32 v109, -v52, v97, v53
	v_div_scale_f32 v69, s7, v26, v55, v26
	v_fma_f32 v112, -v60, v100, v61
	v_div_scale_f32 v71, s8, v27, v7, v27
	v_div_scale_f32 v73, s9, v33, v39, v33
	v_fma_f32 v108, -v76, v96, 1.0
	v_dual_fmac_f32 v87, v105, v87 :: v_dual_fmac_f32 v94, v106, v94
	v_dual_mul_f32 v103, v67, v85 :: v_dual_mul_f32 v104, v69, v86
	v_fma_f32 v114, -v64, v102, v65
	v_dual_fmac_f32 v97, v109, v79 :: v_dual_fmac_f32 v100, v112, v82
	v_fmac_f32_e32 v99, v111, v81
	v_fma_f32 v113, -v62, v101, v63
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_mul_f32 v105, v71, v87
	v_mul_f32_e32 v106, v73, v94
	v_fma_f32 v109, -v66, v103, v67
	v_fmac_f32_e32 v102, v114, v84
	v_fma_f32 v52, -v52, v97, v53
	v_fma_f32 v53, -v56, v98, v57
	v_fma_f32 v56, -v58, v99, v59
	v_fma_f32 v110, -v68, v104, v69
	v_fmac_f32_e32 v101, v113, v83
	v_fma_f32 v57, -v60, v100, v61
	v_div_scale_f32 v75, s10, v34, v38, v34
	v_fma_f32 v112, -v72, v106, v73
	v_fmac_f32_e32 v103, v109, v85
	v_div_fmas_f32 v56, v56, v81, v99
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v77, s11, v8, v37, v8
	v_fmac_f32_e32 v104, v110, v86
	v_fma_f32 v58, -v62, v101, v63
	v_div_fmas_f32 v57, v57, v82, v100
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v59, -v64, v102, v65
	v_div_fmas_f32 v52, v52, v79, v97
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v107, v75, v95 :: v_dual_mul_f32 v108, v77, v96
	v_fmac_f32_e32 v106, v112, v94
	v_fma_f32 v60, -v66, v103, v67
	v_fma_f32 v111, -v70, v105, v71
	v_div_fixup_f32 v21, v56, v46, v21
	v_div_fmas_f32 v46, v58, v83, v101
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v22, v57, v45, v22
	v_div_fmas_f32 v45, v59, v84, v102
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v113, -v74, v107, v75
	v_fma_f32 v61, -v68, v104, v69
	v_div_fixup_f32 v6, v52, v6, v20
	v_div_fmas_f32 v20, v60, v85, v103
	v_fma_f32 v114, -v76, v108, v77
	v_fmac_f32_e32 v105, v111, v87
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v23, v46, v10, v23
	v_div_fmas_f32 v46, v61, v86, v104
	v_div_fixup_f32 v20, v20, v44, v25
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v10, v9, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v9, v45, v11, v24
	v_dual_fmac_f32 v107, v113, v95 :: v_dual_fmac_f32 v108, v114, v96
	v_fma_f32 v62, -v70, v105, v71
	v_fma_f32 v63, -v72, v106, v73
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v46, v55, v26
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v11, v30, v6 :: v_dual_mul_f32 v6, v43, v9
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v64, -v74, v107, v75
	v_div_fmas_f32 v22, v62, v87, v105
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v65, -v76, v108, v77
	v_div_fmas_f32 v24, v63, v94, v106
	s_mov_b32 vcc_lo, s10
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v50, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v26, v64, v95, v107
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v78, null, v48, v48, v16
	v_div_fmas_f32 v30, v53, v80, v98
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v9, v22, v7, v27
	v_div_fmas_f32 v44, v65, v96, v108
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v7, v42, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v24, v39, v33
	v_div_fixup_f32 v24, v26, v38, v34
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v22, v44, v37, v8
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v8, v41, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v25, v30, v54, v49
	v_rcp_f32_e32 v27, v78
	v_div_scale_f32 v30, null, v47, v47, v17
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v26, v50, v26
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v9, v40, v9 :: v_dual_mul_f32 v22, v29, v22
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v29, 1.0, v51
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v25, v32, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v32, v30
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v34, -v78, v27, 1.0
	v_div_scale_f32 v33, null, v29, v29, v18
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v24, v28, v24
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v28, null, v26, v26, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v33
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, vcc_lo, v16, v48, v16
	v_fma_f32 v38, -v30, v32, 1.0
	v_rcp_f32_e32 v39, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v14, v5, v14 :: v_dual_mul_f32 v41, v34, v27
	v_dual_mul_f32 v13, v5, v13 :: v_dual_fmac_f32 v32, v38, v32
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v38, s0, v17, v47, v17
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v15, v5, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v40, -v33, v37, 1.0
	v_fma_f32 v43, -v78, v41, v34
	v_mul_f32_e32 v44, v38, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v28, v39, 1.0
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v1, v15, v1 :: v_dual_mul_f32 v2, v14, v2
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fmac_f32_e32 v41, v43, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v43, -v30, v44, v38
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s1, v18, v29, v18
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, s2, v19, v26, v19
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v5, v5, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_dual_fmac_f32 v44, v43, v32 :: v_dual_mul_f32 v45, v40, v37
	v_mul_f32_e32 v49, v42, v39
	v_fma_f32 v12, -v78, v41, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v5, v4
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v15, v31, v20
	.loc	1 176 26 is_stmt 0              ; generate_amdgcn.py:176:26
	v_fma_f32 v46, -v33, v45, v40
	v_fma_f32 v34, -v28, v49, v42
	v_div_fmas_f32 v12, v12, v27, v41
	v_fma_f32 v27, -v30, v44, v38
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v45, v46, v37
	v_dual_fmac_f32 v49, v34, v39 :: v_dual_lshlrev_b32 v20, 7, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v32, v44
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v33, v45, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v28, -v28, v49, v42
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v13, v3
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v13, v27, v47, v17
	v_div_fixup_f32 v12, v12, v48, v16
	v_div_fmas_f32 v30, v30, v37, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v17, v35, v21
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v28, v28, v39, v49
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v13, v3, v13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v14, v30, v29, v18
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v12, v4, v12
	v_mul_f32_e32 v3, v36, v23
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v5, v28, v26, v19
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v19, |v8|, |v9|
.Ltmp18:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v14, v2, v14
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v22|, |v12|, |v13|
	v_max3_f32 v18, |v3|, |v6|, |v7|
.Ltmp20:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v16, v1, v5
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, |v25|, |v15|, |v24|
	v_max3_f32 v5, |v11|, |v17|, |v10|
	s_mov_b32 s8, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e64 v4, |v14|, |v16|
	v_max3_f32 v5, v5, v18, v19
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v19, 2, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v1, v2, v4
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v1, 3, v93
	v_permlanex16_b32 v18, v5, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v4, v2, s8, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v21, v1, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v18, 0, v20, v21
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v2, v4
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v90, 2, v1
	ds_store_b64 v18, v[4:5]
	v_xad_u32 v2, v2, v19, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v4
	v_mov_b32_e32 v18, v5
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v4, v2
	v_dual_max_f32 v4, v5, v18 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v18
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v2, v2, v5 :: v_dual_max_f32 v5, v4, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v5
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v5, v5, v18 :: v_dual_mov_b32 v4, v2
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v18, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v2, 0, v19
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v18
.Ltmp43:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v2, v4, v4
	v_max_f32_e32 v4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v26, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v19, v5
	v_rcp_f32_e32 v20, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v21, -v5, v19, 1.0
	v_fma_f32 v23, -v18, v20, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v21, v19
	v_div_scale_f32 v21, s0, v4, 0x40e00000, v4
	v_dual_fmac_f32 v20, v23, v20 :: v_dual_mul_f32 v23, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, v21, v20
	v_fma_f32 v28, -v5, v23, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v18, v27, v21
	v_fmac_f32_e32 v23, v28, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v29, v20
	v_fma_f32 v5, -v5, v23, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v18, v27, v21
	v_div_fmas_f32 v5, v5, v19, v23
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v20, v27
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v18, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v5, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v18, v4, 16, 1
	v_add3_u32 v19, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v4, v18, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0xffff0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0xffff0000, v20
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.l, v20.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v4, v4, v24
	v_div_scale_f32 v28, s1, v24, v4, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v39, null, v5, v5, v11
	v_rcp_f32_e32 v45, v27
	v_div_scale_f32 v40, s7, v11, v5, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v42, null, v5, v5, v10
	v_div_scale_f32 v41, null, v5, v5, v17
	v_fma_f32 v55, -v27, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v52, v41
	v_fma_f32 v61, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v55, v45
	v_fmac_f32_e32 v51, v61, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v55, v28, v45
	v_div_scale_f32 v18, null, v4, v4, v25
	v_div_scale_f32 v35, null, v4, v4, v14
	v_div_scale_f32 v23, null, v4, v4, v15
	v_rcp_f32_e32 v43, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v35
	v_div_scale_f32 v29, null, v4, v4, v22
	v_rcp_f32_e32 v44, v23
	v_div_scale_f32 v31, null, v4, v4, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v29
	v_div_scale_f32 v21, vcc_lo, v25, v4, v25
	v_fma_f32 v53, -v18, v43, 1.0
	v_fma_f32 v59, -v35, v49, 1.0
	v_rcp_f32_e32 v47, v31
	v_div_scale_f32 v36, s5, v14, v4, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v43, v53, v43
	v_fma_f32 v54, -v23, v44, 1.0
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v33, null, v4, v4, v13
	v_fma_f32 v56, -v29, v46, 1.0
	v_mul_f32_e32 v53, v21, v43
	v_div_scale_f32 v26, s0, v15, v4, v15
	v_dual_fmac_f32 v44, v54, v44 :: v_dual_mul_f32 v59, v36, v49
	v_rcp_f32_e32 v48, v33
	v_div_scale_f32 v30, s2, v22, v4, v22
	v_div_scale_f32 v37, null, v4, v4, v16
	v_fma_f32 v57, -v31, v47, 1.0
	v_fma_f32 v61, -v18, v53, v21
	v_fmac_f32_e32 v46, v56, v46
	v_fma_f32 v67, -v35, v59, v36
	v_mul_f32_e32 v54, v26, v44
	v_div_scale_f32 v32, s3, v12, v4, v12
	v_rcp_f32_e32 v50, v37
	v_fmac_f32_e32 v47, v57, v47
	v_dual_fmac_f32 v53, v61, v43 :: v_dual_mul_f32 v56, v30, v46
	v_fmac_f32_e32 v59, v67, v49
	v_fma_f32 v62, -v23, v54, v26
	v_fma_f32 v58, -v33, v48, 1.0
	v_fma_f32 v63, -v27, v55, v28
	v_dual_mul_f32 v57, v32, v47 :: v_dual_and_b32 v2, 16, v0
	v_fma_f32 v64, -v29, v56, v30
	v_fmac_f32_e32 v54, v62, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v48, v58, v48 :: v_dual_fmac_f32 v55, v63, v45
	v_fma_f32 v18, -v18, v53, v21
	v_fma_f32 v60, -v37, v50, 1.0
	v_fma_f32 v65, -v31, v57, v32
	v_fmac_f32_e32 v56, v64, v46
	v_fma_f32 v21, -v23, v54, v26
	v_fma_f32 v23, -v27, v55, v28
	v_div_fmas_f32 v18, v18, v43, v53
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v38, s6, v16, v4, v16
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v57, v65, v47
	v_fma_f32 v26, -v29, v56, v30
	v_div_fmas_f32 v21, v21, v44, v54
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v60, v38, v50
	v_div_fmas_f32 v23, v23, v45, v55
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v27, -v31, v57, v32
	v_div_fixup_f32 v18, v18, v4, v25
	v_div_fmas_f32 v25, v26, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v34, s4, v13, v4, v13
	v_div_fixup_f32 v15, v21, v4, v15
	v_div_fmas_f32 v21, v27, v47, v57
	v_div_fixup_f32 v22, v25, v4, v22
	v_fma_f32 v25, -v37, v60, v38
	v_rcp_f32_e32 v26, v42
	v_mul_f32_e32 v27, v40, v51
	v_div_fixup_f32 v12, v21, v4, v12
	v_fma_f32 v21, -v41, v52, 1.0
	v_fmac_f32_e32 v60, v25, v50
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v25, -v39, v27, v40
	v_mul_f32_e32 v58, v34, v48
	v_fmac_f32_e32 v52, v21, v52
	v_div_scale_f32 v21, s0, v17, v5, v17
	v_fma_f32 v29, -v42, v26, 1.0
	v_fmac_f32_e32 v27, v25, v51
	v_fma_f32 v66, -v33, v58, v34
	v_div_fixup_f32 v23, v23, v4, v24
	v_fma_f32 v30, -v37, v60, v38
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, s1, v10, v5, v10
	v_fmac_f32_e32 v58, v66, v48
	v_fma_f32 v31, -v39, v27, v40
	v_div_scale_f32 v32, null, v5, v5, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v33, v58, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v28, v48, v58
	v_mul_f32_e32 v28, v21, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v13, v24, v4, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v41, v28, v21
	v_fma_f32 v24, -v35, v59, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v25, v52
	v_mul_f32_e32 v25, v29, v26
	v_div_fmas_f32 v24, v24, v49, v59
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v30, v30, v50, v60
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v41, v28, v21
	v_div_fmas_f32 v27, v31, v51, v27
	v_fma_f32 v31, -v42, v25, v29
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v24, v4, v14
	v_div_fixup_f32 v4, v30, v4, v16
	v_fma_f32 v24, -v32, v33, 1.0
	v_fmac_f32_e32 v25, v31, v26
	v_div_scale_f32 v31, null, v5, v5, v9
	v_div_fixup_f32 v11, v27, v5, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v24, v33
	v_div_scale_f32 v24, null, v5, v5, v7
	v_rcp_f32_e32 v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v31, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v39, v35
	v_div_fmas_f32 v21, v21, v52, v28
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v39, s3, v9, v5, v9
	v_div_fixup_f32 v16, v21, v5, v17
	v_fma_f32 v17, -v42, v25, v29
	v_div_scale_f32 v21, null, v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v39, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v17, v17, v26, v25
	v_div_scale_f32 v27, vcc_lo, v3, v5, v3
	v_rcp_f32_e32 v25, v21
	v_div_scale_f32 v26, null, v5, v5, v8
	v_mul_f32_e32 v30, v27, v33
	v_div_fixup_f32 v10, v17, v5, v10
	v_fma_f32 v34, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v29, v26
	v_fma_f32 v36, -v32, v30, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v17, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v36, v33
	v_fmac_f32_e32 v25, v17, v25
	v_div_scale_f32 v17, s0, v6, v5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v32, v30, v27
	v_fma_f32 v37, -v26, v29, 1.0
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, s1, v7, v5, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v33, v30
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v29, v37, v29
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v37, s2, v8, v5, v8
	v_mul_f32_e32 v40, v34, v28
	v_div_fixup_f32 v3, v27, v5, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v38, v17, v25
	v_mul_f32_e32 v41, v37, v29
	v_fma_f32 v32, -v24, v40, v34
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 15, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v36, -v21, v38, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v40, v32, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v36, v25
	v_fma_f32 v36, -v26, v41, v37
	v_fma_f32 v24, -v24, v40, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v17, -v21, v38, v17
	v_fma_f32 v21, -v31, v42, v39
	v_fmac_f32_e32 v41, v36, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v17, v17, v25, v38
	v_fmac_f32_e32 v42, v21, v35
	v_fma_f32 v21, -v26, v41, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v28, v40
	v_fma_f32 v25, -v31, v42, v39
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v17, v5, v6
	v_div_fmas_f32 v21, v21, v29, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v24, v5, v7
	v_div_fmas_f32 v25, v25, v35, v42
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v21, v5, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v5, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v18
	v_rndne_f32_e32 v18, v22
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v21, v4
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v23, v3
	v_cvt_i32_f32_e32 v24, v6
	v_and_b32_e32 v6, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 5, v0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v22, v10
	v_cvt_i32_f32_e32 v25, v7
	v_cvt_i32_f32_e32 v27, v5
	v_and_b32_e32 v3, 15, v9
	v_and_b32_e32 v5, 15, v17
	v_and_b32_e32 v7, 15, v12
	v_and_b32_e32 v9, 15, v14
	v_and_b32_e32 v12, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0x60, v0
	v_and_or_b32 v17, 0x600, v92, v88
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 0x3000, v15
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v18, 0x60, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v8
	v_and_b32_e32 v8, 15, v13
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v13, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 7, v2
	v_xor_b32_e32 v22, v17, v16
	v_add_nc_u32_e32 v28, 0, v15
	v_and_or_b32 v23, 0x3600, v23, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v17, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v21, v28, v21, v22
	v_xad_u32 v22, v23, v89, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v21, v[3:6]
	ds_store_b128 v21, v[11:14] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v22
	ds_load_b128 v[11:14], v22 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[7:10]
	ds_store_b128 v21, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v22
	ds_load_b128 v[15:18], v22 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v21.h, 0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v21.l, v19.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.h, v21.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v21, v19, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v11, 4, v3
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s24, 7, v1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v10, s26, v91
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v1.l, 8, v5.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v9.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v10, s0, v[3:4]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s25, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v12.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v11.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v8.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v6.l
	v_lshlrev_b16 v2.l, 8, v7.l
	v_or_b16 v4.l, v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v5, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s24, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v6, v21, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp44:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 115
		.amdhsa_next_free_sgpr 28
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 115
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12192
; TotalNumSgprs: 30
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 30
; NumVGPRsForWavesPerEU: 115
; Occupancy: 12
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
	.byte	5                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x8a DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x64 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6d:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x79:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x85:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
