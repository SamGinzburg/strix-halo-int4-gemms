	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v60, 15, v0
	v_and_b32_e32 v57, 0x1f0, v0
	s_load_b32 s21, s[0:1], 0x38
	v_and_b32_e32 v19, 7, v0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_lshlrev_b32_e32 v59, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v56, 4, v60
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshrrev_b32_e32 v20, 3, v57
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v58, 0x1e0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v2, 2, v19
	v_or_b32_e32 v69, 0x3f0, v0
	v_or_b32_e32 v70, 0x7f0, v0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v52, 0, v59
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
	s_sub_i32 s9, s9, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s10, s12, s9
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s8, s9, s8
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s10, s10, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s8
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s11, s10
	s_cvt_f32_u32 s12, s11
	s_sub_i32 s13, 0, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mul_lo_u32 v1, s24, v1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s8, s12, s13
	s_abs_i32 s13, s2
	s_add_i32 s12, s12, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s13, s12
	s_xor_b32 s12, s2, s10
	s_mul_i32 s14, s8, s11
	s_ashr_i32 s12, s12, 31
	s_sub_i32 s13, s13, s14
	s_add_i32 s14, s8, 1
	s_sub_i32 s15, s13, s11
	s_cmp_ge_u32 s13, s11
	s_cselect_b32 s8, s14, s8
	s_cselect_b32 s13, s15, s13
	s_add_i32 s14, s8, 1
	s_cmp_ge_u32 s13, s11
	s_cselect_b32 s8, s14, s8
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s20, s25, 1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s8, s8, s12
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[49:50], null, s20, v20, v[56:57]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s26, s8, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s8, s26, s10
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s10, s3, 6
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s8
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s28, s26, 8
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s9
	s_mov_b64 s[8:9], s[6:7]
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s27, s2, 5
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s2, s20, s10
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_add3_u32 v50, v1, v2, s27
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v3, s28, s2, v49
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s21, 1
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s2, -1, 0
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[1:2], null, s24, s10, v[50:51]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v2, s20, v3
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v11, s25, v3
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s10, s6
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v12, s20, v11
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s11, s7
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[8:11], 0 offen
	buffer_load_b128 v[7:10], v2, s[8:11], 0 offen
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v15, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[11:14], v2, s[8:11], 0 offen
	buffer_load_b128 v[15:18], v15, s[8:11], 0 offen
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_and_b32 s5, s5, 0xffff
	v_and_b32_e32 v2, 56, v59
	s_mov_b32 s10, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s21, 0x81
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b32 v35, v1, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b32_e32 v1, 3, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v1, v1, v20
	v_lshl_or_b32 v19, v60, 10, v1
	v_lshrrev_b32_e32 v1, 2, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v53, 0, v19
	v_xor_b32_e32 v20, 0x88, v19
	v_xor_b32_e32 v21, 0x110, v19
	v_xor_b32_e32 v22, 0x198, v19
	v_xor_b32_e32 v23, 0x220, v19
	v_xor_b32_e32 v24, 0x2a8, v19
	v_xor_b32_e32 v25, 0x330, v19
	v_xor_b32_e32 v19, 0x3b8, v19
	v_add_nc_u32_e32 v54, 0, v20
	v_add_nc_u32_e32 v55, 0, v21
	v_add_nc_u32_e32 v73, 0, v24
	v_add_nc_u32_e32 v71, 0, v22
	v_add_nc_u32_e32 v75, 0, v19
	v_add_nc_u32_e32 v72, 0, v23
	v_add_nc_u32_e32 v74, 0, v25
	s_waitcnt vmcnt(3)
	v_perm_b32 v19, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v20, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v21, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v24, v15, v11, 0x5010400
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_perm_b32 v22, v10, v6, 0x5010400
	v_perm_b32 v23, v10, v6, 0x7030602
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v25, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v26, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v27, v18, v14, 0x5010400
	v_perm_b32 v28, v18, v14, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v29, 8, v19
	v_lshrrev_b32_e32 v30, 24, v19
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v46, 8, v24
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v31, 8, v7
	v_lshrrev_b32_e32 v32, 24, v7
	v_lshrrev_b32_e32 v33, 8, v20
	v_lshrrev_b32_e32 v34, 24, v20
	v_lshrrev_b32_e32 v36, 8, v8
	v_lshrrev_b32_e32 v37, 24, v8
	v_lshrrev_b32_e32 v38, 8, v21
	v_lshrrev_b32_e32 v39, 24, v21
	v_lshrrev_b32_e32 v40, 8, v9
	v_lshrrev_b32_e32 v41, 24, v9
	v_lshrrev_b32_e32 v42, 8, v22
	v_lshrrev_b32_e32 v43, 24, v22
	v_lshrrev_b32_e32 v44, 8, v23
	v_lshrrev_b32_e32 v45, 24, v23
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v47, 24, v24
	v_lshrrev_b32_e32 v48, 8, v15
	v_lshrrev_b32_e32 v51, 24, v15
	v_lshrrev_b32_e32 v61, 8, v25
	v_lshrrev_b32_e32 v62, 24, v25
	v_lshrrev_b32_e32 v63, 8, v16
	v_lshrrev_b32_e32 v64, 24, v16
	v_lshrrev_b32_e32 v65, 8, v26
	v_lshrrev_b32_e32 v66, 24, v26
	v_lshrrev_b32_e32 v67, 8, v17
	v_lshrrev_b32_e32 v68, 24, v17
	v_lshrrev_b32_e32 v76, 8, v27
	v_lshrrev_b32_e32 v77, 24, v27
	v_lshrrev_b32_e32 v78, 8, v28
	v_lshrrev_b32_e32 v79, 24, v28
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v3.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v29.l
	v_and_b16 v3.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v30.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v11.l, 0xff, v24.l
	v_and_b16 v14.l, 0xff, v16.l
	v_and_b16 v16.l, 0xff, v17.l
	v_and_b16 v17.l, 0xff, v27.l
	v_lshlrev_b16 v27.l, 8, v46.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v4.l, 0xff, v7.l
	v_and_b16 v5.l, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v31.l
	v_and_b16 v4.h, 0xff, v7.h
	v_and_b16 v5.h, 0xff, v20.h
	v_and_b16 v6.l, 0xff, v8.l
	v_and_b16 v6.h, 0xff, v8.h
	v_and_b16 v7.l, 0xff, v21.l
	v_and_b16 v7.h, 0xff, v21.h
	v_and_b16 v8.l, 0xff, v9.l
	v_and_b16 v8.h, 0xff, v9.h
	v_and_b16 v9.l, 0xff, v22.l
	v_and_b16 v9.h, 0xff, v22.h
	v_and_b16 v10.l, 0xff, v23.l
	v_and_b16 v10.h, 0xff, v23.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v11.h, 0xff, v24.h
	v_and_b16 v12.l, 0xff, v15.l
	v_and_b16 v12.h, 0xff, v15.h
	v_and_b16 v13.l, 0xff, v25.l
	v_and_b16 v13.h, 0xff, v25.h
	v_and_b16 v14.h, 0xff, v16.h
	v_and_b16 v15.l, 0xff, v26.l
	v_and_b16 v15.h, 0xff, v26.h
	v_and_b16 v16.h, 0xff, v17.h
	v_and_b16 v17.h, 0xff, v27.h
	v_and_b16 v18.l, 0xff, v28.l
	v_and_b16 v18.h, 0xff, v28.h
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b16 v20.h, 8, v32.l
	v_lshlrev_b16 v21.l, 8, v33.l
	v_lshlrev_b16 v21.h, 8, v34.l
	v_lshlrev_b16 v22.l, 8, v36.l
	v_lshlrev_b16 v22.h, 8, v37.l
	v_lshlrev_b16 v23.l, 8, v38.l
	v_lshlrev_b16 v23.h, 8, v39.l
	v_lshlrev_b16 v24.l, 8, v40.l
	v_lshlrev_b16 v24.h, 8, v41.l
	v_lshlrev_b16 v25.l, 8, v42.l
	v_lshlrev_b16 v25.h, 8, v43.l
	v_lshlrev_b16 v26.l, 8, v44.l
	v_lshlrev_b16 v26.h, 8, v45.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v27.h, 8, v47.l
	v_lshlrev_b16 v28.l, 8, v48.l
	v_lshlrev_b16 v28.h, 8, v51.l
	v_lshlrev_b16 v29.l, 8, v61.l
	v_lshlrev_b16 v29.h, 8, v62.l
	v_lshlrev_b16 v30.l, 8, v63.l
	v_lshlrev_b16 v30.h, 8, v64.l
	v_lshlrev_b16 v31.l, 8, v65.l
	v_lshlrev_b16 v31.h, 8, v66.l
	v_lshlrev_b16 v32.l, 8, v67.l
	v_lshlrev_b16 v32.h, 8, v68.l
	v_lshlrev_b16 v33.l, 8, v76.l
	v_lshlrev_b16 v33.h, 8, v77.l
	v_lshlrev_b16 v34.l, 8, v78.l
	v_lshlrev_b16 v34.h, 8, v79.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v3.h, v3.h, v19.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_or_b16 v11.l, v11.l, v27.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v4.l, v4.l, v20.l
	v_or_b16 v4.h, v4.h, v20.h
	v_or_b16 v5.l, v5.l, v21.l
	v_or_b16 v5.h, v5.h, v21.h
	v_or_b16 v6.l, v6.l, v22.l
	v_or_b16 v6.h, v6.h, v22.h
	v_or_b16 v7.l, v7.l, v23.l
	v_or_b16 v7.h, v7.h, v23.h
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v8.h, v8.h, v24.h
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_or_b16 v11.h, v11.h, v27.h
	v_or_b16 v12.l, v12.l, v28.l
	v_or_b16 v12.h, v12.h, v28.h
	v_or_b16 v13.l, v13.l, v29.l
	v_or_b16 v13.h, v13.h, v29.h
	v_or_b16 v14.l, v14.l, v30.l
	v_or_b16 v14.h, v14.h, v30.h
	v_or_b16 v15.l, v15.l, v31.l
	v_or_b16 v15.h, v15.h, v31.h
	v_or_b16 v16.l, v16.l, v32.l
	v_or_b16 v16.h, v16.h, v32.h
	v_or_b16 v17.l, v17.l, v33.l
	v_or_b16 v17.h, v17.h, v33.h
	v_or_b16 v18.l, v18.l, v34.l
	v_or_b16 v18.h, v18.h, v34.h
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v52, v35 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v53, v3
	ds_store_b16_d16_hi v53, v3 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v53, v11 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v54, v4
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v53, v11 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v54, v4 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v54, v12 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v55, v5
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v54, v12 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v55, v5 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v55, v13 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v71, v6
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v55, v13 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v71, v6 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v71, v14 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v72, v7
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v71, v14 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v72, v7 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v72, v15 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v73, v8
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v72, v15 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v73, v8 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v73, v16 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v74, v9
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v73, v16 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v74, v9 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v74, v17 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v75, v10
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v74, v17 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v75, v10 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v75, v18 offset:16384
	ds_store_b16_d16_hi v75, v18 offset:16448
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b32_e32 v3, 56, v1
	v_lshl_or_b32 v4, v58, 5, v2
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_or_b32_e32 v37, 0x3f0, v0
	v_or_b32_e32 v36, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v3, v4, v3
	v_lshl_or_b32 v51, v60, 6, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v61, 8, v51
	v_xor_b32_e32 v62, 16, v51
	v_xor_b32_e32 v63, 24, v51
	v_xor_b32_e32 v64, 32, v51
	v_xor_b32_e32 v65, 40, v51
	v_xor_b32_e32 v66, 48, v51
	v_xor_b32_e32 v67, 56, v51
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
.LBB0_3:                                ; %Flow
	s_load_b256 s[12:19], s[0:1], 0x10
	v_add_nc_u32_e32 v68, 0, v60
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v1, 56, v1
	v_lshl_or_b32 v2, v58, 5, v2
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s21, 1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v76, s20, v49
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s1, s1, 63
	v_dual_mov_b32 v14, v12 :: v_dual_add_nc_u32 v77, 0, v69
	v_xor_b32_e32 v1, v2, v1
	v_dual_mov_b32 v15, v12 :: v_dual_add_nc_u32 v78, 0, v70
	v_mov_b32_e32 v13, v12
	v_mov_b32_e32 v24, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v51, v60, 6, v1
	v_mov_b32_e32 v25, v12
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v26, v12
	v_mov_b32_e32 v27, v12
	v_xor_b32_e32 v61, 8, v51
	v_xor_b32_e32 v62, 16, v51
	v_xor_b32_e32 v63, 24, v51
	v_xor_b32_e32 v64, 32, v51
	v_xor_b32_e32 v65, 40, v51
	v_xor_b32_e32 v66, 48, v51
	v_xor_b32_e32 v67, 56, v51
	v_add_nc_u32_e32 v79, 0, v51
	v_dual_mov_b32 v17, v12 :: v_dual_add_nc_u32 v80, 0, v61
	v_dual_mov_b32 v18, v12 :: v_dual_add_nc_u32 v81, 0, v62
	v_dual_mov_b32 v19, v12 :: v_dual_add_nc_u32 v82, 0, v63
	v_dual_mov_b32 v20, v12 :: v_dual_add_nc_u32 v83, 0, v64
	v_dual_mov_b32 v21, v12 :: v_dual_add_nc_u32 v84, 0, v65
	v_dual_mov_b32 v22, v12 :: v_dual_add_nc_u32 v85, 0, v66
	v_dual_mov_b32 v23, v12 :: v_dual_add_nc_u32 v86, 0, v67
	v_mov_b32_e32 v1, v12
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
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s1, s1, 6
	s_mov_b32 s10, s6
	s_add_i32 s1, s1, -2
	s_mov_b32 s11, s7
.Ltmp13:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_add_i32 s21, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s22, s21, s3
	s_lshl_b32 s22, s22, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[10:11], null, s22, s24, v[50:51]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s23, s22, s20
	s_add_i32 s22, s23, s28
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v9, s22, v49
	v_add_nc_u32_e32 v46, s22, v76
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b32 v105, v10, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v79 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	ds_load_u8 v10, v68 offset:32992
	ds_load_u8 v11, v68 offset:32928
	ds_load_u8 v40, v68 offset:32896
	ds_load_u8 v41, v68 offset:32960
	ds_load_u8 v42, v68 offset:32832
	ds_load_u8 v43, v68 offset:32768
	ds_load_u8 v44, v68 offset:32800
	ds_load_u8 v45, v68 offset:32864
	ds_load_u8 v47, v68 offset:32976
	ds_load_u8 v87, v68 offset:32944
	ds_load_u8 v88, v68 offset:32912
	ds_load_u8 v89, v68 offset:33056
	ds_load_u8 v90, v68 offset:33024
	ds_load_u8 v92, v68 offset:33088
	ds_load_u8 v93, v68 offset:33104
	ds_load_u8 v94, v68 offset:33072
	ds_load_u8 v95, v68 offset:33040
	ds_load_u8 v96, v68 offset:33008
	ds_load_u8 v97, v68 offset:32784
	ds_load_u8 v98, v68 offset:32848
	ds_load_u8 v99, v68 offset:32816
	ds_load_u8 v100, v68 offset:32880
	ds_load_u8 v101, v68 offset:33184
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v11, v40, v11, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v10, v41, v10, 0xc0c0004
	ds_load_u8 v102, v68 offset:33152
	ds_load_u8 v103, v68 offset:33216
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v42, v45, 0xc0c0004
	v_perm_b32 v41, v43, v44, 0xc0c0004
	v_lshl_or_b32 v11, v10, 16, v11
	ds_load_u8 v45, v68 offset:33280
	ds_load_u8 v43, v68 offset:33248
	ds_load_u8 v44, v68 offset:33312
	ds_load_u8 v104, v78 offset:32768
	v_lshl_or_b32 v10, v40, 16, v41
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v40, v88, v87, 0xc0c0004
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s23, s22, s25
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v41, v47, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[10:11], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v97, v99, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v87, v98, v100, 0xc0c0004
	v_lshl_or_b32 v41, v41, 16, v40
	ds_load_u8 v98, v68 offset:33296
	ds_load_u8 v99, v68 offset:33264
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v48, s23, v49
	v_add_nc_u32_e32 v91, s23, v76
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v40, v87, 16, v96
	ds_load_u8 v87, v68 offset:33360
	ds_load_u8 v96, v68 offset:33328
	ds_load_u8 v97, v68 offset:33168
	ds_load_u8 v42, v68 offset:33120
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v10, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[40:41], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[40:41], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v41, v90, v89, 0xc0c0004
	ds_load_u8 v90, v68 offset:33376
	ds_load_u8 v47, v68 offset:33232
	ds_load_u8 v88, v68 offset:33200
	ds_load_u8 v100, v68 offset:33344
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v80 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v40, v68 offset:33136
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v103, v43, 0xc0c0004
	ds_load_u8 v101, v68 offset:33440
	ds_load_u8 v43, v68 offset:33408
	ds_load_u8 v89, v68 offset:33472
	ds_load_u8 v103, v68 offset:33600
	ds_load_u8 v106, v68 offset:33392
	ds_load_u8 v107, v77 offset:32768
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s0, s1
	s_mov_b32 s0, s21
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v92, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v42, 16, v41
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v47, v47, v99, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v41, v97, v88, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v40, v93, v40, 0xc0c0004
	ds_load_u8 v42, v68 offset:33504
	ds_load_u8 v92, v68 offset:33568
	ds_load_u8 v88, v68 offset:33536
	ds_load_u8 v99, v68 offset:33552
	ds_load_u8 v102, v68 offset:33520
	v_lshl_or_b32 v41, v47, 16, v41
	v_lshl_or_b32 v40, v40, 16, v94
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[10:11], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v87, v106, 0xc0c0004
	ds_load_u8 v47, v68 offset:33616
	ds_load_u8 v94, v68 offset:33584
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[40:41], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[40:41], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v41, v100, v90, 0xc0c0004
	ds_load_u8 v90, v68 offset:33664
	ds_load_u8 v97, v68 offset:33488
	ds_load_u8 v95, v68 offset:33456
	ds_load_u8 v93, v68 offset:33424
	v_perm_b32 v10, v43, v101, 0xc0c0004
	v_perm_b32 v40, v45, v44, 0xc0c0004
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v81 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v11, v89, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	v_lshl_or_b32 v10, v41, 16, v40
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[40:43], v82 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v89, v68 offset:33696
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v97, v102, 0xc0c0004
	ds_load_u8 v97, v68 offset:33632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v44, v93, v95, 0xc0c0004
	v_perm_b32 v95, v98, v96, 0xc0c0004
	ds_load_u8 v93, v68 offset:33760
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[10:11], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32 is_stmt 1              ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v45, v45, 16, v44
	v_lshl_or_b32 v44, v87, 16, v95
	ds_load_u8 v87, v68 offset:33744
	ds_load_u8 v95, v68 offset:33712
	ds_load_u8 v98, v68 offset:33680
	ds_load_u8 v100, v68 offset:33648
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[44:45], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[44:45], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v90, v89, 0xc0c0004
	ds_load_u8 v89, v68 offset:33808
	ds_load_u8 v38, v68 offset:33952
	v_perm_b32 v36, v88, v92, 0xc0c0004
	ds_load_u8 v88, v68 offset:34016
	ds_load_u8 v90, v68 offset:33984
	ds_load_u8 v92, v68 offset:34080
	ds_load_u8 v44, v68 offset:33824
	ds_load_u8 v45, v68 offset:33792
	ds_load_u8 v101, v68 offset:33888
	ds_load_u8 v102, v68 offset:33856
	ds_load_u8 v106, v68 offset:33872
	ds_load_u8 v108, v68 offset:33840
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v103, v97, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v87, v107, 0xc0c0004
	ds_load_u8 v107, v68 offset:34768
	ds_load_u8 v39, v68 offset:33920
	ds_load_u8 v96, v68 offset:33728
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v89, v89, v108, 0xc0c0004
	ds_load_u8 v108, v68 offset:34704
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v96, v93, 0xc0c0004
	ds_load_u8 v93, v68 offset:34048
	ds_load_u8 v96, v68 offset:33936
	v_lshl_or_b32 v11, v11, 16, v10
	v_lshl_or_b32 v10, v37, 16, v36
	v_perm_b32 v36, v99, v94, 0xc0c0004
	v_perm_b32 v37, v47, v100, 0xc0c0004
	v_perm_b32 v94, v98, v95, 0xc0c0004
	ds_load_u8 v95, v68 offset:33968
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[10:11], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[42:43], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v36, v37, 16, v36
	v_lshl_or_b32 v37, v87, 16, v94
	ds_load_u8 v97, v68 offset:34064
	ds_load_u8 v98, v68 offset:34032
	v_perm_b32 v11, v90, v88, 0xc0c0004
	ds_load_u8 v88, v68 offset:34208
	ds_load_u8 v90, v68 offset:34272
	ds_load_u8 v100, v68 offset:34192
	v_wmma_i32_16x16x16_iu4 v[28:35], v[40:41], v[36:37], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[42:43], v[36:37], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v42, v68 offset:34112
	ds_load_u8 v43, v68 offset:34144
	ds_load_u8 v40, v68 offset:33904
	v_perm_b32 v41, v45, v44, 0xc0c0004
	ds_load_u8 v44, v68 offset:34176
	ds_load_u8 v47, v68 offset:34000
	v_perm_b32 v10, v39, v38, 0xc0c0004
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v83 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v45, v102, v101, 0xc0c0004
	ds_load_u8 v87, v68 offset:34128
	ds_load_u8 v94, v68 offset:34096
	ds_load_u8 v101, v68 offset:34320
	ds_load_u8 v102, v68 offset:34288
	v_lshl_or_b32 v11, v11, 16, v10
	v_lshl_or_b32 v10, v45, 16, v41
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v96, v95, 0xc0c0004
	ds_load_u8 v45, v68 offset:34240
	ds_load_u8 v99, v68 offset:34336
	ds_load_u8 v95, v68 offset:34304
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v40, v106, v40, 0xc0c0004
	ds_load_u8 v43, v68 offset:34528
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v47, v98, 0xc0c0004
	ds_load_u8 v98, v68 offset:34224
	v_lshl_or_b32 v40, v40, 16, v89
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[10:11], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32 is_stmt 1              ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v41, v47, 16, v41
	v_perm_b32 v10, v44, v88, 0xc0c0004
	ds_load_u8 v44, v68 offset:34464
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v45, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[40:41], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[40:41], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v103, v68 offset:34368
	ds_load_u8 v106, v68 offset:34400
	ds_load_u8 v40, v68 offset:34160
	ds_load_u8 v90, v68 offset:34688
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v84 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v41, v93, v92, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v93, v68 offset:34784
	ds_load_u8 v47, v68 offset:34384
	ds_load_u8 v89, v68 offset:34352
	v_lshl_or_b32 v10, v42, 16, v41
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v41, v100, v98, 0xc0c0004
	ds_load_u8 v42, v68 offset:34496
	ds_load_u8 v88, v68 offset:34720
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v87, v40, 0xc0c0004
	ds_load_u8 v87, v68 offset:34592
	ds_load_u8 v45, v68 offset:34432
	ds_load_u8 v96, v68 offset:34256
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[10:11], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v40, 16, v94
	.loc	1 167 32 is_stmt 1              ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[10:11], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v10, v68 offset:34448
	ds_load_u8 v11, v68 offset:34416
	v_perm_b32 v95, v95, v99, 0xc0c0004
	v_perm_b32 v99, v103, v106, 0xc0c0004
	ds_load_u8 v103, v68 offset:34672
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v96, v102, 0xc0c0004
	ds_load_u8 v96, v68 offset:34752
	ds_load_u8 v102, v68 offset:34736
	v_perm_b32 v45, v42, v43, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v47, v11, 0xc0c0004
	v_lshl_or_b32 v41, v92, 16, v41
	ds_load_u8 v92, v68 offset:34512
	ds_load_u8 v94, v68 offset:34480
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[40:41], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[40:41], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v40, v68 offset:34544
	ds_load_u8 v36, v68 offset:34560
	ds_load_u8 v37, v68 offset:34656
	ds_load_u8 v38, v68 offset:34624
	ds_load_u8 v97, v68 offset:34640
	ds_load_u8 v98, v68 offset:34608
	ds_load_u8 v100, v68 offset:34576
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v96, v93, 0xc0c0004
	v_perm_b32 v96, v101, v89, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v94, v10, v94, 0xc0c0004
	v_lshl_or_b32 v10, v45, 16, v44
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v87, v36, v87, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[44:47], v46, s[8:11], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v38, v37, 0xc0c0004
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[36:39], v85 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v92, v92, v40, 0xc0c0004
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	buffer_load_b128 v[40:43], v9, s[8:11], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v98, v100, v98, 0xc0c0004
	v_lshl_or_b32 v9, v99, 16, v95
	v_lshl_or_b32 v100, v90, 16, v88
	v_lshl_or_b32 v99, v93, 16, v87
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	buffer_load_b128 v[87:90], v48, s[8:11], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v48, v108, v102, 0xc0c0004
	v_lshl_or_b32 v102, v92, 16, v94
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	buffer_load_b128 v[91:94], v91, s[8:11], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v95, v97, v103, 0xc0c0004
	v_lshl_or_b32 v101, v11, 16, v96
	v_perm_b32 v11, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v103, v95, 16, v98
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[95:98], v86 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v104, v11, 16, v48
	.loc	1 152 22 is_stmt 1              ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[38:39], v[9:10], v[12:19] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[101:102], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[20:27], v[38:39], v[101:102], v[20:27] neg_lo:[1,1,0]
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[99:100], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[95:96], v[103:104], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[97:98], v[99:100], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[97:98], v[103:104], v[20:27] neg_lo:[1,1,0]
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v52, v105 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v10, v44, v40, 0x5010400
	v_perm_b32 v11, v44, v40, 0x7030602
	v_perm_b32 v36, v45, v41, 0x5010400
	v_perm_b32 v37, v45, v41, 0x7030602
	v_perm_b32 v38, v46, v42, 0x5010400
	v_perm_b32 v39, v46, v42, 0x7030602
	v_perm_b32 v40, v47, v43, 0x5010400
	v_perm_b32 v41, v47, v43, 0x7030602
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v46, v93, v89, 0x5010400
	v_perm_b32 v47, v93, v89, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v89, 24, v10
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_perm_b32 v42, v91, v87, 0x5010400
	v_perm_b32 v43, v91, v87, 0x7030602
	v_perm_b32 v44, v92, v88, 0x5010400
	v_perm_b32 v45, v92, v88, 0x7030602
	v_perm_b32 v48, v94, v90, 0x5010400
	v_perm_b32 v87, v94, v90, 0x7030602
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v88, 8, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v90, 8, v11
	v_lshrrev_b32_e32 v91, 24, v11
	v_and_b16 v10.h, 0xff, v11.h
	v_lshrrev_b32_e32 v92, 8, v36
	v_lshrrev_b32_e32 v93, 24, v36
	v_and_b16 v11.h, 0xff, v36.h
	v_lshrrev_b32_e32 v94, 8, v37
	v_lshrrev_b32_e32 v95, 24, v37
	v_and_b16 v36.h, 0xff, v37.h
	v_lshrrev_b32_e32 v96, 8, v38
	v_lshrrev_b32_e32 v97, 24, v38
	v_and_b16 v37.h, 0xff, v38.h
	v_lshlrev_b16 v38.h, 8, v89.l
	v_and_b16 v9.l, 0xff, v10.l
	v_and_b16 v10.l, 0xff, v11.l
	v_and_b16 v11.l, 0xff, v36.l
	v_and_b16 v36.l, 0xff, v37.l
	v_and_b16 v37.l, 0xff, v38.l
	v_lshlrev_b16 v38.l, 8, v88.l
	v_lshrrev_b32_e32 v88, 8, v39
	v_or_b16 v9.h, v9.h, v38.h
	v_lshrrev_b32_e32 v89, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_lshlrev_b16 v39.h, 8, v91.l
	v_or_b16 v9.l, v9.l, v38.l
	v_and_b16 v38.l, 0xff, v39.l
	v_lshlrev_b16 v39.l, 8, v90.l
	v_lshrrev_b32_e32 v90, 8, v40
	v_or_b16 v10.h, v10.h, v39.h
	v_lshlrev_b16 v39.h, 8, v92.l
	v_lshrrev_b32_e32 v91, 24, v40
	v_or_b16 v10.l, v10.l, v39.l
	v_and_b16 v39.l, 0xff, v40.l
	v_lshlrev_b16 v40.l, 8, v93.l
	v_or_b16 v11.l, v11.l, v39.h
	v_and_b16 v39.h, 0xff, v40.h
	v_lshlrev_b16 v40.h, 8, v94.l
	v_lshrrev_b32_e32 v92, 8, v41
	v_lshrrev_b32_e32 v93, 24, v41
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v94, 8, v42
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v11.h, v11.h, v40.l
	v_or_b16 v36.l, v36.l, v40.h
	v_lshlrev_b16 v40.h, 8, v95.l
	v_and_b16 v40.l, 0xff, v41.l
	v_lshlrev_b16 v41.l, 8, v96.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v36.h, v36.h, v40.h
	v_and_b16 v40.h, 0xff, v41.h
	v_lshlrev_b16 v41.h, 8, v97.l
	v_or_b16 v37.l, v37.l, v41.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v41.l, 0xff, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v37.h, v37.h, v41.h
	v_lshlrev_b16 v41.h, 8, v88.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v88, 24, v42
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b16 v42.l, 8, v89.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v89, 8, v43
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v38.l, v38.l, v41.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v41.h, 0xff, v42.h
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b16 v42.h, 8, v90.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v90, 24, v43
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v38.h, v38.h, v42.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v42.l, 0xff, v43.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b16 v43.l, 8, v92.l
	v_or_b16 v39.l, v39.l, v42.h
	v_lshlrev_b16 v42.h, 8, v91.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshrrev_b32_e32 v91, 8, v44
	v_lshrrev_b32_e32 v92, 24, v44
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v40.l, v40.l, v43.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v43.l, 0xff, v44.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v39.h, v39.h, v42.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_and_b16 v42.h, 0xff, v43.h
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b16 v43.h, 8, v93.l
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v44.l, 8, v88.l
	v_lshrrev_b32_e32 v88, 8, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b16 v40.h, v40.h, v43.h
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_lshlrev_b16 v43.h, 8, v94.l
	v_or_b16 v41.h, v41.h, v44.l
	v_and_b16 v44.l, 0xff, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v41.l, v41.l, v43.h
	v_and_b16 v43.h, 0xff, v44.h
	v_lshlrev_b16 v44.h, 8, v89.l
	v_lshrrev_b32_e32 v89, 24, v45
	v_lshlrev_b16 v45.l, 8, v91.l
	v_or_b16 v42.l, v42.l, v44.h
	v_lshlrev_b16 v44.h, 8, v90.l
	v_lshrrev_b32_e32 v90, 8, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v43.l, v43.l, v45.l
	v_and_b16 v45.l, 0xff, v46.l
	v_or_b16 v42.h, v42.h, v44.h
	v_and_b16 v44.h, 0xff, v45.h
	v_lshlrev_b16 v45.h, 8, v92.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v43.h, v43.h, v45.h
	v_lshlrev_b16 v45.h, 8, v88.l
	v_lshrrev_b32_e32 v88, 24, v46
	v_lshlrev_b16 v46.l, 8, v89.l
	v_lshrrev_b32_e32 v89, 8, v47
	v_or_b16 v44.l, v44.l, v45.h
	v_and_b16 v45.h, 0xff, v46.h
	v_lshlrev_b16 v46.h, 8, v90.l
	v_or_b16 v44.h, v44.h, v46.l
	v_and_b16 v46.l, 0xff, v47.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v45.l, v45.l, v46.h
	v_lshlrev_b16 v46.h, 8, v88.l
	v_lshrrev_b32_e32 v88, 24, v47
	v_lshlrev_b16 v47.l, 8, v89.l
	v_lshrrev_b32_e32 v89, 8, v48
	v_or_b16 v45.h, v45.h, v46.h
	v_and_b16 v46.h, 0xff, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v46.l, v46.l, v47.l
	v_lshlrev_b16 v47.l, 8, v88.l
	v_lshlrev_b16 v47.h, 8, v89.l
	v_lshrrev_b32_e32 v88, 24, v48
	v_or_b16 v46.h, v46.h, v47.l
	v_and_b16 v47.l, 0xff, v48.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v48.l, 8, v88.l
	v_lshrrev_b32_e32 v88, 24, v87
	v_or_b16 v47.l, v47.l, v47.h
	v_and_b16 v47.h, 0xff, v48.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v47.h, v47.h, v48.l
	v_lshrrev_b32_e32 v48, 8, v87
	v_and_b16 v48.h, 0xff, v87.l
	v_lshlrev_b16 v87.l, 8, v88.l
	v_lshlrev_b16 v48.l, 8, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v48.l, v48.h, v48.l
	v_and_b16 v48.h, 0xff, v87.h
	v_or_b16 v48.h, v48.h, v87.l
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v53, v9
	ds_store_b16_d16_hi v53, v9 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v53, v41 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v54, v10
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v53, v41 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v54, v10 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v54, v42 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v55, v11
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v54, v42 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v55, v11 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v55, v43 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v71, v36
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v55, v43 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v71, v36 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v71, v44 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v72, v37
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v71, v44 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v72, v37 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v72, v45 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v73, v38
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v72, v45 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v73, v38 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v73, v46 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v74, v39
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v73, v46 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v74, v39 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v74, v47 offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v75, v40
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16_d16_hi v74, v47 offset:16448
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16_d16_hi v75, v40 offset:64
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_store_b16 v75, v48 offset:16384
	ds_store_b16_d16_hi v75, v48 offset:16448
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v55, v8 :: v_dual_mov_b32 v54, v7
	v_dual_mov_b32 v53, v6 :: v_dual_mov_b32 v52, v5
	v_dual_mov_b32 v37, v69 :: v_dual_mov_b32 v36, v70
	s_branch .LBB0_8
.LBB0_7:
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
.LBB0_8:                                ; %._crit_edge
	.loc	1 152 22 is_stmt 1              ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v134, v68 offset:32864
	ds_load_u8_d16 v139, v68 offset:32896
	ds_load_u8_d16 v140, v68 offset:32928
	ds_load_u8_d16 v138, v68 offset:32960
	ds_load_u8_d16 v84, v68 offset:32976
	ds_load_u8_d16 v91, v68 offset:32944
	ds_load_u8_d16 v93, v68 offset:32912
	ds_load_u8_d16 v78, v68 offset:32880
	ds_load_u8_d16 v170, v68 offset:32992
	ds_load_u8_d16 v148, v68 offset:33024
	ds_load_u8_d16 v150, v68 offset:33056
	ds_load_u8_d16 v146, v68 offset:33088
	ds_load_u8_d16 v9, v68 offset:33104
	ds_load_u8_d16 v70, v68 offset:33072
	ds_load_u8_d16 v73, v68 offset:33040
	ds_load_u8_d16 v109, v68 offset:33008
	ds_load_u8_d16 v159, v68 offset:33120
	ds_load_u8_d16 v163, v68 offset:33152
	ds_load_u8_d16 v165, v68 offset:33184
	ds_load_u8_d16 v162, v68 offset:33216
	ds_load_u8_d16 v85, v68 offset:33232
	ds_load_u8_d16 v94, v68 offset:33200
	ds_load_u8_d16 v97, v68 offset:33168
	ds_load_u8_d16 v79, v68 offset:33136
	ds_load_u8_d16 v177, v68 offset:33248
	ds_load_u8_d16 v154, v68 offset:33280
	ds_load_u8_d16 v157, v68 offset:33312
	ds_load_u8_d16 v151, v68 offset:33344
	ds_load_u8_d16 v10, v68 offset:33360
	ds_load_u8_d16 v71, v68 offset:33328
	ds_load_u8_d16 v74, v68 offset:33296
	ds_load_u8_d16 v111, v68 offset:33264
	ds_load_u8_d16 v161, v68 offset:33376
	ds_load_u8_d16 v173, v68 offset:33408
	ds_load_u8_d16 v175, v68 offset:33440
	ds_load_u8_d16 v171, v68 offset:33472
	ds_load_u8_d16 v86, v68 offset:33488
	ds_load_u8_d16 v95, v68 offset:33456
	ds_load_u8_d16 v98, v68 offset:33424
	ds_load_u8_d16 v80, v68 offset:33392
	ds_load_u8_d16 v181, v68 offset:33504
	ds_load_u8_d16 v149, v68 offset:33536
	ds_load_u8_d16 v152, v68 offset:33568
	ds_load_u8_d16 v147, v68 offset:33600
	ds_load_u8_d16 v11, v68 offset:33616
	ds_load_u8_d16 v72, v68 offset:33584
	ds_load_u8_d16 v75, v68 offset:33552
	ds_load_u8_d16 v112, v68 offset:33520
	ds_load_u8_d16 v160, v68 offset:33632
	ds_load_u8_d16 v172, v68 offset:33664
	ds_load_u8_d16 v174, v68 offset:33696
	ds_load_u8_d16 v168, v68 offset:33728
	ds_load_u8_d16 v87, v68 offset:33744
	ds_load_u8_d16 v96, v68 offset:33712
	ds_load_u8_d16 v99, v68 offset:33680
	ds_load_u8_d16 v81, v68 offset:33648
	v_dual_mov_b32 v40, v52 :: v_dual_add_nc_u32 v5, 0, v37
	ds_load_u8_d16 v182, v68 offset:33760
	ds_load_u8_d16 v155, v68 offset:33792
	ds_load_u8_d16 v158, v68 offset:33824
	ds_load_u8_d16 v153, v68 offset:33856
	ds_load_u8_d16 v156, v68 offset:33888
	ds_load_u8_d16 v69, v68 offset:33872
	ds_load_u8_d16 v76, v68 offset:33840
	ds_load_u8_d16 v77, v68 offset:33808
	ds_load_u8_d16 v166, v68 offset:33920
	ds_load_u8_d16 v169, v68 offset:33952
	ds_load_u8_d16 v164, v68 offset:33984
	ds_load_u8_d16 v167, v68 offset:34016
	ds_load_u8_d16 v88, v68 offset:34000
	ds_load_u8_d16 v100, v68 offset:33968
	ds_load_u8_d16 v101, v68 offset:33936
	ds_load_u8_d16 v82, v68 offset:33904
	ds_load_u8_d16 v183, v68 offset:34048
	ds_load_u8_d16 v185, v68 offset:34080
	ds_load_u8_d16 v180, v68 offset:34112
	ds_load_u8_d16 v184, v68 offset:34144
	ds_load_u8_d16 v102, v68 offset:34128
	ds_load_u8_d16 v106, v68 offset:34096
	ds_load_u8_d16 v107, v68 offset:34064
	ds_load_u8_d16 v128, v68 offset:34032
	v_dual_mov_b32 v42, v54 :: v_dual_add_nc_u32 v7, 0, v36
	ds_load_u8_d16 v187, v68 offset:34176
	ds_load_u8_d16 v189, v68 offset:34208
	ds_load_u8_d16 v186, v68 offset:34240
	ds_load_u8_d16 v188, v68 offset:34272
	ds_load_u8_d16 v123, v68 offset:34256
	ds_load_u8_d16 v124, v68 offset:34224
	ds_load_u8_d16 v125, v68 offset:34192
	ds_load_u8_d16 v120, v68 offset:34160
	ds_load_u8_d16 v133, v68 offset:34304
	ds_load_u8_d16 v135, v68 offset:34336
	ds_load_u8_d16 v136, v68 offset:34368
	ds_load_u8_d16 v137, v68 offset:34400
	ds_load_u8_d16 v92, v68 offset:34384
	ds_load_u8_d16 v103, v68 offset:34352
	ds_load_u8_d16 v104, v68 offset:34320
	ds_load_u8_d16 v127, v68 offset:34288
	ds_load_u8_d16 v142, v68 offset:34432
	ds_load_u8_d16 v143, v68 offset:34464
	ds_load_u8_d16 v144, v68 offset:34496
	ds_load_u8_d16 v145, v68 offset:34528
	ds_load_u8_d16 v119, v68 offset:34512
	ds_load_u8_d16 v121, v68 offset:34480
	ds_load_u8_d16 v122, v68 offset:34448
	ds_load_u8_d16 v113, v68 offset:34416
	ds_load_u8_d16 v110, v68 offset:34560
	ds_load_u8_d16 v114, v68 offset:34592
	ds_load_u8_d16 v115, v68 offset:34624
	ds_load_u8_d16 v116, v68 offset:34656
	ds_load_u8_d16 v83, v68 offset:34640
	ds_load_u8_d16 v89, v68 offset:34608
	ds_load_u8_d16 v90, v68 offset:34576
	ds_load_u8_d16 v126, v68 offset:34544
	ds_load_u8_d16 v129, v68 offset:34688
	ds_load_u8_d16 v130, v68 offset:34720
	ds_load_u8_d16 v131, v68 offset:34752
	ds_load_u8_d16 v132, v68 offset:34784
	ds_load_u8_d16 v108, v68 offset:34768
	ds_load_u8_d16 v117, v68 offset:34736
	ds_load_u8_d16 v118, v68 offset:34704
	ds_load_u8_d16 v105, v68 offset:34672
	ds_load_u8_d16 v190, v68 offset:32768
	ds_load_u8_d16 v176, v68 offset:32784
	ds_load_u8_d16 v192, v68 offset:32800
	ds_load_u8_d16 v179, v68 offset:32816
	ds_load_u8_d16 v191, v68 offset:32832
	ds_load_u8_d16 v178, v68 offset:32848
	ds_load_u8_d16 v141, v5 offset:32768
	ds_load_u8_d16 v68, v7 offset:32768
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v6, 0, 1, s2
	v_dual_mov_b32 v39, v4 :: v_dual_add_nc_u32 v62, 0, v62
	v_add_nc_u32_e32 v193, 0, v51
	v_mov_b32_e32 v51, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v6
	v_dual_mov_b32 v38, v3 :: v_dual_add_nc_u32 v67, 0, v67
	v_dual_mov_b32 v41, v53 :: v_dual_add_nc_u32 v66, 0, v66
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v65, 0, v65
	v_dual_mov_b32 v43, v55 :: v_dual_add_nc_u32 v64, 0, v64
	v_dual_mov_b32 v50, v34 :: v_dual_add_nc_u32 v63, 0, v63
	v_dual_mov_b32 v48, v32 :: v_dual_add_nc_u32 v61, 0, v61
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v44, v28
	v_mov_b32_e32 v49, v33
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_mov_b32_e32 v45, v29
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[194:195], v61
	ds_load_b64 v[196:197], v193
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v36, v139, v140, 0xc0c0004
	v_perm_b32 v37, v138, v170, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v190, v192, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v39, v191, v134, 0xc0c0004
	v_dual_mov_b32 v7, v54 :: v_dual_mov_b32 v8, v55
	v_dual_mov_b32 v5, v52 :: v_dual_mov_b32 v6, v53
	v_lshl_or_b32 v45, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v44, v39, 16, v38
	v_dual_mov_b32 v43, v8 :: v_dual_mov_b32 v42, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v41, v6 :: v_dual_mov_b32 v40, v5
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[5:6], v62
	ds_load_b64 v[202:203], v65
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v46, v163, v165, 0xc0c0004
	v_perm_b32 v47, v162, v177, 0xc0c0004
	v_perm_b32 v48, v148, v150, 0xc0c0004
	v_perm_b32 v49, v146, v159, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[198:199], v63
	ds_load_b64 v[200:201], v64
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[196:197], v[44:45], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v47, 16, v46
	v_perm_b32 v44, v173, v175, 0xc0c0004
	v_lshl_or_b32 v7, v49, 16, v48
	v_perm_b32 v45, v171, v181, 0xc0c0004
	v_perm_b32 v46, v154, v157, 0xc0c0004
	v_perm_b32 v47, v151, v161, 0xc0c0004
	v_perm_b32 v48, v73, v70, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[194:195], v[7:8], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v45, 16, v44
	v_perm_b32 v44, v172, v174, 0xc0c0004
	v_lshl_or_b32 v7, v47, 16, v46
	v_perm_b32 v45, v168, v182, 0xc0c0004
	v_perm_b32 v46, v149, v152, 0xc0c0004
	v_perm_b32 v47, v147, v160, 0xc0c0004
	v_perm_b32 v49, v9, v79, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[5:6], v[7:8], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v45, 16, v44
	v_perm_b32 v44, v166, v169, 0xc0c0004
	v_lshl_or_b32 v7, v47, 16, v46
	v_perm_b32 v45, v164, v167, 0xc0c0004
	v_perm_b32 v46, v155, v158, 0xc0c0004
	v_perm_b32 v47, v153, v156, 0xc0c0004
	v_lshl_or_b32 v204, v49, 16, v48
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[198:199], v[7:8], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v45, 16, v44
	v_perm_b32 v44, v176, v179, 0xc0c0004
	v_lshl_or_b32 v7, v47, 16, v46
	v_perm_b32 v45, v178, v78, 0xc0c0004
	v_perm_b32 v46, v97, v94, 0xc0c0004
	v_perm_b32 v47, v85, v111, 0xc0c0004
	v_perm_b32 v206, v187, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[200:201], v[7:8], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v7, v93, v91, 0xc0c0004
	v_perm_b32 v8, v84, v109, 0xc0c0004
	v_lshl_or_b32 v205, v47, 16, v46
	v_perm_b32 v207, v186, v188, 0xc0c0004
	v_perm_b32 v208, v183, v185, 0xc0c0004
	v_perm_b32 v209, v180, v184, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_lshl_or_b32 v7, v45, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[196:197], v[7:8], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v7, v98, v95, 0xc0c0004
	v_perm_b32 v8, v86, v112, 0xc0c0004
	v_perm_b32 v196, v74, v71, 0xc0c0004
	v_perm_b32 v197, v10, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[194:195], v[204:205], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v204, v75, v72, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v205, v11, v81, 0xc0c0004
	v_lshl_or_b32 v7, v197, 16, v196
	v_perm_b32 v196, v99, v96, 0xc0c0004
	v_perm_b32 v197, v87, v141, 0xc0c0004
	v_lshl_or_b32 v195, v207, 16, v206
	v_lshl_or_b32 v194, v209, 16, v208
	v_wmma_i32_16x16x16_iu4 v[44:51], v[5:6], v[7:8], v[44:51] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[7:8], v66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v6, v197, 16, v196
	v_lshl_or_b32 v5, v205, 16, v204
	v_wmma_i32_16x16x16_iu4 v[36:43], v[202:203], v[194:195], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v194, v101, v100, 0xc0c0004
	v_perm_b32 v195, v88, v128, 0xc0c0004
	v_perm_b32 v196, v77, v76, 0xc0c0004
	v_perm_b32 v197, v69, v82, 0xc0c0004
	v_perm_b32 v204, v142, v143, 0xc0c0004
	v_perm_b32 v205, v144, v145, 0xc0c0004
	v_perm_b32 v206, v133, v135, 0xc0c0004
	v_perm_b32 v207, v136, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[198:199], v[5:6], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v195, 16, v194
	v_lshl_or_b32 v5, v197, 16, v196
	v_lshl_or_b32 v195, v205, 16, v204
	v_lshl_or_b32 v194, v207, 16, v206
	v_perm_b32 v196, v125, v124, 0xc0c0004
	v_perm_b32 v197, v123, v127, 0xc0c0004
	v_perm_b32 v198, v107, v106, 0xc0c0004
	v_perm_b32 v199, v102, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[200:201], v[5:6], v[44:51] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_b64 v[5:6], v67
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[194:195], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v197, 16, v196
	v_lshl_or_b32 v194, v199, 16, v198
	v_perm_b32 v198, v122, v121, 0xc0c0004
	v_perm_b32 v199, v119, v126, 0xc0c0004
	v_perm_b32 v200, v104, v103, 0xc0c0004
	v_perm_b32 v201, v92, v113, 0xc0c0004
	v_perm_b32 v196, v129, v130, 0xc0c0004
	v_perm_b32 v197, v131, v132, 0xc0c0004
	v_perm_b32 v204, v110, v114, 0xc0c0004
	v_perm_b32 v205, v115, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[202:203], v[194:195], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v199, 16, v198
	v_lshl_or_b32 v194, v201, 16, v200
	v_perm_b32 v198, v118, v117, 0xc0c0004
	v_perm_b32 v199, v108, v68, 0xc0c0004
	v_perm_b32 v200, v90, v89, 0xc0c0004
	v_perm_b32 v201, v83, v105, 0xc0c0004
	v_lshl_or_b32 v197, v197, 16, v196
	v_lshl_or_b32 v196, v205, 16, v204
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[194:195], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v199, 16, v198
	v_lshl_or_b32 v7, v201, 16, v200
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[5:6], v[196:197], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[5:6], v[7:8], v[44:51] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[1:2], v193 offset:16384
	ds_load_b64 v[3:4], v63 offset:16384
	ds_load_b64 v[5:6], v62 offset:16384
	ds_load_b64 v[7:8], v61 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v28, v139, v140, 0xc0c0004
	v_perm_b32 v29, v138, v170, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v30, v190, v192, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v31, v191, v134, 0xc0c0004
	v_perm_b32 v32, v163, v165, 0xc0c0004
	v_perm_b32 v33, v162, v177, 0xc0c0004
	v_perm_b32 v34, v148, v150, 0xc0c0004
	v_perm_b32 v35, v146, v159, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_lshl_or_b32 v28, v31, 16, v30
	v_perm_b32 v52, v173, v175, 0xc0c0004
	v_perm_b32 v53, v171, v181, 0xc0c0004
	v_perm_b32 v54, v154, v157, 0xc0c0004
	v_perm_b32 v55, v151, v161, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v32
	v_lshl_or_b32 v30, v35, 16, v34
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[28:29], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v53, 16, v52
	v_lshl_or_b32 v28, v55, 16, v54
	v_perm_b32 v32, v172, v174, 0xc0c0004
	v_perm_b32 v33, v168, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[7:8], v[30:31], v[12:19] neg_lo:[1,1,0]
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[30:31], v64 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_perm_b32 v34, v149, v152, 0xc0c0004
	v_perm_b32 v35, v147, v160, 0xc0c0004
	v_lshl_or_b32 v33, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[28:29], v[12:19] neg_lo:[1,1,0]
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[28:29], v65 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_perm_b32 v52, v155, v158, 0xc0c0004
	v_lshl_or_b32 v32, v35, 16, v34
	v_perm_b32 v34, v166, v169, 0xc0c0004
	v_perm_b32 v35, v164, v167, 0xc0c0004
	v_perm_b32 v53, v153, v156, 0xc0c0004
	v_perm_b32 v54, v176, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[32:33], v[12:19] neg_lo:[1,1,0]
	v_perm_b32 v55, v178, v78, 0xc0c0004
	v_lshl_or_b32 v33, v35, 16, v34
	v_lshl_or_b32 v32, v53, 16, v52
	v_perm_b32 v34, v187, v189, 0xc0c0004
	v_perm_b32 v35, v186, v188, 0xc0c0004
	v_perm_b32 v52, v183, v185, 0xc0c0004
	v_perm_b32 v53, v180, v184, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[30:31], v[32:33], v[12:19] neg_lo:[1,1,0]
	v_perm_b32 v9, v9, v79, 0xc0c0004
	v_lshl_or_b32 v33, v35, 16, v34
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[34:35], v66 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v32, v53, 16, v52
	v_perm_b32 v52, v93, v91, 0xc0c0004
	v_perm_b32 v53, v84, v109, 0xc0c0004
	v_perm_b32 v10, v10, v80, 0xc0c0004
	v_perm_b32 v61, v144, v145, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[32:33], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v55, 16, v54
	v_lshl_or_b32 v33, v53, 16, v52
	v_perm_b32 v52, v97, v94, 0xc0c0004
	v_perm_b32 v53, v85, v111, 0xc0c0004
	v_perm_b32 v54, v73, v70, 0xc0c0004
	v_perm_b32 v55, v142, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[32:33], v[20:27] neg_lo:[1,1,0]
	v_perm_b32 v32, v86, v112, 0xc0c0004
	v_lshl_or_b32 v2, v53, 16, v52
	v_lshl_or_b32 v1, v9, 16, v54
	v_perm_b32 v9, v98, v95, 0xc0c0004
	v_perm_b32 v33, v74, v71, 0xc0c0004
	v_perm_b32 v52, v133, v135, 0xc0c0004
	v_perm_b32 v53, v136, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[7:8], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v32, 16, v9
	v_lshl_or_b32 v1, v10, 16, v33
	v_perm_b32 v9, v99, v96, 0xc0c0004
	v_perm_b32 v10, v87, v141, 0xc0c0004
	v_perm_b32 v32, v75, v72, 0xc0c0004
	v_perm_b32 v11, v11, v81, 0xc0c0004
	v_lshl_or_b32 v8, v61, 16, v55
	v_lshl_or_b32 v7, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v10, 16, v9
	v_lshl_or_b32 v1, v11, 16, v32
	v_perm_b32 v9, v101, v100, 0xc0c0004
	v_perm_b32 v10, v88, v128, 0xc0c0004
	v_perm_b32 v11, v77, v76, 0xc0c0004
	v_perm_b32 v32, v69, v82, 0xc0c0004
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	ds_load_b64 v[5:6], v67 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[34:35], v[7:8], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v10, 16, v9
	v_lshl_or_b32 v1, v32, 16, v11
	v_perm_b32 v3, v125, v124, 0xc0c0004
	v_perm_b32 v4, v123, v127, 0xc0c0004
	v_perm_b32 v7, v107, v106, 0xc0c0004
	v_perm_b32 v8, v102, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[30:31], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_perm_b32 v9, v129, v130, 0xc0c0004
	v_lshl_or_b32 v2, v4, 16, v3
	v_perm_b32 v3, v122, v121, 0xc0c0004
	v_lshl_or_b32 v1, v8, 16, v7
	v_perm_b32 v4, v119, v126, 0xc0c0004
	v_perm_b32 v7, v104, v103, 0xc0c0004
	v_perm_b32 v8, v92, v113, 0xc0c0004
	v_perm_b32 v10, v131, v132, 0xc0c0004
	v_perm_b32 v11, v110, v114, 0xc0c0004
	v_perm_b32 v30, v115, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v4, 16, v3
	v_lshl_or_b32 v1, v8, 16, v7
	v_perm_b32 v7, v118, v117, 0xc0c0004
	v_perm_b32 v8, v108, v68, 0xc0c0004
	v_perm_b32 v28, v90, v89, 0xc0c0004
	v_perm_b32 v29, v83, v105, 0xc0c0004
	v_lshl_or_b32 v4, v10, 16, v9
	v_lshl_or_b32 v3, v30, 16, v11
	v_wmma_i32_16x16x16_iu4 v[20:27], v[34:35], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v8, 16, v7
	v_lshl_or_b32 v1, v29, 16, v28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[3:4], v[12:19] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[1:2], v[20:27] neg_lo:[1,1,0]
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v52 :: v_dual_mov_b32 v41, v53
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	v_dual_mov_b32 v42, v54 :: v_dual_mov_b32 v43, v55
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
.LBB0_13:                               ; %._crit_edge42
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v2, 1, v58
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v3, s27, v60
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_and_or_b32 v1, v1, 1, v2
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_mov_b32 s20, s12
	.loc	1 166 39 is_stmt 1              ; generate_amdgcn.py:166:39
	s_add_i32 s0, s28, s25
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 10, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt lgkmcnt(62)
	v_or_b32_e32 v9, 32, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v6, 8, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v11, v2, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 2, v1
	v_or_b32_e32 v10, 4, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s28, v1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v4, 12, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v28, s28, v8
	v_or_b32_e32 v29, s28, v10
	v_or_b32_e32 v30, s28, v7
	v_or_b32_e32 v31, s28, v6
	v_or_b32_e32 v32, s28, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v35, v2, s[20:23], 0 offen
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v33, s28, v4
	v_or_b32_e32 v34, s28, v3
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
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
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v7, 16, v7
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v5, 16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v62, v9, v7
	v_mul_f32_e32 v64, v9, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v7, v5, v7
	v_dual_mul_f32 v10, v5, v10 :: v_dual_lshlrev_b32 v11, 16, v32
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v32, 16, v35
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v35, 16, v52
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v53
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v54
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v54, v9, v11
	v_dual_mul_f32 v11, v5, v11 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v1, 1, v33
	v_lshlrev_b32_e32 v3, 1, v34
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v63, v9, v8
	.loc	1 175 13 is_stmt 0              ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v23, v62, v23
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v61, v9, v6
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
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v50
	v_cvt_f32_i32_e32 v42, v49
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v49, v12
	v_cvt_f32_i32_e32 v50, v14
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v43, v48
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v48, v15
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v49, v11, v49 :: v_dual_mul_f32 v6, v5, v6
	v_mul_f32_e32 v22, v63, v22
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
	v_dual_mul_f32 v20, v54, v20 :: v_dual_mul_f32 v21, v64, v21
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v30
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v30, v9, v32
	v_mul_f32_e32 v32, v5, v32
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v30, v30, v44 :: v_dual_lshlrev_b32 v29, 16, v29
	v_mul_f32_e32 v32, v32, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v54, v9, v14
	v_mul_f32_e32 v67, v9, v29
	v_dual_mul_f32 v66, v9, v12 :: v_dual_lshlrev_b32 v13, 16, v31
	v_dual_mul_f32 v29, v5, v29 :: v_dual_lshlrev_b32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v36, v67, v47 :: v_dual_mul_f32 v65, v9, v13
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v68, v9, v28 :: v_dual_lshlrev_b32 v15, 16, v55
	.loc	1 175 25 is_stmt 1              ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v55, v9, v35
	v_mul_f32_e32 v35, v5, v35
	v_mul_f32_e32 v8, v5, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v11, v9, v15
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v34, v9, v52
	v_mul_f32_e32 v52, v5, v52
	v_mul_f32_e32 v31, v9, v53
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v9, v9, v33
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v24, v61, v24 :: v_dual_mul_f32 v25, v55, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v26, v34, v26 :: v_dual_mul_f32 v27, v31, v27
	v_dual_mul_f32 v16, v6, v16 :: v_dual_mul_f32 v17, v35, v17
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v6, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v35, v9, v45
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v53, v5, v53
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v28, v5, v28
	v_dual_mul_f32 v31, v5, v33 :: v_dual_mul_f32 v34, v8, v50
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v33, v10, v51 :: v_dual_mul_f32 v8, v7, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v19, v53, v19 :: v_dual_mul_f32 v18, v52, v18
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v49
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v9, v68, v46
	v_dual_mul_f32 v41, v54, v41 :: v_dual_mul_f32 v40, v11, v40
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v10, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v26
	v_dual_mul_f32 v44, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v24
	v_dual_mul_f32 v46, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v22
	v_dual_mul_f32 v48, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v29, v29, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v11
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v10
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_cndmask_b32_e64 v48, 0, 0x42800000, s2
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v44
	v_cndmask_b32_e64 v11, 0, 0x42800000, s7
	v_cndmask_b32_e64 v10, 0, 0x42800000, s8
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v49
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v31, v31, v37 :: v_dual_mul_f32 v28, v28, v38
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v37, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v34
	v_dual_mul_f32 v39, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v19
	v_dual_mul_f32 v53, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v44, 0, 0x42800000, s6
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v24
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v27
	v_exp_f32_e32 v6, v6
	v_dual_mul_f32 v51, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v37
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v25
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v43, v66, v43 :: v_dual_mul_f32 v42, v65, v42
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v39, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v51
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v6, v6, v54
	v_cndmask_b32_e64 v38, 0, 0x42800000, s10
	v_cndmask_b32_e64 v52, 0, 0x42800000, s13
	v_cndmask_b32_e64 v51, 0, 0x42800000, s14
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v34
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v17
	v_ldexp_f32 v7, v7, v55
	v_ldexp_f32 v48, v48, v61
	v_ldexp_f32 v47, v47, v62
	v_ldexp_f32 v46, v46, v63
	v_ldexp_f32 v45, v45, v64
	v_ldexp_f32 v11, v11, v66
	v_ldexp_f32 v10, v10, v67
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v53
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v18 :: v_dual_add_f32 v54, 1.0, v7
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v44, v44, v65
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v7, 1.0, v10
	v_add_f32_e32 v55, 1.0, v11
	v_dual_add_f32 v11, 1.0, v45 :: v_dual_add_f32 v10, 1.0, v46
	v_dual_add_f32 v45, 1.0, v47 :: v_dual_add_f32 v46, 1.0, v48
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v48, null, v6, v6, v20
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s11
	v_exp_f32_e32 v38, v38
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v84, v48
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	v_ldexp_f32 v39, v39, v68
	v_ldexp_f32 v37, v37, v70
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v19
	v_exp_f32_e32 v53, v53
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v61, null, v54, v54, v49
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v38, v38, v69
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v63, null, v46, v46, v21
	v_fma_f32 v96, -v48, v84, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s12
	v_exp_f32_e32 v51, v51
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v65, null, v45, v45, v22
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v67, null, v10, v10, v23
	v_div_scale_f32 v81, null, v37, v37, v8
	v_rcp_f32_e32 v85, v61
	v_rcp_f32_e32 v86, v63
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v77, null, v39, v39, v33
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s14
	v_ldexp_f32 v53, v53, v71
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v71, null, v44, v44, v25
	v_rcp_f32_e32 v87, v65
	v_div_scale_f32 v69, null, v11, v11, v24
	v_rcp_f32_e32 v88, v67
	v_rcp_f32_e32 v93, v77
	v_rcp_f32_e32 v95, v81
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v51, v51, v73
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v73, null, v55, v55, v26
	v_rcp_f32_e32 v90, v71
	v_div_scale_f32 v75, null, v7, v7, v27
	v_rcp_f32_e32 v89, v69
	v_fma_f32 v97, -v61, v85, 1.0
	v_fma_f32 v98, -v63, v86, 1.0
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v52, v52
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v79, null, v38, v38, v34
	v_rcp_f32_e32 v91, v73
	v_fma_f32 v99, -v65, v87, 1.0
	v_rcp_f32_e32 v92, v75
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v47, 1.0, v53 :: v_dual_fmac_f32 v86, v98, v86
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v53, s1, v20, v6, v20
	v_div_scale_f32 v62, s2, v49, v54, v49
	v_div_scale_f32 v64, vcc_lo, v21, v46, v21
	v_fma_f32 v100, -v67, v88, 1.0
	v_fma_f32 v105, -v77, v93, 1.0
	v_fma_f32 v107, -v81, v95, 1.0
	v_fmac_f32_e32 v85, v97, v85
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v66, s3, v22, v45, v22
	v_rcp_f32_e32 v94, v79
	v_fma_f32 v102, -v71, v90, 1.0
	v_fmac_f32_e32 v87, v99, v87
	v_fma_f32 v101, -v69, v89, 1.0
	v_div_scale_f32 v68, s4, v23, v10, v23
	v_dual_fmac_f32 v88, v100, v88 :: v_dual_fmac_f32 v93, v105, v93
	v_dual_mul_f32 v98, v64, v86 :: v_dual_fmac_f32 v95, v107, v95
	v_dual_mul_f32 v96, v53, v84 :: v_dual_mul_f32 v97, v62, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v100, v68, v88
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v52, v52, v72
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v72, s6, v25, v44, v25
	v_fma_f32 v103, -v73, v91, 1.0
	v_fmac_f32_e32 v90, v102, v90
	v_mul_f32_e32 v99, v66, v87
	v_div_scale_f32 v70, s5, v24, v11, v24
	v_fma_f32 v104, -v75, v92, 1.0
	v_fmac_f32_e32 v89, v101, v89
	v_div_scale_f32 v78, s9, v33, v39, v33
	v_fma_f32 v108, -v48, v96, v53
	v_fma_f32 v109, -v61, v97, v62
	v_fma_f32 v110, -v63, v98, v64
	v_div_scale_f32 v74, s7, v26, v55, v26
	v_fma_f32 v106, -v79, v94, 1.0
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_mul_f32 v102, v72, v90
	v_fma_f32 v111, -v65, v99, v66
	v_div_scale_f32 v76, s8, v27, v7, v27
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_mul_f32 v101, v70, v89
	v_dual_mul_f32 v105, v78, v93 :: v_dual_fmac_f32 v96, v108, v84
	v_dual_fmac_f32 v97, v109, v85 :: v_dual_fmac_f32 v98, v110, v86
	v_div_scale_f32 v82, s11, v8, v37, v8
	v_fma_f32 v112, -v67, v100, v68
	v_div_scale_f32 v80, s10, v34, v38, v34
	v_fmac_f32_e32 v94, v106, v94
	v_mul_f32_e32 v103, v74, v91
	v_fma_f32 v114, -v71, v102, v72
	v_dual_fmac_f32 v99, v111, v87 :: v_dual_mul_f32 v104, v76, v92
	v_fma_f32 v113, -v69, v101, v70
	v_fma_f32 v48, -v48, v96, v53
	v_fma_f32 v53, -v61, v97, v62
	v_fma_f32 v61, -v63, v98, v64
	v_dual_mul_f32 v107, v82, v95 :: v_dual_fmac_f32 v100, v112, v88
	v_mul_f32_e32 v106, v80, v94
	v_fma_f32 v115, -v73, v103, v74
	v_fmac_f32_e32 v102, v114, v90
	v_fma_f32 v62, -v65, v99, v66
	v_fma_f32 v116, -v75, v104, v76
	v_fmac_f32_e32 v101, v113, v89
	v_div_fmas_f32 v61, v61, v86, v98
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v117, -v77, v105, v78
	v_fma_f32 v63, -v67, v100, v68
	v_fma_f32 v118, -v79, v106, v80
	v_fmac_f32_e32 v103, v115, v91
	v_div_fmas_f32 v62, v62, v87, v99
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v104, v116, v92
	v_fma_f32 v64, -v69, v101, v70
	v_div_fmas_f32 v48, v48, v84, v96
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v65, -v71, v102, v72
	v_fmac_f32_e32 v105, v117, v93
	v_div_fixup_f32 v21, v61, v46, v21
	v_div_fmas_f32 v46, v63, v88, v100
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v119, -v81, v107, v82
	v_fmac_f32_e32 v106, v118, v94
	v_fma_f32 v66, -v73, v103, v74
	v_div_fixup_f32 v22, v62, v45, v22
	v_div_fmas_f32 v45, v64, v89, v101
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v67, -v75, v104, v76
	v_div_fixup_f32 v6, v48, v6, v20
	v_div_fmas_f32 v20, v65, v90, v102
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v68, -v77, v105, v78
	v_fmac_f32_e32 v107, v119, v95
	v_div_fixup_f32 v23, v46, v10, v23
	v_div_fmas_f32 v46, v66, v91, v103
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v69, -v79, v106, v80
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v10, v9, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v22, v67, v92, v104
	s_mov_b32 vcc_lo, s9
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v50, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v9, v45, v11, v24
	v_div_fmas_f32 v24, v68, v93, v105
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v70, -v81, v107, v82
	v_div_fixup_f32 v20, v20, v44, v25
	v_div_fixup_f32 v25, v46, v55, v26
	v_div_fmas_f32 v26, v69, v94, v106
	s_mov_b32 vcc_lo, s2
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v11, v30, v6 :: v_dual_mul_f32 v6, v43, v9
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v30, v53, v85, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v9, v22, v7, v27
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v44, v70, v95, v107
	v_div_scale_f32 v83, null, v47, v47, v16
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v7, v42, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v27, v50, v27
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v24, v39, v33
	v_div_fixup_f32 v22, v44, v37, v8
	v_div_fixup_f32 v24, v26, v38, v34
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v26, 1.0, v52
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v8, v41, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v25, v30, v54, v49
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v30, 1.0, v51
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_mul_f32 v24, v28, v24
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v9, v40, v9 :: v_dual_mul_f32 v22, v29, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v29, v83
	v_div_scale_f32 v33, null, v26, v26, v17
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v25, v32, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v34, null, v30, v30, v18
	v_div_scale_f32 v28, null, v27, v27, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v32, v33
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v83, v29, 1.0
	v_rcp_f32_e32 v40, v28
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v33, v32, 1.0
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, vcc_lo, v16, v47, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v34, v38, 1.0
	v_fma_f32 v43, -v28, v40, 1.0
	v_fmac_f32_e32 v32, v39, v32
	v_div_scale_f32 v39, s0, v17, v26, v17
	v_mul_f32_e32 v42, v37, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v15, v5, v15 :: v_dual_fmac_f32 v40, v43, v40
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v43, s2, v19, v27, v19
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s1, v18, v30, v18
	v_mul_f32_e32 v45, v39, v32
	v_fma_f32 v44, -v83, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v49, v43, v40 :: v_dual_mul_f32 v46, v41, v38
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v1, v15, v1
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fmac_f32_e32 v42, v44, v29
	v_fma_f32 v44, -v33, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v48, -v34, v46, v41
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v14, v5, v14
	v_mul_f32_e32 v13, v5, v13
	v_mul_f32_e32 v5, v5, v12
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v12, -v83, v42, v37
	v_fma_f32 v37, -v28, v49, v43
	v_fmac_f32_e32 v45, v44, v32
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v2, v14, v2
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v12, v12, v29, v42
	v_fmac_f32_e32 v49, v37, v40
	v_fma_f32 v29, -v33, v45, v39
	v_fma_f32 v33, -v34, v46, v41
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v12, v12, v47, v16
	v_fma_f32 v28, -v28, v49, v43
	v_div_fmas_f32 v29, v29, v32, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v13, v3
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v32, v33, v38, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v29, v26, v17
	v_div_fmas_f32 v28, v28, v40, v49
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v5, v4
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v14, v32, v30, v18
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v17, v35, v21
	v_mul_f32_e32 v13, v3, v13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v5, v28, v27, v19
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v15, v31, v20
	v_mul_f32_e32 v12, v4, v12
	v_dual_mul_f32 v14, v2, v14 :: v_dual_mul_f32 v3, v36, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v16, v1, v5
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, |v25|, |v15|, |v24|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, |v22|, |v12|, |v13|
	v_max3_f32 v5, |v11|, |v17|, |v10|
	v_max3_f32 v18, |v3|, |v6|, |v7|
	v_max_f32_e64 v4, |v14|, |v16|
	v_max_f32_e64 v19, |v8|, |v9|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v20, 7, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v1, v2, v4
	v_max3_f32 v5, v5, v18, v19
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v1, 3, v60
	v_lshrrev_b32_e32 v19, 2, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v5, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v21, v1, v19
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v18
	v_max_f32_e32 v4, v2, v4
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v58, 2, v1
	v_add3_u32 v18, 0, v20, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_xad_u32 v2, v2, v19, 0
	ds_store_b64 v18, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v4
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v4, v2
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v5
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v4, v5, v18 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v18
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v2, v2, v5 :: v_dual_max_f32 v5, v4, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v5
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v5, v5, v18 :: v_dual_mov_b32 v4, v2
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v18, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v2, 0, v19
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v18
.Ltmp41:
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
	v_div_scale_f32 v18, null, v4, v4, v25
	v_div_scale_f32 v23, null, v4, v4, v15
	v_div_scale_f32 v27, null, v4, v4, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v18
	v_div_scale_f32 v29, null, v4, v4, v22
	v_rcp_f32_e32 v43, v23
	v_div_scale_f32 v31, null, v4, v4, v12
	v_rcp_f32_e32 v44, v27
	v_div_scale_f32 v33, null, v4, v4, v13
	v_div_scale_f32 v39, null, v5, v5, v11
	v_rcp_f32_e32 v45, v29
	v_rcp_f32_e32 v46, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v33
	v_rcp_f32_e32 v50, v39
	v_fma_f32 v52, -v18, v42, 1.0
	v_fma_f32 v53, -v23, v43, 1.0
	v_fma_f32 v54, -v27, v44, 1.0
	v_div_scale_f32 v21, vcc_lo, v25, v4, v25
	v_div_scale_f32 v35, null, v4, v4, v14
	v_fmac_f32_e32 v42, v52, v42
	v_fma_f32 v55, -v29, v45, 1.0
	v_div_scale_f32 v26, s0, v15, v4, v15
	v_fmac_f32_e32 v43, v53, v43
	v_fma_f32 v60, -v31, v46, 1.0
	v_div_scale_f32 v28, s1, v24, v4, v24
	v_fmac_f32_e32 v44, v54, v44
	v_rcp_f32_e32 v48, v35
	v_fma_f32 v61, -v33, v47, 1.0
	v_fma_f32 v64, -v39, v50, 1.0
	v_mul_f32_e32 v52, v21, v42
	v_div_scale_f32 v30, s2, v22, v4, v22
	v_fmac_f32_e32 v45, v55, v45
	v_mul_f32_e32 v53, v26, v43
	v_div_scale_f32 v32, s3, v12, v4, v12
	v_fmac_f32_e32 v46, v60, v46
	v_mul_f32_e32 v54, v28, v44
	v_div_scale_f32 v34, s4, v13, v4, v13
	v_dual_fmac_f32 v47, v61, v47 :: v_dual_fmac_f32 v50, v64, v50
	v_fma_f32 v64, -v18, v52, v21
	v_mul_f32_e32 v55, v30, v45
	v_fma_f32 v65, -v23, v53, v26
	v_mul_f32_e32 v60, v32, v46
	v_fma_f32 v66, -v27, v54, v28
	v_fma_f32 v62, -v35, v48, 1.0
	v_dual_mul_f32 v61, v34, v47 :: v_dual_fmac_f32 v52, v64, v42
	v_fma_f32 v67, -v29, v55, v30
	v_fmac_f32_e32 v53, v65, v43
	v_fma_f32 v68, -v31, v60, v32
	v_fmac_f32_e32 v54, v66, v44
	v_div_scale_f32 v36, s5, v14, v4, v14
	v_fmac_f32_e32 v48, v62, v48
	v_fma_f32 v69, -v33, v61, v34
	v_fma_f32 v18, -v18, v52, v21
	v_fmac_f32_e32 v55, v67, v45
	v_fma_f32 v21, -v23, v53, v26
	v_fmac_f32_e32 v60, v68, v46
	v_fma_f32 v23, -v27, v54, v28
	v_dual_mul_f32 v62, v36, v48 :: v_dual_fmac_f32 v61, v69, v47
	v_div_fmas_f32 v18, v18, v42, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v29, v55, v30
	v_div_fmas_f32 v21, v21, v43, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v31, v60, v32
	v_div_fmas_f32 v23, v23, v44, v54
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v70, -v35, v62, v36
	v_fma_f32 v28, -v33, v61, v34
	v_div_fixup_f32 v18, v18, v4, v25
	v_div_fmas_f32 v25, v26, v45, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v21, v4, v15
	v_div_fmas_f32 v21, v27, v46, v60
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v23, v4, v24
	v_div_fmas_f32 v24, v28, v47, v61
	v_fmac_f32_e32 v62, v70, v48
	v_div_scale_f32 v32, null, v5, v5, v3
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v13, v24, v4, v13
	v_fma_f32 v24, -v35, v62, v36
	v_rcp_f32_e32 v33, v32
	v_div_scale_f32 v40, null, v5, v5, v17
	v_div_scale_f32 v41, null, v5, v5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v24, v48, v62
	v_rcp_f32_e32 v51, v40
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v27, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v14, v24, v4, v14
	v_fma_f32 v24, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v33, v24, v33
	v_div_scale_f32 v37, null, v4, v4, v16
	v_div_scale_f32 v38, s6, v16, v4, v16
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v49, v37
	v_div_fixup_f32 v22, v25, v4, v22
	v_div_fixup_f32 v12, v21, v4, v12
	v_div_scale_f32 v21, s0, v11, v5, v11
	v_fma_f32 v25, -v40, v51, 1.0
	v_fma_f32 v30, -v41, v27, 1.0
	v_div_scale_f32 v24, null, v5, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v28, v21, v50
	v_fma_f32 v63, -v37, v49, 1.0
	v_fmac_f32_e32 v51, v25, v51
	v_div_scale_f32 v25, s1, v17, v5, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v63, v49 :: v_dual_and_b32 v2, 16, v0
	v_fmac_f32_e32 v27, v30, v27
	v_mul_f32_e32 v29, v25, v51
	v_div_scale_f32 v30, s2, v10, v5, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v63, v38, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v37, v63, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v26, v49
	v_fma_f32 v26, -v39, v28, v21
	v_fma_f32 v31, -v37, v63, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v26, v50
	v_fma_f32 v26, -v40, v29, v25
	v_div_fmas_f32 v31, v31, v49, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v39, v28, v21
	v_fmac_f32_e32 v29, v26, v51
	v_mul_f32_e32 v26, v30, v27
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v31, v4, v16
	v_div_scale_f32 v31, null, v5, v5, v9
	v_fma_f32 v25, -v40, v29, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v35, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v31, v35, 1.0
	v_fmac_f32_e32 v35, v39, v35
	v_div_fmas_f32 v21, v21, v50, v28
	v_fma_f32 v28, -v41, v26, v30
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, s3, v9, v5, v9
	v_div_fmas_f32 v25, v25, v51, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v28, v27
	v_div_fixup_f32 v11, v21, v5, v11
	v_div_scale_f32 v21, null, v5, v5, v6
	v_div_fixup_f32 v16, v25, v5, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v41, v26, v30
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v25, v21
	v_rcp_f32_e32 v28, v24
	v_mul_f32_e32 v42, v39, v35
	v_div_fmas_f32 v17, v17, v27, v26
	v_div_scale_f32 v26, null, v5, v5, v8
	v_div_scale_f32 v27, vcc_lo, v3, v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v17, v5, v10
	v_rcp_f32_e32 v29, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v21, v25, 1.0
	v_mul_f32_e32 v30, v27, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v34, -v24, v28, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v17, v25
	v_div_scale_f32 v17, s0, v6, v5, v6
	v_fma_f32 v36, -v32, v30, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v26, v29, 1.0
	v_fmac_f32_e32 v28, v34, v28
	v_mul_f32_e32 v38, v17, v25
	v_div_scale_f32 v34, s1, v7, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s2, v8, v5, v8
	v_fmac_f32_e32 v30, v36, v33
	v_fma_f32 v36, -v21, v38, v17
	v_dual_mul_f32 v40, v34, v28 :: v_dual_mul_f32 v41, v37, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v27, -v32, v30, v27
	v_fmac_f32_e32 v38, v36, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v24, v40, v34
	v_fma_f32 v36, -v26, v41, v37
	v_div_fmas_f32 v27, v27, v33, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v17, -v21, v38, v17
	v_fma_f32 v21, -v31, v42, v39
	v_fmac_f32_e32 v40, v32, v28
	v_fmac_f32_e32 v41, v36, v29
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v3, v27, v5, v3
	v_fmac_f32_e32 v42, v21, v35
	v_fma_f32 v24, -v24, v40, v34
	v_fma_f32 v21, -v26, v41, v37
	v_div_fmas_f32 v17, v17, v25, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v31, v42, v39
	v_div_fmas_f32 v24, v24, v28, v40
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v17, v5, v6
	v_div_fmas_f32 v21, v21, v29, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v24, v5, v7
	v_div_fmas_f32 v25, v25, v35, v42
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v8, v21, v5, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v23
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v5, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v18
	v_rndne_f32_e32 v18, v22
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v21, v4
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v23, v3
	v_cvt_i32_f32_e32 v24, v6
	v_and_b32_e32 v4, 15, v15
	v_and_b32_e32 v6, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 11, v0
	v_lshlrev_b32_e32 v18, 5, v0
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
	v_and_or_b32 v17, 0x600, v59, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 0x3000, v15
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v18, 0x60, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
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
	v_cvt_i32_f32_e32 v11, v11
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v16, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v21, v28, v21, v22
	v_xad_u32 v22, v23, v57, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 15, v11
	v_and_b32_e32 v17, 15, v26
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
.Ltmp42:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v22, 4, v57
.Ltmp43:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v21.h, 0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v21.l, v19.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.h, v21.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v21, v19, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v11, 4, v3
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s26, 7, v1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v10, s27, v22
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v1.l, 8, v5.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s27
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
	v_permlanex16_b32 v6, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s26, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v6, v21, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 210
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 210
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17168
; TotalNumSgprs: 31
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 210
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
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
