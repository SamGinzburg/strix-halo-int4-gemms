	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v37, 0x1f0, v0
	v_and_b32_e32 v36, 15, v0
	v_lshrrev_b32_e32 v56, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v42, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v41, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v35, 3, v37
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v33, 4, v36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v40, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v39, 2, v41
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s20, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s5
	s_mov_b64 s[16:17], s[14:15]
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s9, 0, s4
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s5
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s4
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s6, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s8, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s7, s4, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s8, s7
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s10, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[1:2], null, s21, v35, v[33:34]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v34, 3, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s9, s4, 0x4f7ffffe
	s_load_b32 s4, s[0:1], 0x38
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s5, s9, s10
	s_abs_i32 s10, s2
	s_add_i32 s9, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s5, s8
	s_ashr_i32 s25, s9, 31
	s_sub_i32 s9, s10, s11
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s9, s8
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s10, s5
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s24, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s3, s5, s25
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s8, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s20, s3, s25
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s5, s4, s8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s20, s7
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v2, s24, v35
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s8, s21, s24
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s23, s20, 8
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v1, s23, s8, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s26, s5, 1
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s22, s2, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s4, 2
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s2, -1, 0
	s_cmp_gt_i32 s4, 1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v2, s21, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s5, -1, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s6, s22, s26
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[16:19], 0 offen
	buffer_load_b128 v[5:8], v5, s[16:19], 0 offen
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[9:10], null, s26, v56, v[34:35]
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v10, s24, v34
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s18, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v10
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v9, s24, s6, v9
	.loc	1 154 22 is_stmt 0              ; generate_amdgcn.py:154:22
	v_and_b32_e32 v10, 56, v42
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s5, vcc_lo
	s_cmpk_gt_i32 s4, 0x81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v11, v34, v35
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[17:18], v9, s[12:15], 0 offen
	v_lshlrev_b32_e32 v9, 3, v0
	v_xor_b32_e32 v9, v9, v10
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshl_or_b32 v10, v36, 10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v44, 0, v9
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v9, 0x88, v10
	v_add_nc_u32_e32 v45, 0, v10
	v_xor_b32_e32 v11, 0x110, v10
	v_xor_b32_e32 v12, 0x198, v10
	v_xor_b32_e32 v13, 0x220, v10
	v_xor_b32_e32 v14, 0x2a8, v10
	v_xor_b32_e32 v15, 0x330, v10
	v_xor_b32_e32 v10, 0x3b8, v10
	v_add_nc_u32_e32 v46, 0, v9
	v_add_nc_u32_e32 v47, 0, v11
	v_add_nc_u32_e32 v48, 0, v12
	v_add_nc_u32_e32 v49, 0, v13
	v_add_nc_u32_e32 v53, 0, v10
	v_add_nc_u32_e32 v50, 0, v14
	v_add_nc_u32_e32 v51, 0, v15
	s_waitcnt vmcnt(1)
	v_perm_b32 v9, v5, v1, 0x5010400
	v_perm_b32 v5, v5, v1, 0x7030602
	v_perm_b32 v10, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	v_perm_b32 v11, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v12, v8, v4, 0x5010400
	v_perm_b32 v13, v8, v4, 0x7030602
	v_lshrrev_b32_e32 v14, 8, v9
	v_lshrrev_b32_e32 v15, 24, v9
	v_lshrrev_b32_e32 v16, 8, v5
	v_lshrrev_b32_e32 v19, 24, v5
	v_lshrrev_b32_e32 v20, 8, v10
	v_lshrrev_b32_e32 v21, 24, v10
	v_lshrrev_b32_e32 v22, 8, v6
	v_lshrrev_b32_e32 v23, 24, v6
	v_lshrrev_b32_e32 v24, 8, v11
	v_lshrrev_b32_e32 v25, 24, v11
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v27, 24, v7
	v_lshrrev_b32_e32 v28, 8, v12
	v_lshrrev_b32_e32 v29, 24, v12
	v_lshrrev_b32_e32 v30, 8, v13
	v_lshrrev_b32_e32 v31, 24, v13
	v_and_b16 v1.l, 0xff, v9.l
	v_lshlrev_b16 v9.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v9.h
	v_lshlrev_b16 v9.h, 8, v15.l
	v_and_b16 v2.l, 0xff, v5.l
	v_and_b16 v3.l, 0xff, v10.l
	v_lshlrev_b16 v10.l, 8, v16.l
	v_and_b16 v2.h, 0xff, v5.h
	v_and_b16 v3.h, 0xff, v10.h
	v_lshlrev_b16 v10.h, 8, v19.l
	v_and_b16 v4.l, 0xff, v6.l
	v_and_b16 v4.h, 0xff, v6.h
	v_and_b16 v5.l, 0xff, v11.l
	v_and_b16 v5.h, 0xff, v11.h
	v_and_b16 v6.l, 0xff, v7.l
	v_and_b16 v6.h, 0xff, v7.h
	v_and_b16 v7.l, 0xff, v12.l
	v_and_b16 v7.h, 0xff, v12.h
	v_and_b16 v8.l, 0xff, v13.l
	v_and_b16 v8.h, 0xff, v13.h
	v_lshlrev_b16 v11.l, 8, v20.l
	v_lshlrev_b16 v11.h, 8, v21.l
	v_lshlrev_b16 v12.l, 8, v22.l
	v_lshlrev_b16 v12.h, 8, v23.l
	v_lshlrev_b16 v13.l, 8, v24.l
	v_lshlrev_b16 v13.h, 8, v25.l
	v_lshlrev_b16 v14.l, 8, v26.l
	v_lshlrev_b16 v14.h, 8, v27.l
	v_lshlrev_b16 v15.l, 8, v28.l
	v_lshlrev_b16 v15.h, 8, v29.l
	v_lshlrev_b16 v16.l, 8, v30.l
	v_lshlrev_b16 v16.h, 8, v31.l
	v_or_b16 v1.l, v1.l, v9.l
	v_or_b16 v1.h, v1.h, v9.h
	v_or_b16 v2.l, v2.l, v10.l
	v_or_b16 v2.h, v2.h, v10.h
	v_or_b16 v3.l, v3.l, v11.l
	v_or_b16 v3.h, v3.h, v11.h
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[17:18] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v45, v1
	ds_store_b16_d16_hi v45, v1 offset:64
	ds_store_b16 v46, v2
	ds_store_b16_d16_hi v46, v2 offset:64
	ds_store_b16 v47, v3
	ds_store_b16_d16_hi v47, v3 offset:64
	ds_store_b16 v48, v4
	ds_store_b16_d16_hi v48, v4 offset:64
	ds_store_b16 v49, v5
	ds_store_b16_d16_hi v49, v5 offset:64
	ds_store_b16 v50, v6
	ds_store_b16_d16_hi v50, v6 offset:64
	ds_store_b16 v51, v7
	ds_store_b16_d16_hi v51, v7 offset:64
	ds_store_b16 v53, v8
	ds_store_b16_d16_hi v53, v8 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v43, 2, v41
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s18, -1
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow121
	s_load_b256 s[4:11], s[0:1], 0x10
	v_mov_b32_e32 v8, 0
	v_lshlrev_b32_e32 v52, 6, v36
	v_lshlrev_b32_e32 v38, 2, v0
	v_lshlrev_b32_e32 v54, 5, v41
	s_and_not1_b32 vcc_lo, exec_lo, s18
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s26, 63
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v43, s26, v34
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v55, s26, v35
	v_sub_nc_u32_e64 v9, s0, 2 clamp
	v_add_nc_u32_e32 v2, s24, v35
	s_lshl_b32 s3, s3, 8
	s_add_i32 s24, s24, 64
	s_mov_b32 s18, s14
	v_readfirstlane_b32 s0, v9
	v_add_nc_u32_e32 v9, s22, v56
	s_mov_b32 s19, s15
	s_add_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, s26, v9, v[34:35]
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v1, 2, v0
	v_add_nc_u32_e32 v4, 0x41, v2
	v_add_nc_u32_e32 v2, 64, v2
	s_lshl_b32 s0, s25, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v22, v9 :: v_dual_and_b32 v3, 56, v1
	v_and_or_b32 v1, 0x438, v1, v52
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_xor_b32_e32 v12, 56, v1
	v_xor_b32_e32 v11, 48, v1
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v6, 16, v1
	v_xor_b32_e32 v7, 24, v1
	v_dual_mov_b32 v29, v9 :: v_dual_add_nc_u32 v64, 0, v12
	v_mov_b32_e32 v12, v9
	v_xor_b32_e32 v3, v3, v39
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v63, 0, v11
	v_mov_b32_e32 v11, v9
	v_mul_lo_u32 v4, s21, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v3, v3, v54, v52
	v_xor_b32_e32 v8, 32, v1
	v_xor_b32_e32 v10, 40, v1
	v_add_nc_u32_e32 v35, 0, v1
	v_add_nc_u32_e32 v58, 0, v5
	v_xor_b32_e32 v13, 8, v3
	v_xor_b32_e32 v14, 16, v3
	v_xor_b32_e32 v15, 24, v3
	v_xor_b32_e32 v16, 32, v3
	v_xor_b32_e32 v17, 40, v3
	v_dual_mov_b32 v31, v9 :: v_dual_add_nc_u32 v66, 0, v13
	v_mov_b32_e32 v13, v9
	v_mul_lo_u32 v2, s21, v2
	v_xor_b32_e32 v18, 48, v3
	v_xor_b32_e32 v19, 56, v3
	v_add3_u32 v4, v4, s3, v33
	v_add_nc_u32_e32 v59, 0, v6
	v_add_nc_u32_e32 v60, 0, v7
	v_add_nc_u32_e32 v61, 0, v8
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v62, 0, v10
	v_add3_u32 v2, v2, s3, v33
	v_subrev_nc_u32_e32 v56, s0, v4
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v65, 0, v3
	v_dual_mov_b32 v32, v9 :: v_dual_add_nc_u32 v67, 0, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v57, s0, v2
	v_add_nc_u32_e32 v68, 0, v15
	v_add_nc_u32_e32 v69, 0, v16
	v_add_nc_u32_e32 v70, 0, v17
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v71, 0, v18
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v72, 0, v19
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_lshl_b32 s3, s21, 6
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v73, s24, v34
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s24, v43
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e64 s0, s24, v55
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s1, s1, -1
	s_add_i32 s24, s24, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v74, 0x80000000, v57, s0
	v_cndmask_b32_e64 v77, 0x80000000, v56, s0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v57, s3, v57
	v_add_nc_u32_e32 v56, s3, v56
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[93:94], v73, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[73:76], v74, s[16:19], 0 offen
	buffer_load_b128 v[77:80], v77, s[16:19], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[81:84], v35 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[85:88], v65 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[89:92], v58 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[83:84], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[83:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v66 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[85:88], v59 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[91:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v67 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[89:92], v60 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v68 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[85:88], v61 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[91:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v69 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[89:92], v62 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v70 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[85:88], v63 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[91:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v71 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[89:92], v64 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[81:84], v72 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[91:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v44, v[93:94] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v81, v77, v73, 0x5010400
	v_perm_b32 v77, v77, v73, 0x7030602
	v_perm_b32 v82, v78, v74, 0x5010400
	v_perm_b32 v78, v78, v74, 0x7030602
	v_perm_b32 v84, v80, v76, 0x5010400
	v_perm_b32 v85, v80, v76, 0x7030602
	v_and_b16 v73.l, 0xff, v81.l
	v_lshrrev_b32_e32 v80, 8, v81
	v_lshrrev_b32_e32 v86, 24, v81
	v_and_b16 v73.h, 0xff, v81.h
	v_lshrrev_b32_e32 v81, 8, v77
	v_perm_b32 v83, v79, v75, 0x5010400
	v_perm_b32 v79, v79, v75, 0x7030602
	v_and_b16 v74.l, 0xff, v77.l
	v_lshrrev_b32_e32 v87, 24, v77
	v_and_b16 v75.l, 0xff, v82.l
	v_lshrrev_b32_e32 v88, 8, v82
	v_lshrrev_b32_e32 v89, 24, v82
	v_and_b16 v75.h, 0xff, v82.h
	v_lshrrev_b32_e32 v82, 8, v78
	v_lshrrev_b32_e32 v90, 24, v78
	v_and_b16 v76.h, 0xff, v78.h
	v_lshlrev_b16 v78.h, 8, v81.l
	v_and_b16 v74.h, 0xff, v77.h
	v_lshlrev_b16 v77.h, 8, v80.l
	v_and_b16 v76.l, 0xff, v78.l
	v_and_b16 v77.l, 0xff, v83.l
	v_or_b16 v74.l, v74.l, v78.h
	v_lshlrev_b16 v78.h, 8, v87.l
	v_lshrrev_b32_e32 v91, 8, v83
	v_or_b16 v73.l, v73.l, v77.h
	v_lshrrev_b32_e32 v92, 24, v83
	v_and_b16 v77.h, 0xff, v83.h
	v_lshlrev_b16 v78.l, 8, v86.l
	v_lshrrev_b32_e32 v81, 8, v79
	v_or_b16 v74.h, v74.h, v78.h
	v_lshrrev_b32_e32 v83, 24, v79
	v_and_b16 v78.h, 0xff, v79.h
	v_lshlrev_b16 v79.h, 8, v89.l
	v_or_b16 v73.h, v73.h, v78.l
	v_and_b16 v78.l, 0xff, v79.l
	v_lshlrev_b16 v79.l, 8, v88.l
	v_lshlrev_b16 v80.h, 8, v91.l
	v_or_b16 v75.h, v75.h, v79.h
	v_lshlrev_b16 v79.h, 8, v82.l
	v_lshrrev_b32_e32 v86, 8, v84
	v_or_b16 v75.l, v75.l, v79.l
	v_and_b16 v79.l, 0xff, v84.l
	v_lshrrev_b32_e32 v87, 24, v84
	v_or_b16 v76.l, v76.l, v79.h
	v_and_b16 v79.h, 0xff, v84.h
	v_lshlrev_b16 v80.l, 8, v90.l
	v_or_b16 v77.l, v77.l, v80.h
	v_lshrrev_b32_e32 v84, 8, v85
	v_lshlrev_b16 v80.h, 8, v92.l
	v_lshrrev_b32_e32 v88, 24, v85
	v_or_b16 v76.h, v76.h, v80.l
	v_and_b16 v80.l, 0xff, v85.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_or_b16 v77.h, v77.h, v80.h
	v_and_b16 v80.h, 0xff, v85.h
	v_lshlrev_b16 v81.h, 8, v83.l
	v_lshlrev_b16 v82.l, 8, v86.l
	v_lshlrev_b16 v82.h, 8, v87.l
	v_lshlrev_b16 v83.l, 8, v84.l
	v_lshlrev_b16 v83.h, 8, v88.l
	v_or_b16 v78.l, v78.l, v81.l
	v_or_b16 v78.h, v78.h, v81.h
	v_or_b16 v79.l, v79.l, v82.l
	v_or_b16 v79.h, v79.h, v82.h
	v_or_b16 v80.l, v80.l, v83.l
	v_or_b16 v80.h, v80.h, v83.h
	ds_store_b16 v45, v73
	ds_store_b16_d16_hi v45, v73 offset:64
	ds_store_b16 v46, v74
	ds_store_b16_d16_hi v46, v74 offset:64
	ds_store_b16 v47, v75
	ds_store_b16_d16_hi v47, v75 offset:64
	ds_store_b16 v48, v76
	ds_store_b16_d16_hi v48, v76 offset:64
	ds_store_b16 v49, v77
	ds_store_b16_d16_hi v49, v77 offset:64
	ds_store_b16 v50, v78
	ds_store_b16_d16_hi v50, v78 offset:64
	ds_store_b16 v51, v79
	ds_store_b16_d16_hi v51, v79 offset:64
	ds_store_b16 v53, v80
	ds_store_b16_d16_hi v53, v80 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow119
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v43, v39
.LBB0_7:                                ; %._crit_edge
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_10
; %bb.8:                                ; %._crit_edge._crit_edge
.Ltmp16:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v34, 2, v0
	s_cbranch_execz .LBB0_11
.Ltmp17:
; %bb.9:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v38, v34
	s_branch .LBB0_12
.LBB0_10:
                                        ; implicit-def: $vgpr34
.LBB0_11:
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	v_and_b32_e32 v34, 56, v38
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v35, 0x438, v38, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v34, v34, v43
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v39, 0, v35
	v_xad_u32 v60, v35, 56, 0
	v_xad_u32 v64, v35, 48, 0
	v_xad_u32 v92, v35, 40, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or3_b32 v34, v34, v54, v52
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v76, v35, 32, 0
	v_xad_u32 v80, v35, 24, 0
	ds_load_2addr_stride64_b64 v[76:79], v76 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[80:83], v80 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v48, 0, v34
	v_xad_u32 v56, v34, 8, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[44:47], v39 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[48:51], v48 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v39, v35, 8, 0
	v_xad_u32 v35, v35, 16, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[56:59], v56 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[60:63], v60 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[64:67], v64 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[68:71], v35 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v35, v34, 24, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[52:55], v39 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v39, v34, 16, 0
	v_xad_u32 v93, v34, 40, 0
	ds_load_2addr_stride64_b64 v[72:75], v39 offset1:16
	v_xad_u32 v39, v34, 32, 0
	ds_load_2addr_stride64_b64 v[84:87], v35 offset1:16
	ds_load_2addr_stride64_b64 v[88:91], v39 offset1:16
	v_xad_u32 v35, v34, 56, 0
	v_xad_u32 v34, v34, 48, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[44:45], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[44:45], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[46:47], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[44:47], v92 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[48:51], v93 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[54:55], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[52:55], v34 offset1:16
	ds_load_2addr_stride64_b64 v[56:59], v35 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[68:69], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[70:71], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[82:83], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[76:77], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[90:91], v[78:79], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[44:45], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[44:45], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[46:47], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[64:65], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[64:65], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[52:53], v[66:67], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[66:67], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[60:61], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[60:61], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[62:63], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[62:63], v[1:8] neg_lo:[1,1,0]
.LBB0_12:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v34, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v44, v0, 4, 1
	v_lshrrev_b32_e32 v45, 1, v41
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s1, s5, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v46, 4, v34
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v44, v44, v45, s23
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s0, s4
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or3_b32 v46, v46, v36, s22
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v48, 4, v44
	v_or_b32_e32 v50, 12, v44
	v_or_b32_e32 v52, 20, v44
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v47, v46, s[0:3], 0 offen
	v_or_b32_e32 v46, 64, v46
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v54, 28, v44
	v_or_b32_e32 v56, 0x104, v44
	v_or_b32_e32 v58, 0x10c, v44
	v_or_b32_e32 v60, 0x114, v44
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v46, v46, s[0:3], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s1, s7, 0xffff
	s_mov_b32 s0, s6
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_clause 0x7
	buffer_load_u16 v45, v44, s[0:3], 0 offen
	buffer_load_u16 v48, v48, s[0:3], 0 offen
	buffer_load_u16 v50, v50, s[0:3], 0 offen
	buffer_load_u16 v52, v52, s[0:3], 0 offen
	buffer_load_u16 v54, v54, s[0:3], 0 offen
	buffer_load_u16 v56, v56, s[0:3], 0 offen
	buffer_load_u16 v58, v58, s[0:3], 0 offen
	buffer_load_u16 v60, v60, s[0:3], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v35, 4, v37
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v58, 16, v58
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v63, v47, v48
	v_mul_f32_e32 v48, v46, v48
	v_mul_f32_e32 v67, v47, v52
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v73, v47, v58
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v10, v63, v10
	v_mul_f32_e32 v14, v67, v14
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v75, v47, v60
	v_mul_f32_e32 v69, v47, v54
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v49, 8, v44
	v_or_b32_e32 v51, 16, v44
	v_or_b32_e32 v53, 24, v44
	v_or_b32_e32 v55, 0x100, v44
	v_or_b32_e32 v57, 0x108, v44
	v_or_b32_e32 v59, 0x110, v44
	s_clause 0x5
	buffer_load_u16 v49, v49, s[0:3], 0 offen
	buffer_load_u16 v51, v51, s[0:3], 0 offen
	buffer_load_u16 v53, v53, s[0:3], 0 offen
	buffer_load_u16 v55, v55, s[0:3], 0 offen
	buffer_load_u16 v57, v57, s[0:3], 0 offen
	buffer_load_u16 v59, v59, s[0:3], 0 offen
	v_or_b32_e32 v61, 0x118, v44
	v_or_b32_e32 v44, 0x11c, v44
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v28, v73, v28
	v_mul_f32_e32 v30, v75, v30
	v_mul_f32_e32 v16, v69, v16
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_clause 0x1
	buffer_load_u16 v61, v61, s[0:3], 0 offen
	buffer_load_u16 v44, v44, s[0:3], 0 offen
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s21, 31
.Ltmp20:
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_max_f32_e32 v14, 0, v14
.Ltmp21:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s21, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 1
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s4, s22, s1
.Ltmp22:
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v74, v47, v59 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v68, v47, v53 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v53, v46, v53 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v70, v47, v55
	v_dual_mul_f32 v64, v47, v49 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v49, v46, v49 :: v_dual_lshlrev_b32 v56, 16, v56
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v66, v47, v51 :: v_dual_and_b32 v39, 16, v0
	v_mul_f32_e32 v62, v47, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v71, v47, v56
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v45, v46, v45
	v_dual_mul_f32 v52, v46, v52 :: v_dual_lshlrev_b32 v61, 16, v61
	v_mul_f32_e32 v65, v47, v50
	v_mul_f32_e32 v50, v46, v50
	v_mul_f32_e32 v72, v47, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v76, v47, v61 :: v_dual_mul_f32 v55, v46, v55
	v_mul_f32_e32 v47, v47, v44
	v_mul_f32_e32 v51, v46, v51
	v_dual_mul_f32 v54, v46, v54 :: v_dual_mul_f32 v11, v64, v11
	v_dual_mul_f32 v56, v46, v56 :: v_dual_mul_f32 v15, v68, v15
	v_mul_f32_e32 v57, v46, v57
	v_dual_mul_f32 v58, v46, v58 :: v_dual_mul_f32 v27, v72, v27
	v_dual_mul_f32 v59, v46, v59 :: v_dual_mul_f32 v12, v65, v12
	v_dual_mul_f32 v60, v46, v60 :: v_dual_mul_f32 v31, v76, v31
	v_mul_f32_e32 v61, v46, v61
	v_dual_mul_f32 v44, v46, v44 :: v_dual_mul_f32 v17, v45, v17
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v9, v62, v9
	v_dual_mul_f32 v13, v66, v13 :: v_dual_mul_f32 v26, v71, v26
	v_mul_f32_e32 v25, v70, v25
	v_dual_mul_f32 v29, v74, v29 :: v_dual_mul_f32 v32, v47, v32
	v_dual_mul_f32 v19, v49, v19 :: v_dual_mul_f32 v18, v48, v18
	v_dual_mul_f32 v21, v51, v21 :: v_dual_mul_f32 v20, v50, v20
	v_dual_mul_f32 v23, v53, v23 :: v_dual_mul_f32 v22, v52, v22
	v_dual_mul_f32 v1, v55, v1 :: v_dual_mul_f32 v24, v54, v24
	v_dual_mul_f32 v3, v57, v3 :: v_dual_mul_f32 v2, v56, v2
	v_dual_mul_f32 v5, v59, v5 :: v_dual_mul_f32 v6, v60, v6
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v8, v44, v8
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v44, 0, v15
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v30, 0, v30
	v_max_f32_e32 v49, 0, v20
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v4, v58, v4 :: v_dual_mul_f32 v7, v61, v7
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_max_f32_e32 v45, 0, v16
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v47, 0, v18
	v_dual_max_f32 v46, 0, v17 :: v_dual_max_f32 v51, 0, v23
	v_dual_max_f32 v48, 0, v19 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v50, 0, v22 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v52, 0, v24 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v56, v9, v9 :: v_dual_mul_f32 v57, v10, v10
	v_dual_mul_f32 v58, v11, v11 :: v_dual_mul_f32 v59, v12, v12
	v_dual_mul_f32 v15, v13, v13 :: v_dual_mul_f32 v16, v14, v14
	v_dual_mul_f32 v19, v25, v25 :: v_dual_mul_f32 v20, v26, v26
	v_dual_mul_f32 v22, v27, v27 :: v_dual_mul_f32 v23, v28, v28
	v_dual_mul_f32 v24, v29, v29 :: v_dual_mul_f32 v25, v30, v30
	v_dual_mul_f32 v26, v31, v31 :: v_dual_mul_f32 v27, v32, v32
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v53, 0, v6
	v_dual_max_f32 v54, 0, v7 :: v_dual_max_f32 v55, 0, v8
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v17, v44, v44 :: v_dual_mul_f32 v18, v45, v45
	v_dual_mul_f32 v29, v46, v46 :: v_dual_mul_f32 v46, v48, v48
	v_dual_mul_f32 v31, v47, v47 :: v_dual_mul_f32 v44, v21, v21
	v_dual_mul_f32 v30, v51, v51 :: v_dual_mul_f32 v21, v1, v1
	v_dual_mul_f32 v28, v52, v52 :: v_dual_mul_f32 v13, v2, v2
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v56, v57
	v_max3_f32 v2, v59, v15, v16
	v_max3_f32 v10, v20, v22, v23
	v_max3_f32 v11, v24, v25, v26
.Ltmp24:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v45, v49, v49 :: v_dual_mul_f32 v32, v50, v50
	v_dual_mul_f32 v8, v3, v3 :: v_dual_mul_f32 v7, v4, v4
	v_dual_mul_f32 v6, v5, v5 :: v_dual_mul_f32 v3, v55, v55
	v_dual_mul_f32 v5, v53, v53 :: v_dual_mul_f32 v4, v54, v54
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v17, v18, v19
	v_max3_f32 v1, v1, v58, v2
	v_max3_f32 v2, v10, v11, v27
	v_max3_f32 v11, v13, v8, v7
	v_max3_f32 v12, v6, v5, v4
	v_max3_f32 v10, v30, v28, v21
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v14, v40, 8, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, v1, v9, v2
	v_max_f32_e32 v2, v29, v31
	v_max3_f32 v9, v45, v44, v32
.Ltmp28:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v39, 7, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v46, v9
	v_max3_f32 v9, v11, v12, v3
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v11, 8, v0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v10, v9
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v10, 0xf0, v42
	v_max_f32_e32 v1, v1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v9, 4, v40
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v12, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v14, v12, v11
	ds_store_b64 v12, v[1:2]
	v_lshl_or_b32 v1, v41, 3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, 0, v11, v1
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v9
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v10, v11, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v9, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v10, v9, v43
	ds_store_b64 v10, v[1:2]
	v_lshlrev_b32_e32 v1, 3, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, 0, v1, v9
	ds_load_b64 v[9:10], v2
.Ltmp53:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v2, v9, v9 :: v_dual_max_f32 v9, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v10
	v_fma_f32 v12, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v14, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v10, v14, v12
	v_fmac_f32_e32 v14, v40, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v14, v12
	v_div_fmas_f32 v10, v10, v11, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v10, 0x40e00000, v2
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v9
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v40, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v40, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v14
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.l, v2.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v10, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v11.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v10, 0x7fff
	v_add3_u32 v11, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v2.h, v9.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v10, null, v40, v40, v56
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v56, v40, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v41, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v41, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v14
	v_div_scale_f32 v11, null, v40, v40, v57
	v_div_fixup_f32 v10, v10, v40, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v11
	v_fma_f32 v14, -v11, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v14, v12
	v_div_scale_f32 v14, vcc_lo, v57, v40, v57
	v_mul_f32_e32 v41, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v11, v41, v14
	v_fmac_f32_e32 v41, v42, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v41, v14
	v_div_fmas_f32 v11, v11, v12, v41
	v_div_scale_f32 v12, null, v40, v40, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v11, v40, v57
	v_rcp_f32_e32 v14, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v12, v14, 1.0
	v_fmac_f32_e32 v14, v41, v14
	v_div_scale_f32 v41, vcc_lo, v58, v40, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v14
	v_fma_f32 v43, -v12, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v14
	v_fma_f32 v12, -v12, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v12, v14, v42
	v_div_scale_f32 v14, null, v40, v40, v59
	v_div_fixup_f32 v12, v12, v40, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v14
	v_fma_f32 v42, -v14, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v59, v40, v59
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v14, v43, v42
	v_fmac_f32_e32 v43, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v43, v42
	v_div_fmas_f32 v14, v14, v41, v43
	v_div_scale_f32 v41, null, v40, v40, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v14, v40, v59
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v15, v40, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v15, v41, v40, v15
	v_div_scale_f32 v41, null, v40, v40, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v16, v40, v16
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v16, v41, v40, v16
	v_div_scale_f32 v41, null, v40, v40, v17
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v17, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v17, v41, v40, v17
	v_div_scale_f32 v41, null, v40, v40, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v18, v40, v18
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v18, v41, v40, v18
	v_div_scale_f32 v41, null, v40, v40, v19
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v19, v40, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v19, v41, v40, v19
	v_div_scale_f32 v41, null, v40, v40, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v20, v40, v20
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v20, v41, v40, v20
	v_div_scale_f32 v41, null, v40, v40, v22
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v22, v40, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v22, v41, v40, v22
	v_div_scale_f32 v41, null, v40, v40, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v43, v42 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_div_scale_f32 v43, vcc_lo, v23, v40, v23
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v23, v41, v40, v23
	v_div_scale_f32 v41, null, v40, v40, v24
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v24, v40, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v24, v41, v40, v24
	v_div_scale_f32 v41, null, v40, v40, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v25, v40, v25
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v25, v41, v40, v25
	v_div_scale_f32 v41, null, v40, v40, v26
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v26, v40, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v42
	v_fma_f32 v48, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v42
	v_fma_f32 v41, -v41, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v47
	v_div_fixup_f32 v26, v41, v40, v26
	v_div_scale_f32 v41, null, v40, v40, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v27, v40, v27
	v_mul_f32_e32 v47, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v43
	v_fmac_f32_e32 v47, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v43
	v_div_fmas_f32 v41, v41, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v27, v41, v40, v27
	v_div_scale_f32 v40, null, v9, v9, v29
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v29, v9, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v47, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v47, v41
	v_fma_f32 v40, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v43
	v_div_fixup_f32 v29, v40, v9, v29
	v_div_scale_f32 v40, null, v9, v9, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v42, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v31, v9, v31
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v43, v42
	v_fmac_f32_e32 v43, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v43, v42
	v_div_fmas_f32 v40, v40, v41, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v31, v40, v9, v31
	v_div_scale_f32 v40, null, v9, v9, v46
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v46, v9, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v47, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v47, v41
	v_fma_f32 v40, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v41, v43
	v_div_scale_f32 v41, null, v9, v9, v45
	v_div_fixup_f32 v40, v40, v9, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v45, v9, v45
	v_mul_f32_e32 v46, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v46, v43
	v_fmac_f32_e32 v46, v47, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v46, v43
	v_div_fmas_f32 v41, v41, v42, v46
	v_div_scale_f32 v42, null, v9, v9, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v41, v41, v9, v45
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, vcc_lo, v44, v9, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v43
	v_fma_f32 v47, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v43
	v_fma_f32 v42, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v46
	v_div_scale_f32 v43, null, v9, v9, v32
	v_div_fixup_f32 v42, v42, v9, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v32, v9, v32
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v43, v9, v32
	v_div_scale_f32 v43, null, v9, v9, v30
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v30, v9, v30
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v43, v9, v30
	v_div_scale_f32 v43, null, v9, v9, v28
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v28, v9, v28
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v43, v9, v28
	v_div_scale_f32 v43, null, v9, v9, v21
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v21, v9, v21
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v43, v9, v21
	v_div_scale_f32 v43, null, v9, v9, v13
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v13, v9, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v13, v43, v9, v13
	v_div_scale_f32 v43, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v43, v9, v8
	v_div_scale_f32 v43, null, v9, v9, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v7, v9, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v7, v43, v9, v7
	v_div_scale_f32 v43, null, v9, v9, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v6, v9, v6
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v43, v9, v6
	v_div_scale_f32 v43, null, v9, v9, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v5, v9, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v5, v43, v9, v5
	v_div_scale_f32 v43, null, v9, v9, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v4, v9, v4
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v43, v9, v4
	v_div_scale_f32 v43, null, v9, v9, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v48, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v3, v9, v3
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v47, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v43, v46, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v43, v43, v44, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v44, v8
	v_cvt_i32_f32_e32 v46, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v43, v9, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v22
	v_rndne_f32_e32 v22, v23
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v29
	v_rndne_f32_e32 v29, v31
	v_rndne_f32_e32 v31, v40
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v42, v21
	v_and_b32_e32 v21, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v49, v3
	v_and_b32_e32 v3, 15, v9
	v_and_b32_e32 v9, 15, v16
	v_and_b32_e32 v16, 15, v24
	v_and_b32_e32 v24, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x3000, v31
	v_and_b32_e32 v32, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v43, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v29
	v_and_b32_e32 v29, 15, v44
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v44, 0x200, v38
	v_xor_b32_e32 v32, v33, v32
	v_add3_u32 v31, 0, v31, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v4, 15, v10
	v_and_b32_e32 v5, 15, v11
	v_and_b32_e32 v6, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v31, v31, v44, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v14
	v_and_b32_e32 v11, 15, v18
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v14, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[3:6]
	ds_store_b128 v31, v[11:14] offset:1024
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0x60, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v40, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v22, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v32, v3, v37, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 15, v17
	v_and_b32_e32 v17, 15, v25
	v_and_b32_e32 v18, 15, v26
	v_and_b32_e32 v25, 15, v30
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v30, 15, v45
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v32
	ds_load_b128 v[11:14], v32 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[19:22]
	ds_store_b128 v31, v[27:30] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v32
	ds_load_b128 v[27:30], v32 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_and_b32_e32 v8, 15, v15
	v_and_b32_e32 v15, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[7:10]
	ds_store_b128 v31, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v32
	ds_load_b128 v[15:18], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v11, 4, v3
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s20, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v41, v41
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v11, v27, 4, v19
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s1, v35
	v_add3_u32 v1, s4, s0, v1
	s_lshl_b32 s1, s1, 5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v41
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v28, 4, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v41, 15, v47
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v1, v19
	v_add3_u32 v19, v19, s1, v1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v42, 15, v48
	v_and_b32_e32 v43, 15, v49
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[23:26]
	ds_store_b128 v31, v[40:43] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v32
	ds_load_b128 v[39:42], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v4.l
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v8, v16, 4, v8
	v_lshl_or_b32 v13, v29, 4, v21
	v_lshl_or_b32 v14, v30, 4, v22
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v1.h, 0xff, v9.l
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s0, s8
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v41, 4, v25
	v_lshl_or_b32 v18, v42, 4, v26
	v_lshl_or_b32 v15, v39, 4, v23
	v_lshl_or_b32 v16, v40, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	buffer_store_b64 v[3:4], v20, s[0:3], 0 offen
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v1.h, 0xff, v17.l
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v1.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s22
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v19, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v36
	v_lshrrev_b32_e32 v4, 2, v34
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s21, 31
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s21, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s11, 0xffff
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	ds_store_b32 v3, v2
.Ltmp54:
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp55:
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x7c, v38
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v3, 2, v3
	s_barrier
	s_mov_b32 s0, s10
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v2, 0, v2, v3
	v_add_lshl_u32 v0, v1, s20, 1
	ds_load_u16 v1, v2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp56:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 95
		.amdhsa_next_free_sgpr 27
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 95
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 27
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10528
; TotalNumSgprs: 29
; NumVgprs: 95
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 29
; NumVGPRsForWavesPerEU: 95
; Occupancy: 16
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     29
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     95
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
