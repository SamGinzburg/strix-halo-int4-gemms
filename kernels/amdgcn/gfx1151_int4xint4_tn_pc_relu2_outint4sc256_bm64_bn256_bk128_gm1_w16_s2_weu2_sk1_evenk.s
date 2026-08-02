	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v70, 0x1f0, v0
	v_and_b32_e32 v68, 15, v0
	v_lshrrev_b32_e32 v34, 3, v0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_lshlrev_b32_e32 v10, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v69, 0x100, v0
	v_lshrrev_b32_e32 v35, 3, v70
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v73, 0xe0, v0
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v43, 0, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b32_e32 v44, 2, v73
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s16, 63
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s12, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s14, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	s_sub_i32 s10, 0, s7
	s_xor_b32 s11, s2, s6
	s_mul_i32 s10, s10, s14
	s_ashr_i32 s23, s11, 31
	s_mul_hi_u32 s4, s14, s10
	s_abs_i32 s10, s2
	s_add_i32 s14, s14, s4
	s_mov_b32 s11, 0x31027000
	s_mul_hi_u32 s4, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s4, s7
	s_sub_i32 s10, s10, s14
	s_add_i32 s14, s4, 1
	s_sub_i32 s15, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s4, s14, s4
	s_cselect_b32 s10, s15, s10
	s_add_i32 s14, s4, 1
	s_cmp_ge_u32 s10, s7
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s14, s4
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s24, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s25, s4, s23
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s3, s17, s24
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s25, s23
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s14, s10
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s18, s6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s20, s18, 8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s15, s11
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s19, s2, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s22, 2
	s_cselect_b32 s21, -1, 0
	s_cmp_gt_i32 s22, 1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v72, 7, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v65, 4, v68
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s22, 0x81
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v33, 3, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[1:2], null, s16, v34, v[33:34]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[2:3], null, s17, v35, v[65:66]
	v_add3_u32 v2, s20, s3, v2
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	s_mul_i32 s3, s16, s24
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	v_add3_u32 v1, s3, s19, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v3, s17, v2
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[2:5], v2, s[12:15], 0 offen
	buffer_load_b128 v[6:9], v6, s[12:15], 0 offen
	.loc	1 152 22 is_stmt 1              ; generate_amdgcn.py:152:22
	buffer_load_b64 v[18:19], v1, s[8:11], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v1, v33, v35
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v11, v68, 10, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 4, v69
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v10, 0x88, v11
	v_add_nc_u32_e32 v45, 0, v11
	v_xor_b32_e32 v12, 0x110, v11
	v_xor_b32_e32 v13, 0x198, v11
	v_xor_b32_e32 v14, 0x220, v11
	v_xor_b32_e32 v15, 0x2a8, v11
	v_xor_b32_e32 v16, 0x330, v11
	v_xor_b32_e32 v11, 0x3b8, v11
	v_add_nc_u32_e32 v46, 0, v10
	v_add_nc_u32_e32 v47, 0, v12
	v_add_nc_u32_e32 v48, 0, v13
	v_add_nc_u32_e32 v49, 0, v14
	v_add_nc_u32_e32 v52, 0, v11
	v_add_nc_u32_e32 v50, 0, v15
	v_add_nc_u32_e32 v51, 0, v16
	s_waitcnt vmcnt(1)
	v_perm_b32 v10, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	v_perm_b32 v11, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v12, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v13, v9, v5, 0x5010400
	v_perm_b32 v14, v9, v5, 0x7030602
	v_lshrrev_b32_e32 v15, 8, v10
	v_lshrrev_b32_e32 v16, 24, v10
	v_lshrrev_b32_e32 v17, 8, v6
	v_lshrrev_b32_e32 v20, 24, v6
	v_lshrrev_b32_e32 v21, 8, v11
	v_lshrrev_b32_e32 v22, 24, v11
	v_lshrrev_b32_e32 v23, 8, v7
	v_lshrrev_b32_e32 v24, 24, v7
	v_lshrrev_b32_e32 v25, 8, v12
	v_lshrrev_b32_e32 v26, 24, v12
	v_lshrrev_b32_e32 v27, 8, v8
	v_lshrrev_b32_e32 v28, 24, v8
	v_lshrrev_b32_e32 v29, 8, v13
	v_lshrrev_b32_e32 v30, 24, v13
	v_lshrrev_b32_e32 v31, 8, v14
	v_lshrrev_b32_e32 v32, 24, v14
	v_and_b16 v2.l, 0xff, v10.l
	v_lshlrev_b16 v10.l, 8, v15.l
	v_and_b16 v2.h, 0xff, v10.h
	v_lshlrev_b16 v10.h, 8, v16.l
	v_and_b16 v3.l, 0xff, v6.l
	v_and_b16 v4.l, 0xff, v11.l
	v_lshlrev_b16 v11.l, 8, v17.l
	v_and_b16 v3.h, 0xff, v6.h
	v_and_b16 v4.h, 0xff, v11.h
	v_lshlrev_b16 v11.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v7.l
	v_and_b16 v5.h, 0xff, v7.h
	v_and_b16 v6.l, 0xff, v12.l
	v_and_b16 v6.h, 0xff, v12.h
	v_and_b16 v7.l, 0xff, v8.l
	v_and_b16 v7.h, 0xff, v8.h
	v_and_b16 v8.l, 0xff, v13.l
	v_and_b16 v8.h, 0xff, v13.h
	v_and_b16 v9.l, 0xff, v14.l
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v12.l, 8, v21.l
	v_lshlrev_b16 v12.h, 8, v22.l
	v_lshlrev_b16 v13.l, 8, v23.l
	v_lshlrev_b16 v13.h, 8, v24.l
	v_lshlrev_b16 v14.l, 8, v25.l
	v_lshlrev_b16 v14.h, 8, v26.l
	v_lshlrev_b16 v15.l, 8, v27.l
	v_lshlrev_b16 v15.h, 8, v28.l
	v_lshlrev_b16 v16.l, 8, v29.l
	v_lshlrev_b16 v16.h, 8, v30.l
	v_lshlrev_b16 v17.l, 8, v31.l
	v_lshlrev_b16 v17.h, 8, v32.l
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
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[18:19] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v45, v2
	ds_store_b16_d16_hi v45, v2 offset:64
	ds_store_b16 v46, v3
	ds_store_b16_d16_hi v46, v3 offset:64
	ds_store_b16 v47, v4
	ds_store_b16_d16_hi v47, v4 offset:64
	ds_store_b16 v48, v5
	ds_store_b16_d16_hi v48, v5 offset:64
	ds_store_b16 v49, v6
	ds_store_b16_d16_hi v49, v6 offset:64
	ds_store_b16 v50, v7
	ds_store_b16_d16_hi v50, v7 offset:64
	ds_store_b16 v51, v8
	ds_store_b16_d16_hi v51, v8 offset:64
	ds_store_b16 v52, v9
	ds_store_b16_d16_hi v52, v9 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v76, 2, v73
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr76
.LBB0_3:                                ; %Flow217
	s_load_b256 s[0:7], s[0:1], 0x10
	v_or_b32_e32 v74, v1, v68
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v53, 6, v68
	v_lshlrev_b32_e32 v54, 5, v73
	v_lshlrev_b32_e32 v71, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v4, v8 :: v_dual_add_nc_u32 v75, 0, v74
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
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
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s24, v35
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_add3_u32 v4, s24, v34, 64
	s_lshl_b32 s15, s25, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v3, 0x41, v2
	v_and_b32_e32 v1, 56, v1
	v_add_nc_u32_e32 v2, 64, v2
	v_mul_lo_u32 v4, s16, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s17, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s14, s22, 1
	v_xor_b32_e32 v1, v1, v44
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s14, 63
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_or3_b32 v1, v53, v54, v1
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add3_u32 v3, v3, s15, v65
	v_add3_u32 v57, v4, s19, v33
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v17, v9
	v_xor_b32_e32 v11, 48, v1
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v6, 16, v1
	v_xor_b32_e32 v7, 24, v1
	v_xor_b32_e32 v8, 32, v1
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v64, 0, v11
	v_mov_b32_e32 v11, v9
	v_mul_lo_u32 v2, s17, v2
	v_xor_b32_e32 v10, 40, v1
	v_xor_b32_e32 v12, 56, v1
	v_add_nc_u32_e32 v58, 0, v1
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v59, 0, v5
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v60, 0, v6
	v_add3_u32 v2, v2, s15, v65
	s_lshl_b32 s15, s23, 8
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v61, 0, v7
	v_subrev_nc_u32_e32 v55, s15, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v56, s15, v2
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v62, 0, v8
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v63, 0, v10
	v_dual_mov_b32 v29, v9 :: v_dual_add_nc_u32 v66, 0, v12
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s14, s14, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_lshl_b32 s23, s17, 6
	s_add_i32 s22, s14, -1
	s_lshl_b32 s16, s16, 6
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b64 v[41:42], v57, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v67, v75 offset:16704
	ds_load_u8 v80, v75 offset:16640
	ds_load_u8 v81, v75 offset:16832
	ds_load_u8 v82, v75 offset:16768
	ds_load_u8 v84, v75 offset:16448
	ds_load_u8 v85, v75 offset:16384
	ds_load_u8 v86, v75 offset:16576
	ds_load_u8 v87, v75 offset:16512
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v58 offset1:16
	ds_load_2addr_stride64_b64 v[37:40], v59 offset1:16
	ds_load_2addr_stride64_b64 v[33:36], v60 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v88, v75 offset:16736
	ds_load_u8 v89, v75 offset:16672
	ds_load_u8 v90, v75 offset:16864
	ds_load_u8 v91, v75 offset:16800
	ds_load_u8 v92, v75 offset:16480
	ds_load_u8 v93, v75 offset:16416
	ds_load_u8 v94, v75 offset:16608
	ds_load_u8 v95, v75 offset:16544
	ds_load_u8 v97, v75 offset:17216
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v57, s16, v57
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v67, v80, v67, 0xc0c0004
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s22, s22, -1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v82, v81, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[80:83], v61 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s22, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_lshl_or_b32 v85, v96, 16, v67
	ds_load_u8 v67, v75 offset:17344
	ds_load_u8 v96, v75 offset:17280
	v_lshl_or_b32 v84, v86, 16, v84
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v86, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v91, v90, 0xc0c0004
	ds_load_u8 v88, v75 offset:16960
	ds_load_u8 v91, v75 offset:17088
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v90, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_lshl_or_b32 v87, v87, 16, v86
	ds_load_u8 v93, v75 offset:17024
	ds_load_u8 v89, v75 offset:16896
	ds_load_u8 v94, v75 offset:17248
	ds_load_u8 v95, v75 offset:17184
	v_lshl_or_b32 v86, v92, 16, v90
	ds_load_u8 v90, v75 offset:17376
	ds_load_u8 v92, v75 offset:17312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[84:85], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[86:87], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v86, v75 offset:16992
	ds_load_u8 v87, v75 offset:16928
	ds_load_u8 v99, v75 offset:17120
	ds_load_u8 v100, v75 offset:17056
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v96, v67, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v62 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v75 offset:17728
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v75 offset:17408
	ds_load_u8 v98, v75 offset:17152
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v96, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v98, v97, 0xc0c0004
	ds_load_u8 v97, v75 offset:17536
	v_lshl_or_b32 v85, v67, 16, v84
	v_lshl_or_b32 v84, v91, 16, v88
	v_perm_b32 v91, v95, v94, 0xc0c0004
	ds_load_u8 v67, v75 offset:17856
	ds_load_u8 v88, v75 offset:17792
	ds_load_u8 v94, v75 offset:17472
	ds_load_u8 v95, v75 offset:17600
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v90, 16, v91
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[84:85], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v84, v75 offset:17888
	ds_load_u8 v85, v75 offset:17760
	ds_load_u8 v90, v75 offset:18240
	ds_load_u8 v91, v75 offset:18176
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[86:87], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v39, v75 offset:17696
	ds_load_u8 v40, v75 offset:17824
	ds_load_u8 v86, v75 offset:17632
	ds_load_u8 v87, v75 offset:17504
	ds_load_u8 v96, v75 offset:17440
	ds_load_u8 v98, v75 offset:17568
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v88, v67, 0xc0c0004
	ds_load_u8 v67, v75 offset:18304
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v92, v94, 0xc0c0004
	ds_load_u8 v94, v75 offset:17920
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v39, v85, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v40, v40, v84, 0xc0c0004
	ds_load_u8 v84, v75 offset:18688
	ds_load_u8 v85, v75 offset:18752
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v87, v96, v87, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v98, v86, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v96, v75 offset:18816
	v_lshl_or_b32 v39, v86, 16, v87
	ds_load_u8 v86, v75 offset:18496
	ds_load_u8 v87, v75 offset:18432
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v75 offset:19520
	ds_load_u8 v93, v75 offset:17664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v93, v89, 0xc0c0004
	v_perm_b32 v93, v97, v95, 0xc0c0004
	ds_load_u8 v89, v75 offset:18368
	ds_load_u8 v95, v75 offset:18880
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v93, 16, v88
	ds_load_u8 v88, v75 offset:18112
	ds_load_u8 v93, v75 offset:18048
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v37, v75 offset:18400
	ds_load_u8 v38, v75 offset:18272
	ds_load_u8 v35, v75 offset:18208
	ds_load_u8 v36, v75 offset:18336
	ds_load_u8 v39, v75 offset:18144
	ds_load_u8 v40, v75 offset:18016
	ds_load_u8 v97, v75 offset:17952
	ds_load_u8 v98, v75 offset:18080
	v_perm_b32 v33, v91, v90, 0xc0c0004
	ds_load_u8 v91, v75 offset:19264
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v88, v93, v88, 0xc0c0004
	ds_load_u8 v93, v75 offset:19136
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	v_perm_b32 v35, v35, v38, 0xc0c0004
	ds_load_u8 v38, v75 offset:19008
	ds_load_u8 v37, v75 offset:18944
	ds_load_u8 v90, v75 offset:18624
	ds_load_u8 v92, v75 offset:17984
	v_perm_b32 v34, v67, v89, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v97, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v98, v39, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	ds_load_u8 v97, v75 offset:18912
	ds_load_u8 v98, v75 offset:18784
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v35, v39, 16, v40
	ds_load_u8 v39, v75 offset:19776
	ds_load_u8 v40, v75 offset:19712
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v75 offset:19936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v89, v94, v92, 0xc0c0004
	ds_load_u8 v94, v75 offset:19072
	v_lshl_or_b32 v33, v88, 16, v89
	ds_load_u8 v88, v75 offset:19392
	ds_load_u8 v89, v75 offset:19328
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[33:34], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v75 offset:18720
	ds_load_u8 v36, v75 offset:18848
	ds_load_u8 v80, v75 offset:18656
	ds_load_u8 v81, v75 offset:18528
	ds_load_u8 v82, v75 offset:18464
	ds_load_u8 v83, v75 offset:18592
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v75 offset:18976
	ds_load_u8 v67, v75 offset:18560
	v_perm_b32 v33, v84, v85, 0xc0c0004
	v_perm_b32 v34, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v75 offset:20416
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v80, v83, v80, 0xc0c0004
	ds_load_u8 v83, v75 offset:20352
	v_perm_b32 v35, v35, v98, 0xc0c0004
	v_perm_b32 v36, v36, v97, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v95, v75 offset:20288
	ds_load_u8 v96, v75 offset:20224
	ds_load_u8 v84, v75 offset:19904
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v80, 16, v81
	ds_load_u8 v80, v75 offset:20032
	ds_load_u8 v81, v75 offset:19968
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v75 offset:19872
	v_perm_b32 v97, v40, v39, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v67, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[35:36], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v39, v75 offset:19808
	ds_load_u8 v90, v75 offset:19456
	ds_load_u8 v40, v75 offset:19744
	v_lshl_or_b32 v33, v67, 16, v86
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v75 offset:19488
	ds_load_u8 v92, v75 offset:19200
	ds_load_u8 v67, v75 offset:19648
	ds_load_u8 v86, v75 offset:19584
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[33:34], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v75 offset:19360
	ds_load_u8 v36, v75 offset:19296
	ds_load_u8 v76, v75 offset:19232
	ds_load_u8 v77, v75 offset:19168
	ds_load_u8 v78, v75 offset:19104
	ds_load_u8 v79, v75 offset:19040
	ds_load_u8 v33, v75 offset:20160
	ds_load_u8 v34, v75 offset:19424
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v75 offset:20448
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v94, v38, 0xc0c0004
	ds_load_u8 v38, v75 offset:20128
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v75 offset:20096
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v67, v86, v67, 0xc0c0004
	v_perm_b32 v86, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v95, v76, v36, 0xc0c0004
	ds_load_u8 v36, v75 offset:20320
	ds_load_u8 v76, v75 offset:20192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v100, v78, v77, 0xc0c0004
	ds_load_u8 v77, v75 offset:20064
	ds_load_u8 v85, v75 offset:19840
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v96, v35, v34, 0xc0c0004
	ds_load_u8 v34, v75 offset:20256
	v_perm_b32 v99, v89, v79, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v92, v92, v33, 0xc0c0004
	ds_load_u8 v33, v75 offset:20384
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v38, v76, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v85, v84, 0xc0c0004
	ds_load_u8 v84, v75 offset:19680
	ds_load_u8 v85, v75 offset:19616
	v_perm_b32 v101, v40, v39, 0xc0c0004
	ds_load_u8 v39, v75 offset:20000
	v_perm_b32 v87, v90, v87, 0xc0c0004
	ds_load_u8 v90, v75 offset:19552
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v103, v34, v36, 0xc0c0004
	v_lshl_or_b32 v89, v98, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v33, v81, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[33:36], v56, s[12:15], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v97, v104, 16, v103
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v85, v84, 0xc0c0004
	v_lshl_or_b32 v84, v93, 16, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v105, v39, v77, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[37:40], v55, s[12:15], 0 offen
	ds_load_2addr_stride64_b64 v[76:79], v63 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v83, v90, 0xc0c0004
	v_lshl_or_b32 v85, v88, 16, v91
	v_lshl_or_b32 v91, v82, 16, v86
	v_lshl_or_b32 v90, v92, 16, v80
	v_lshl_or_b32 v93, v96, 16, v95
	v_lshl_or_b32 v95, v94, 16, v101
	v_lshl_or_b32 v94, v102, 16, v83
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[80:83], v64 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v88, v67, 16, v87
	v_lshl_or_b32 v92, v100, 16, v99
	v_lshl_or_b32 v96, v106, 16, v105
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v55, s23, v55
	v_add_nc_u32_e32 v56, s23, v56
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[84:85], v[25:32] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[84:87], v66 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[92:93], v[1:8] neg_lo:[1,1,0]
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v43, v[41:42] offset:16384
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[88:89], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[90:91], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[96:97], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v37, v33, 0x5010400
	v_perm_b32 v37, v37, v33, 0x7030602
	v_perm_b32 v76, v38, v34, 0x5010400
	v_perm_b32 v38, v38, v34, 0x7030602
	v_perm_b32 v77, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_perm_b32 v78, v40, v36, 0x5010400
	v_perm_b32 v79, v40, v36, 0x7030602
	v_lshrrev_b32_e32 v41, 8, v67
	v_lshrrev_b32_e32 v42, 24, v67
	v_and_b16 v33.l, 0xff, v67.l
	v_and_b16 v33.h, 0xff, v67.h
	v_lshrrev_b32_e32 v67, 8, v37
	v_lshrrev_b32_e32 v80, 24, v37
	v_lshrrev_b32_e32 v81, 8, v76
	v_and_b16 v35.l, 0xff, v76.l
	v_lshrrev_b32_e32 v82, 24, v76
	v_and_b16 v35.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v38
	v_lshrrev_b32_e32 v83, 24, v38
	v_lshrrev_b32_e32 v84, 8, v77
	v_lshrrev_b32_e32 v85, 24, v77
	v_lshrrev_b32_e32 v86, 8, v39
	v_lshrrev_b32_e32 v87, 24, v39
	v_lshrrev_b32_e32 v88, 8, v78
	v_lshrrev_b32_e32 v89, 24, v78
	v_lshrrev_b32_e32 v90, 8, v79
	v_lshrrev_b32_e32 v91, 24, v79
	v_lshlrev_b16 v41.l, 8, v41.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_and_b16 v34.l, 0xff, v37.l
	v_lshlrev_b16 v42.l, 8, v67.l
	v_and_b16 v34.h, 0xff, v37.h
	v_lshlrev_b16 v42.h, 8, v80.l
	v_lshlrev_b16 v67.l, 8, v81.l
	v_and_b16 v36.l, 0xff, v38.l
	v_and_b16 v36.h, 0xff, v38.h
	v_and_b16 v37.l, 0xff, v77.l
	v_and_b16 v37.h, 0xff, v77.h
	v_and_b16 v38.l, 0xff, v39.l
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.l, 0xff, v78.l
	v_and_b16 v39.h, 0xff, v78.h
	v_and_b16 v40.l, 0xff, v79.l
	v_and_b16 v40.h, 0xff, v79.h
	v_lshlrev_b16 v67.h, 8, v82.l
	v_lshlrev_b16 v76.l, 8, v76.l
	v_lshlrev_b16 v76.h, 8, v83.l
	v_lshlrev_b16 v77.l, 8, v84.l
	v_lshlrev_b16 v77.h, 8, v85.l
	v_lshlrev_b16 v78.l, 8, v86.l
	v_lshlrev_b16 v78.h, 8, v87.l
	v_lshlrev_b16 v79.l, 8, v88.l
	v_lshlrev_b16 v79.h, 8, v89.l
	v_lshlrev_b16 v80.l, 8, v90.l
	v_lshlrev_b16 v80.h, 8, v91.l
	v_or_b16 v33.l, v33.l, v41.l
	v_or_b16 v33.h, v33.h, v41.h
	v_or_b16 v34.l, v34.l, v42.l
	v_or_b16 v34.h, v34.h, v42.h
	v_or_b16 v35.l, v35.l, v67.l
	v_or_b16 v35.h, v35.h, v67.h
	v_or_b16 v36.l, v36.l, v76.l
	v_or_b16 v36.h, v36.h, v76.h
	v_or_b16 v37.l, v37.l, v77.l
	v_or_b16 v37.h, v37.h, v77.h
	v_or_b16 v38.l, v38.l, v78.l
	v_or_b16 v38.h, v38.h, v78.h
	v_or_b16 v39.l, v39.l, v79.l
	v_or_b16 v39.h, v39.h, v79.h
	v_or_b16 v40.l, v40.l, v80.l
	v_or_b16 v40.h, v40.h, v80.h
	ds_store_b16 v45, v33
	ds_store_b16_d16_hi v45, v33 offset:64
	ds_store_b16 v46, v34
	ds_store_b16_d16_hi v46, v34 offset:64
	ds_store_b16 v47, v35
	ds_store_b16_d16_hi v47, v35 offset:64
	ds_store_b16 v48, v36
	ds_store_b16_d16_hi v48, v36 offset:64
	ds_store_b16 v49, v37
	ds_store_b16_d16_hi v49, v37 offset:64
	ds_store_b16 v50, v38
	ds_store_b16_d16_hi v50, v38 offset:64
	ds_store_b16 v51, v39
	ds_store_b16_d16_hi v51, v39 offset:64
	ds_store_b16 v52, v40
	ds_store_b16_d16_hi v52, v40 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow215
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v76, v44
.LBB0_7:                                ; %._crit_edge
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_10
; %bb.8:                                ; %._crit_edge._crit_edge
.Ltmp16:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v33, 2, v0
	s_cbranch_execz .LBB0_11
.Ltmp17:
; %bb.9:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v71, v33
	s_branch .LBB0_12
.LBB0_10:
                                        ; implicit-def: $vgpr33
.LBB0_11:
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	v_and_b32_e32 v33, 56, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v33, v33, v76
	v_or3_b32 v61, v53, v54, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v33, v61, 56, 0
	v_xad_u32 v37, v61, 48, 0
	v_xad_u32 v41, v61, 40, 0
	v_xad_u32 v45, v61, 32, 0
	v_xad_u32 v49, v61, 24, 0
	v_xad_u32 v53, v61, 16, 0
	v_xad_u32 v57, v61, 8, 0
	v_add_nc_u32_e32 v61, 0, v61
	ds_load_2addr_stride64_b64 v[61:64], v61 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v66, v75 offset:16704
	ds_load_u8 v67, v75 offset:16640
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[57:60], v57 offset1:16
	ds_load_2addr_stride64_b64 v[53:56], v53 offset1:16
	ds_load_2addr_stride64_b64 v[49:52], v49 offset1:16
	ds_load_2addr_stride64_b64 v[45:48], v45 offset1:16
	ds_load_2addr_stride64_b64 v[41:44], v41 offset1:16
	ds_load_2addr_stride64_b64 v[37:40], v37 offset1:16
	ds_load_2addr_stride64_b64 v[33:36], v33 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v75 offset:16832
	ds_load_u8 v77, v75 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v77, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v75 offset:16448
	ds_load_u8 v77, v75 offset:16384
	ds_load_u8 v91, v75 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v66, v77, v66, 0xc0c0004
	ds_load_u8 v77, v75 offset:16576
	ds_load_u8 v78, v75 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v77, 16, v66
	ds_load_u8 v77, v75 offset:17216
	ds_load_u8 v78, v75 offset:17152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[66:67], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v66, v75 offset:16736
	ds_load_u8 v67, v75 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v75 offset:17344
	ds_load_u8 v79, v75 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v75 offset:16960
	ds_load_u8 v79, v75 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v75 offset:17088
	ds_load_u8 v80, v75 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	ds_load_u8 v79, v75 offset:17728
	ds_load_u8 v80, v75 offset:17664
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[77:78], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v67, v75 offset:16864
	ds_load_u8 v77, v75 offset:16800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v75 offset:17856
	ds_load_u8 v81, v75 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v77, v67, 0xc0c0004
	ds_load_u8 v77, v75 offset:16608
	ds_load_u8 v78, v75 offset:16544
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v75 offset:16480
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v79, v75 offset:17472
	ds_load_u8 v81, v75 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v91, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v77, 16, v66
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[66:67], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v75 offset:17248
	ds_load_u8 v62, v75 offset:17184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[66:67], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v81, v79, 0xc0c0004
	ds_load_u8 v81, v75 offset:17600
	ds_load_u8 v82, v75 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v75 offset:17376
	ds_load_u8 v77, v75 offset:17312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v81, 16, v79
	ds_load_u8 v81, v75 offset:18240
	ds_load_u8 v82, v75 offset:18176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v62, v77, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v75 offset:16992
	ds_load_u8 v77, v75 offset:16928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v75 offset:18368
	ds_load_u8 v83, v75 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v61, v77, v61, 0xc0c0004
	ds_load_u8 v77, v75 offset:17120
	ds_load_u8 v78, v75 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v75 offset:17984
	ds_load_u8 v83, v75 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_lshl_or_b32 v61, v77, 16, v61
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[61:62], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v75 offset:17760
	ds_load_u8 v58, v75 offset:17696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v75 offset:18112
	ds_load_u8 v84, v75 offset:18048
	v_wmma_i32_16x16x16_iu4 v[1:8], v[59:60], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v75 offset:17888
	ds_load_u8 v77, v75 offset:17824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	ds_load_u8 v83, v75 offset:18752
	ds_load_u8 v84, v75 offset:18688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[81:82], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v77, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v75 offset:17504
	ds_load_u8 v77, v75 offset:17440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v75 offset:18880
	ds_load_u8 v85, v75 offset:18816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v77, v57, 0xc0c0004
	ds_load_u8 v77, v75 offset:17632
	ds_load_u8 v78, v75 offset:17568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v84, v84, 16, v83
	ds_load_u8 v83, v75 offset:18496
	ds_load_u8 v85, v75 offset:18432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_lshl_or_b32 v57, v77, 16, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v85, v83, 0xc0c0004
	ds_load_u8 v85, v75 offset:18624
	ds_load_u8 v86, v75 offset:18560
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[57:58], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v53, v75 offset:18272
	ds_load_u8 v54, v75 offset:18208
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v75 offset:18400
	ds_load_u8 v77, v75 offset:18336
	v_lshl_or_b32 v83, v85, 16, v83
	ds_load_u8 v85, v75 offset:19264
	ds_load_u8 v86, v75 offset:19200
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[83:84], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v77, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v75 offset:19392
	ds_load_u8 v87, v75 offset:19328
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v75 offset:18016
	ds_load_u8 v77, v75 offset:17952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v77, v53, 0xc0c0004
	ds_load_u8 v77, v75 offset:18144
	ds_load_u8 v78, v75 offset:18080
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v75 offset:19008
	ds_load_u8 v87, v75 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v75 offset:19136
	ds_load_u8 v88, v75 offset:19072
	v_lshl_or_b32 v53, v77, 16, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[53:54], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v49, v75 offset:18784
	ds_load_u8 v50, v75 offset:18720
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[53:54], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	ds_load_u8 v87, v75 offset:19776
	ds_load_u8 v88, v75 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v75 offset:18912
	ds_load_u8 v77, v75 offset:18848
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[85:86], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v75 offset:19904
	ds_load_u8 v89, v75 offset:19840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v77, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v75 offset:18528
	ds_load_u8 v77, v75 offset:18464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_lshl_or_b32 v88, v88, 16, v87
	ds_load_u8 v87, v75 offset:19520
	ds_load_u8 v89, v75 offset:19456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v77, v49, 0xc0c0004
	ds_load_u8 v77, v75 offset:18656
	ds_load_u8 v78, v75 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v89, v87, 0xc0c0004
	ds_load_u8 v89, v75 offset:19648
	ds_load_u8 v90, v75 offset:19584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v77, 16, v49
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[49:50], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v45, v75 offset:19296
	ds_load_u8 v46, v75 offset:19232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v89, 16, v87
	ds_load_u8 v89, v75 offset:20288
	ds_load_u8 v90, v75 offset:20224
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v75 offset:19424
	ds_load_u8 v77, v75 offset:19360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v75 offset:20416
	ds_load_u8 v92, v75 offset:20352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v77, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v75 offset:19040
	ds_load_u8 v77, v75 offset:18976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v75 offset:20032
	ds_load_u8 v92, v75 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v77, v45, 0xc0c0004
	ds_load_u8 v77, v75 offset:19168
	ds_load_u8 v78, v75 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v92, v89, 0xc0c0004
	ds_load_u8 v92, v75 offset:20160
	ds_load_u8 v93, v75 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v77, 16, v45
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[45:46], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v75 offset:19808
	ds_load_u8 v42, v75 offset:19744
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v92, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[89:90], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v75 offset:19936
	ds_load_u8 v77, v75 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v77, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v75 offset:19552
	ds_load_u8 v77, v75 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v77, v41, 0xc0c0004
	ds_load_u8 v77, v75 offset:19680
	ds_load_u8 v78, v75 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v77, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v75 offset:20320
	ds_load_u8 v38, v75 offset:20256
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v75 offset:20448
	ds_load_u8 v77, v75 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v77, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v75 offset:20064
	ds_load_u8 v77, v75 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v77, v37, 0xc0c0004
	ds_load_u8 v77, v75 offset:20192
	ds_load_u8 v75, v75 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v75, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[37:38], v[1:8] neg_lo:[1,1,0]
.LBB0_12:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v35, v0, 4, 1
	v_lshrrev_b32_e32 v36, 1, v73
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v9
	v_cvt_f32_i32_e32 v9, v18
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v18, s19, v74
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v11
	v_cvt_f32_i32_e32 v11, v20
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v20, v35, v36, s20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s9, s1, 0xffff
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v18, 1, v18
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 170 22 is_stmt 1              ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s8, s0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v38, v10
	v_cvt_f32_i32_e32 v10, v19
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v19, v18, s[8:11], 0 offen
	v_or_b32_e32 v18, 64, v18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v41, v13
	v_cvt_f32_i32_e32 v42, v14
	v_cvt_f32_i32_e32 v43, v15
	v_cvt_f32_i32_e32 v13, v22
	v_cvt_f32_i32_e32 v14, v23
	v_cvt_f32_i32_e32 v15, v24
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v22, 4, v20
	v_or_b32_e32 v23, 8, v20
	v_or_b32_e32 v24, 12, v20
	v_or_b32_e32 v35, 16, v20
	v_or_b32_e32 v36, 20, v20
	v_or_b32_e32 v44, 24, v20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s9, s3, 0xffff
	s_mov_b32 s8, s2
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v40, v12
	v_cvt_f32_i32_e32 v12, v21
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_clause 0x6
	buffer_load_u16 v21, v20, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	v_or_b32_e32 v46, 0x100, v20
	v_or_b32_e32 v48, 0x108, v20
	v_or_b32_e32 v45, 28, v20
	v_or_b32_e32 v47, 0x104, v20
	v_or_b32_e32 v49, 0x10c, v20
	s_clause 0x1
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	v_or_b32_e32 v50, 0x110, v20
	v_or_b32_e32 v51, 0x114, v20
	v_or_b32_e32 v52, 0x118, v20
	s_clause 0x5
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	buffer_load_u16 v51, v51, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s17, 31
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v33, 4, v70
.Ltmp20:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s17, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 1
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s19, s1
.Ltmp21:
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v54, v19, v22 :: v_dual_lshlrev_b32 v21, 16, v21
	v_mul_f32_e32 v22, v18, v22
	v_mul_f32_e32 v58, v19, v36
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v57, v19, v35 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v35, v18, v35 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v63, v19, v48
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v53, v19, v21 :: v_dual_and_b32 v34, 16, v0
	v_mul_f32_e32 v61, v19, v46
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v20, 0x11c, v20
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v62, v19, v47
	v_mul_f32_e32 v60, v19, v45
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v18, v45 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v21, v18, v21
	v_dual_mul_f32 v36, v18, v36 :: v_dual_mul_f32 v27, v63, v27
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s8, s4
.Ltmp24:
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v47, v18, v47
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v13, v36, v13
	v_mul_f32_e32 v25, v61, v25
	v_mul_f32_e32 v9, v22, v9
	v_mul_f32_e32 v17, v21, v17
	v_dual_mul_f32 v15, v45, v15 :: v_dual_mul_f32 v2, v47, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_max_f32_e32 v25, 0, v25
	v_max_f32_e32 v27, 0, v27
	v_dual_max_f32 v9, 0, v9 :: v_dual_lshlrev_b32 v34, 7, v34
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v66, v19, v50 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v64, v19, v49 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v74, v19, v52 :: v_dual_mul_f32 v49, v18, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v19, v51
	v_dual_mul_f32 v56, v19, v24 :: v_dual_lshlrev_b32 v23, 16, v23
	v_mul_f32_e32 v24, v18, v24
	v_mul_f32_e32 v46, v18, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v48, v18, v48 :: v_dual_mul_f32 v55, v19, v23
	v_mul_f32_e32 v23, v18, v23
	v_mul_f32_e32 v59, v19, v44
	v_mul_f32_e32 v19, v19, v20
	v_mul_f32_e32 v44, v18, v44
	v_mul_f32_e32 v50, v18, v50
	v_mul_f32_e32 v51, v18, v51
	v_mul_f32_e32 v52, v18, v52
	v_mul_f32_e32 v18, v18, v20
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v20, v53, v37 :: v_dual_mul_f32 v37, v54, v38
	v_dual_mul_f32 v38, v55, v39 :: v_dual_mul_f32 v39, v56, v40
	v_dual_mul_f32 v40, v57, v41 :: v_dual_mul_f32 v41, v58, v42
	v_dual_mul_f32 v42, v59, v43 :: v_dual_mul_f32 v29, v66, v29
	v_dual_mul_f32 v16, v60, v16 :: v_dual_mul_f32 v31, v74, v31
	v_mul_f32_e32 v28, v64, v28
	v_dual_mul_f32 v30, v67, v30 :: v_dual_mul_f32 v1, v46, v1
	v_dual_mul_f32 v11, v24, v11 :: v_dual_mul_f32 v26, v62, v26
	v_mul_f32_e32 v3, v48, v3
	v_mul_f32_e32 v19, v19, v32
	v_dual_mul_f32 v10, v23, v10 :: v_dual_mul_f32 v5, v50, v5
	v_dual_mul_f32 v12, v35, v12 :: v_dual_mul_f32 v7, v52, v7
	v_dual_mul_f32 v14, v44, v14 :: v_dual_max_f32 v23, 0, v40
	v_dual_mul_f32 v4, v49, v4 :: v_dual_max_f32 v21, 0, v38
	v_mul_f32_e32 v6, v51, v6
	v_dual_mul_f32 v8, v18, v8 :: v_dual_max_f32 v29, 0, v29
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_dual_max_f32 v18, 0, v20 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v20, 0, v37 :: v_dual_max_f32 v35, 0, v19
	v_max_f32_e32 v22, 0, v39
	v_dual_max_f32 v24, 0, v41 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v43, 0, v8
	v_dual_max_f32 v32, 0, v42 :: v_dual_max_f32 v39, 0, v13
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v36, 0, v17 :: v_dual_max_f32 v41, 0, v6
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v45, v20, v20
	v_dual_max_f32 v38, 0, v12 :: v_dual_mul_f32 v13, v22, v22
	v_max_f32_e32 v14, 0, v14
	v_dual_max_f32 v40, 0, v15 :: v_dual_mul_f32 v17, v24, v24
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v19, v16, v16
	v_max_f32_e32 v4, 0, v4
	v_max_f32_e32 v42, 0, v7
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_mul_f32_e32 v44, v18, v18
	v_dual_mul_f32 v12, v21, v21 :: v_dual_mul_f32 v15, v23, v23
	v_dual_mul_f32 v20, v25, v25 :: v_dual_mul_f32 v21, v26, v26
	v_dual_mul_f32 v22, v27, v27 :: v_dual_mul_f32 v23, v28, v28
	v_dual_mul_f32 v25, v29, v29 :: v_dual_mul_f32 v26, v30, v30
	v_mul_f32_e32 v37, v11, v11
	v_dual_mul_f32 v27, v31, v31 :: v_dual_mul_f32 v18, v32, v32
	v_dual_mul_f32 v31, v9, v9 :: v_dual_mul_f32 v28, v35, v35
	v_mul_f32_e32 v7, v4, v4
	v_dual_mul_f32 v35, v10, v10 :: v_dual_mul_f32 v32, v39, v39
	v_mul_f32_e32 v30, v14, v14
	v_mul_f32_e32 v16, v1, v1
	v_dual_mul_f32 v14, v2, v2 :: v_dual_max_f32 v1, v44, v45
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v13, v15, v17
	v_max3_f32 v10, v21, v22, v23
	v_max3_f32 v11, v25, v26, v27
.Ltmp26:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v29, v36, v36 :: v_dual_mul_f32 v36, v38, v38
	v_mul_f32_e32 v8, v3, v3
	v_mul_f32_e32 v6, v5, v5
	v_dual_mul_f32 v5, v41, v41 :: v_dual_mul_f32 v4, v42, v42
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v18, v19, v20
	v_max3_f32 v1, v1, v12, v2
	v_max3_f32 v2, v10, v11, v28
.Ltmp28:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v24, v40, v40 :: v_dual_mul_f32 v3, v43, v43
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v11, v14, v8, v7
	v_max3_f32 v38, v6, v5, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max3_f32 v1, v1, v9, v2
	v_max_f32_e32 v2, v29, v31
	v_max3_f32 v9, v37, v36, v32
	v_max3_f32 v10, v30, v24, v16
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v39, v72, 8, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v35, v9
	v_max3_f32 v9, v11, v38, v3
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v11, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v10, v9
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v10, 1, v0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v10, 0xf0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v9, 4, v72
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v38, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v39, v38, v11
	ds_store_b64 v38, v[1:2]
	v_lshl_or_b32 v1, v73, 3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v1, v1, v10
	v_lshl_add_u32 v10, v11, 3, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, 0, v11, v1
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v9
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v9, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v10, v9, v76
	ds_store_b64 v10, v[1:2]
	v_lshlrev_b32_e32 v1, 3, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, 0, v1, v9
	ds_load_b64 v[9:10], v2
.Ltmp55:
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
	v_fma_f32 v38, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v38, v11
	v_div_scale_f32 v38, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v39, v38, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v10, v39, v38
	v_fmac_f32_e32 v39, v40, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v39, v38
	v_div_fmas_f32 v10, v10, v11, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v10, 0x40e00000, v2
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v9
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v38, v11
	v_div_scale_f32 v38, vcc_lo, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v11
	v_fma_f32 v40, -v10, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v11
	v_fma_f32 v10, -v10, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v39
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
	v_and_b32_e32 v38, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v10, null, v38, v38, v44
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v39, v11
	v_div_scale_f32 v39, vcc_lo, v44, v38, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v11
	v_fma_f32 v41, -v10, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v11
	v_fma_f32 v10, -v10, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v40
	v_div_scale_f32 v11, null, v38, v38, v45
	v_div_fixup_f32 v10, v10, v38, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v11
	v_fma_f32 v40, -v11, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v45, v38, v45
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v11, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v41, v40
	v_div_fmas_f32 v11, v11, v39, v41
	v_div_scale_f32 v39, null, v38, v38, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v11, v38, v45
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v12, v38, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v12, v39, v38, v12
	v_div_scale_f32 v39, null, v38, v38, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v13, v38, v13
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v13, v39, v38, v13
	v_div_scale_f32 v39, null, v38, v38, v15
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v15, v38, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v15, v39, v38, v15
	v_div_scale_f32 v39, null, v38, v38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v17, v38, v17
	v_dual_mul_f32 v42, v41, v40 :: v_dual_and_b32 v9, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v17, v39, v38, v17
	v_div_scale_f32 v39, null, v38, v38, v18
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v18, v39, v38, v18
	v_div_scale_f32 v39, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v19, v38, v19
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v19, v39, v38, v19
	v_div_scale_f32 v39, null, v38, v38, v20
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v20, v38, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v20, v39, v38, v20
	v_div_scale_f32 v39, null, v38, v38, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v21, v38, v21
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v21, v39, v38, v21
	v_div_scale_f32 v39, null, v38, v38, v22
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v22, v38, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v22, v39, v38, v22
	v_div_scale_f32 v39, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v23, v38, v23
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v23, v39, v38, v23
	v_div_scale_f32 v39, null, v38, v38, v25
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v25, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_scale_f32 v39, null, v38, v38, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v26, v38, v26
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v26, v39, v38, v26
	v_div_scale_f32 v39, null, v38, v38, v27
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v27, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v27, v39, v38, v27
	v_div_scale_f32 v39, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v28, v38, v28
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v28, v39, v38, v28
	v_div_scale_f32 v38, null, v9, v9, v29
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v29, v9, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v29, v38, v9, v29
	v_div_scale_f32 v38, null, v9, v9, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v31, v9, v31
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v31, v38, v9, v31
	v_div_scale_f32 v38, null, v9, v9, v35
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v35, v9, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v35, v38, v9, v35
	v_div_scale_f32 v38, null, v9, v9, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v37, v9, v37
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v38, v9, v37
	v_div_scale_f32 v38, null, v9, v9, v36
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v36, v9, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v36, v38, v9, v36
	v_div_scale_f32 v38, null, v9, v9, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v32, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v32, v38, v9, v32
	v_div_scale_f32 v38, null, v9, v9, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v30, v9, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v30, v38, v9, v30
	v_div_scale_f32 v38, null, v9, v9, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v24, v9, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v24, v38, v9, v24
	v_div_scale_f32 v38, null, v9, v9, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v16, v9, v16
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v38, v9, v16
	v_div_scale_f32 v38, null, v9, v9, v14
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v14, v9, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v14, v38, v9, v14
	v_div_scale_f32 v38, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v38, v9, v8
	v_div_scale_f32 v38, null, v9, v9, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v7, v9, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v7, v38, v9, v7
	v_div_scale_f32 v38, null, v9, v9, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v6, v9, v6
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v38, v9, v6
	v_div_scale_f32 v38, null, v9, v9, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v9, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v5, v38, v9, v5
	v_div_scale_f32 v38, null, v9, v9, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v4, v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v4, v38, v9, v4
	v_div_scale_f32 v38, null, v9, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v3, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v42, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v38, v41, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v39, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v41, v7
	v_cvt_i32_f32_e32 v39, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v38, v9, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v13
	v_rndne_f32_e32 v13, v15
	v_rndne_f32_e32 v15, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v21, v22
	v_rndne_f32_e32 v22, v23
	v_rndne_f32_e32 v23, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v31
	v_rndne_f32_e32 v31, v35
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v21, v21
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	v_and_b32_e32 v7, 15, v13
	v_and_b32_e32 v13, 15, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v21, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v37, v24
	v_and_b32_e32 v24, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x3000, v31
	v_and_b32_e32 v32, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v5, 15, v11
	v_and_b32_e32 v11, 15, v19
	v_and_b32_e32 v19, 15, v28
	v_and_b32_e32 v28, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0x200, v71
	v_xor_b32_e32 v32, v65, v32
	v_add3_u32 v31, 0, v31, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v45, v3
	v_and_b32_e32 v3, 15, v9
	v_and_b32_e32 v4, 15, v10
	v_and_b32_e32 v6, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v31, v31, v39, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 15, v20
	v_and_b32_e32 v14, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[3:6]
	ds_store_b128 v31, v[11:14] offset:1024
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0x60, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v38, v16
	v_and_b32_e32 v20, 15, v29
	v_and_b32_e32 v22, 15, v35
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v32, v3, v70, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 15, v18
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v18, 15, v27
	v_and_b32_e32 v25, 15, v30
	v_and_b32_e32 v27, 15, v38
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v41
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
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
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 15, v15
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v15, 15, v23
	v_and_b32_e32 v17, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b128 v31, v[7:10]
	ds_store_b128 v31, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v32
	ds_load_b128 v[15:18], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v11, 4, v3
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s18, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v11, v27, 4, v19
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s1, v33
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, s2, s0, v1
	s_lshl_b32 s1, s1, 5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v36
	v_and_b32_e32 v26, 15, v37
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v28, 4, v20
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v1, v19
	v_add3_u32 v19, v19, s1, v1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v35, 15, v42
	v_and_b32_e32 v36, 15, v43
	v_and_b32_e32 v37, 15, v44
	v_and_b32_e32 v38, 15, v45
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[23:26]
	ds_store_b128 v31, v[35:38] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v32
	ds_load_b128 v[34:37], v32 offset:2048
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
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s17, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v36, 4, v25
	v_lshl_or_b32 v18, v37, 4, v26
	v_lshl_or_b32 v15, v34, 4, v23
	v_lshl_or_b32 v16, v35, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s17, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v20, s[8:11], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
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
	v_and_or_b32 v1, v0, 63, s19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v19, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v68
	v_lshrrev_b32_e32 v4, 2, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s7, 0xffff
	v_add3_u32 v3, 0, v3, v4
	s_mov_b32 s8, s6
	ds_store_b32 v3, v2
.Ltmp56:
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp57:
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x7c, v71
	v_and_b32_e32 v0, 0x1c0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v1, s18, 1
	v_add3_u32 v2, 0, v2, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v2
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp58:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 107
		.amdhsa_next_free_sgpr 26
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 107
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14796
; TotalNumSgprs: 28
; NumVgprs: 107
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 107
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     107
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
