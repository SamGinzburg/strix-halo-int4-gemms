	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_lshlrev_b32_e32 v13, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v69, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v73, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v70
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v43, 0, v13
	s_delay_alu instid0(VALU_DEP_3)
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
	v_and_b32_e32 v68, 15, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s22, 0x81
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v72
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v65, 4, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[4:5], null, s16, v2, v[1:2]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[5:6], null, s17, v3, v[65:66]
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, s20, s3, v5
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	s_mul_i32 s3, s16, s24
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	v_add3_u32 v4, s3, s19, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v6, s17, v5
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v9, 0x80000000, v6, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[12:15], 0 offen
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	.loc	1 152 22 is_stmt 1              ; generate_amdgcn.py:152:22
	buffer_load_b64 v[21:22], v4, s[8:11], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v4, v1, v3
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v68, 10, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v69
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v13, 0x88, v14
	v_add_nc_u32_e32 v47, 0, v14
	v_xor_b32_e32 v15, 0x110, v14
	v_xor_b32_e32 v16, 0x198, v14
	v_xor_b32_e32 v17, 0x220, v14
	v_xor_b32_e32 v18, 0x2a8, v14
	v_xor_b32_e32 v19, 0x330, v14
	v_xor_b32_e32 v14, 0x3b8, v14
	v_add_nc_u32_e32 v48, 0, v13
	v_add_nc_u32_e32 v49, 0, v15
	v_add_nc_u32_e32 v50, 0, v16
	v_add_nc_u32_e32 v51, 0, v17
	v_add_nc_u32_e32 v54, 0, v14
	v_add_nc_u32_e32 v52, 0, v18
	v_add_nc_u32_e32 v53, 0, v19
	s_waitcnt vmcnt(1)
	v_perm_b32 v13, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v14, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v15, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v16, v12, v8, 0x5010400
	v_perm_b32 v17, v12, v8, 0x7030602
	v_lshrrev_b32_e32 v18, 8, v13
	v_lshrrev_b32_e32 v19, 24, v13
	v_lshrrev_b32_e32 v20, 8, v9
	v_lshrrev_b32_e32 v23, 24, v9
	v_lshrrev_b32_e32 v24, 8, v14
	v_lshrrev_b32_e32 v25, 24, v14
	v_lshrrev_b32_e32 v26, 8, v10
	v_lshrrev_b32_e32 v27, 24, v10
	v_lshrrev_b32_e32 v28, 8, v15
	v_lshrrev_b32_e32 v29, 24, v15
	v_lshrrev_b32_e32 v30, 8, v11
	v_lshrrev_b32_e32 v31, 24, v11
	v_lshrrev_b32_e32 v32, 8, v16
	v_lshrrev_b32_e32 v33, 24, v16
	v_lshrrev_b32_e32 v34, 8, v17
	v_lshrrev_b32_e32 v35, 24, v17
	v_and_b16 v5.l, 0xff, v13.l
	v_lshlrev_b16 v13.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v13.h
	v_lshlrev_b16 v13.h, 8, v19.l
	v_and_b16 v6.l, 0xff, v9.l
	v_and_b16 v7.l, 0xff, v14.l
	v_lshlrev_b16 v14.l, 8, v20.l
	v_and_b16 v6.h, 0xff, v9.h
	v_and_b16 v7.h, 0xff, v14.h
	v_lshlrev_b16 v14.h, 8, v23.l
	v_and_b16 v8.l, 0xff, v10.l
	v_and_b16 v8.h, 0xff, v10.h
	v_and_b16 v9.l, 0xff, v15.l
	v_and_b16 v9.h, 0xff, v15.h
	v_and_b16 v10.l, 0xff, v11.l
	v_and_b16 v10.h, 0xff, v11.h
	v_and_b16 v11.l, 0xff, v16.l
	v_and_b16 v11.h, 0xff, v16.h
	v_and_b16 v12.l, 0xff, v17.l
	v_and_b16 v12.h, 0xff, v17.h
	v_lshlrev_b16 v15.l, 8, v24.l
	v_lshlrev_b16 v15.h, 8, v25.l
	v_lshlrev_b16 v16.l, 8, v26.l
	v_lshlrev_b16 v16.h, 8, v27.l
	v_lshlrev_b16 v17.l, 8, v28.l
	v_lshlrev_b16 v17.h, 8, v29.l
	v_lshlrev_b16 v18.l, 8, v30.l
	v_lshlrev_b16 v18.h, 8, v31.l
	v_lshlrev_b16 v19.l, 8, v32.l
	v_lshlrev_b16 v19.h, 8, v33.l
	v_lshlrev_b16 v20.l, 8, v34.l
	v_lshlrev_b16 v20.h, 8, v35.l
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
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[21:22] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v47, v5
	ds_store_b16_d16_hi v47, v5 offset:64
	ds_store_b16 v48, v6
	ds_store_b16_d16_hi v48, v6 offset:64
	ds_store_b16 v49, v7
	ds_store_b16_d16_hi v49, v7 offset:64
	ds_store_b16 v50, v8
	ds_store_b16_d16_hi v50, v8 offset:64
	ds_store_b16 v51, v9
	ds_store_b16_d16_hi v51, v9 offset:64
	ds_store_b16 v52, v10
	ds_store_b16_d16_hi v52, v10 offset:64
	ds_store_b16 v53, v11
	ds_store_b16_d16_hi v53, v11 offset:64
	ds_store_b16 v54, v12
	ds_store_b16_d16_hi v54, v12 offset:64
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
.LBB0_3:                                ; %Flow292
	s_load_b256 s[0:7], s[0:1], 0x10
	v_or_b32_e32 v74, v4, v68
	v_lshlrev_b32_e32 v45, 6, v68
	v_lshlrev_b32_e32 v46, 5, v73
	v_lshlrev_b32_e32 v71, 2, v0
	s_and_not1_b32 vcc_lo, exec_lo, s14
	v_add_nc_u32_e32 v75, 0, v74
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v3, s24, v3
	v_add3_u32 v2, s24, v2, 64
	s_lshl_b32 s15, s25, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v15, v13 :: v_dual_and_b32 v4, 56, v4
	v_dual_mov_b32 v14, v13 :: v_dual_add_nc_u32 v5, 0x41, v3
	v_dual_mov_b32 v16, v13 :: v_dual_add_nc_u32 v3, 64, v3
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v44
	v_mul_lo_u32 v5, s17, v5
	v_mul_lo_u32 v2, s16, v2
	v_mul_lo_u32 v3, s17, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s14, s22, 1
	v_or3_b32 v4, v45, v46, v4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s14, 63
	v_mov_b32_e32 v26, v13
	v_mov_b32_e32 v17, v13
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add3_u32 v5, v5, s15, v65
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_xor_b32_e32 v9, 32, v4
	v_xor_b32_e32 v10, 40, v4
	v_xor_b32_e32 v11, 48, v4
	v_xor_b32_e32 v12, 56, v4
	v_add3_u32 v3, v3, s15, v65
	s_lshl_b32 s15, s23, 8
	v_add3_u32 v57, v2, s19, v1
	v_subrev_nc_u32_e32 v55, s15, v5
	v_add_nc_u32_e32 v58, 0, v4
	v_subrev_nc_u32_e32 v56, s15, v3
	v_dual_mov_b32 v20, v13 :: v_dual_add_nc_u32 v59, 0, v6
	v_dual_mov_b32 v19, v13 :: v_dual_add_nc_u32 v60, 0, v7
	v_dual_mov_b32 v22, v13 :: v_dual_add_nc_u32 v61, 0, v8
	v_dual_mov_b32 v21, v13 :: v_dual_add_nc_u32 v62, 0, v9
	v_dual_mov_b32 v24, v13 :: v_dual_add_nc_u32 v63, 0, v10
	v_dual_mov_b32 v23, v13 :: v_dual_add_nc_u32 v64, 0, v11
	v_dual_mov_b32 v25, v13 :: v_dual_add_nc_u32 v66, 0, v12
	v_mov_b32_e32 v27, v13
	v_mov_b32_e32 v28, v13
	v_mov_b32_e32 v29, v13
	v_mov_b32_e32 v30, v13
	v_mov_b32_e32 v31, v13
	v_mov_b32_e32 v32, v13
	v_mov_b32_e32 v33, v13
	v_mov_b32_e32 v34, v13
	v_mov_b32_e32 v35, v13
	v_mov_b32_e32 v36, v13
	v_mov_b32_e32 v1, v13
	v_mov_b32_e32 v2, v13
	v_mov_b32_e32 v3, v13
	v_mov_b32_e32 v4, v13
	v_mov_b32_e32 v5, v13
	v_mov_b32_e32 v6, v13
	v_mov_b32_e32 v7, v13
	v_mov_b32_e32 v8, v13
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
	ds_load_u8 v79, v75 offset:16704
	ds_load_u8 v80, v75 offset:16640
	ds_load_u8 v81, v75 offset:16832
	ds_load_u8 v82, v75 offset:16768
	ds_load_u8 v76, v75 offset:16448
	ds_load_u8 v78, v75 offset:16384
	ds_load_u8 v67, v75 offset:16576
	ds_load_u8 v77, v75 offset:16512
	ds_load_u8 v83, v75 offset:16864
	ds_load_u8 v84, v75 offset:16800
	ds_load_u8 v85, v75 offset:16736
	ds_load_u8 v86, v75 offset:16672
	ds_load_u8 v87, v75 offset:16608
	ds_load_u8 v88, v75 offset:16544
	ds_load_u8 v89, v75 offset:16480
	ds_load_u8 v90, v75 offset:16416
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v56, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v55, s[12:15], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v55, s23, v55
	v_add_nc_u32_e32 v56, s23, v56
	v_add_nc_u32_e32 v57, s16, v57
	s_add_i32 s22, s22, -1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v80, v79, 0xc0c0004
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s22, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v82, v81, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[79:82], v58 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v75 offset:17216
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v77, v67, 0xc0c0004
	v_lshl_or_b32 v77, v92, 16, v91
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_lshl_or_b32 v76, v67, 16, v76
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v67, v75 offset:17344
	ds_load_u8 v91, v75 offset:17280
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_lshl_or_b32 v84, v83, 16, v85
	ds_load_u8 v86, v75 offset:16960
	ds_load_u8 v90, v75 offset:17088
	ds_load_u8 v88, v75 offset:17024
	ds_load_u8 v92, v75 offset:16896
	v_lshl_or_b32 v83, v87, 16, v89
	ds_load_u8 v85, v75 offset:17376
	ds_load_u8 v87, v75 offset:17312
	ds_load_u8 v89, v75 offset:17248
	ds_load_u8 v94, v75 offset:17184
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[81:82], v[76:77], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[79:80], v[76:77], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[79:80], v[83:84], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v75 offset:16992
	ds_load_u8 v83, v75 offset:16928
	ds_load_u8 v84, v75 offset:17120
	ds_load_u8 v95, v75 offset:17056
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v91, v67, 0xc0c0004
	ds_load_u8 v91, v75 offset:17728
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v88, v88, v90, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v86, v92, v86, 0xc0c0004
	ds_load_u8 v90, v75 offset:17664
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v75 offset:17408
	ds_load_u8 v93, v75 offset:17152
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v84, v95, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v84, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v93, v78, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v59 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v93, v75 offset:17536
	v_lshl_or_b32 v81, v67, 16, v80
	v_lshl_or_b32 v80, v88, 16, v86
	v_perm_b32 v88, v94, v89, 0xc0c0004
	ds_load_u8 v67, v75 offset:17856
	ds_load_u8 v86, v75 offset:17792
	ds_load_u8 v89, v75 offset:17472
	v_lshl_or_b32 v83, v85, 16, v88
	ds_load_u8 v84, v75 offset:17888
	ds_load_u8 v85, v75 offset:17824
	ds_load_u8 v88, v75 offset:17760
	ds_load_u8 v94, v75 offset:17696
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[82:83], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[82:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v75 offset:17504
	ds_load_u8 v83, v75 offset:17440
	ds_load_u8 v95, v75 offset:17632
	ds_load_u8 v96, v75 offset:17568
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[80:81], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[80:81], v[21:28] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v60 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v86, v67, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v86, v87, v89, 0xc0c0004
	ds_load_u8 v87, v75 offset:18240
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v94, v88, 0xc0c0004
	ds_load_u8 v85, v75 offset:17920
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v83, v84, 16, v88
	ds_load_u8 v84, v75 offset:18400
	ds_load_u8 v88, v75 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v88, v84, 0xc0c0004
	ds_load_u8 v88, v75 offset:18432
	ds_load_u8 v92, v75 offset:17600
	v_perm_b32 v80, v90, v91, 0xc0c0004
	ds_load_u8 v91, v75 offset:18112
	v_lshl_or_b32 v81, v67, 16, v80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v93, v92, 0xc0c0004
	v_perm_b32 v92, v96, v95, 0xc0c0004
	ds_load_u8 v93, v75 offset:18048
	v_lshl_or_b32 v80, v89, 16, v86
	ds_load_u8 v67, v75 offset:18368
	ds_load_u8 v86, v75 offset:18304
	ds_load_u8 v89, v75 offset:17984
	v_lshl_or_b32 v82, v92, 16, v82
	ds_load_u8 v92, v75 offset:18272
	ds_load_u8 v94, v75 offset:18208
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[80:81], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[80:81], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[82:83], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[82:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v75 offset:18016
	ds_load_u8 v83, v75 offset:17952
	ds_load_u8 v95, v75 offset:18144
	ds_load_u8 v96, v75 offset:18080
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v61 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v86, v67, 0xc0c0004
	ds_load_u8 v86, v75 offset:18752
	ds_load_u8 v90, v75 offset:18176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v85, v85, v89, 0xc0c0004
	ds_load_u8 v89, v75 offset:18688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v80, v90, v87, 0xc0c0004
	v_perm_b32 v87, v93, v91, 0xc0c0004
	ds_load_u8 v90, v75 offset:18496
	ds_load_u8 v93, v75 offset:18560
	v_lshl_or_b32 v81, v67, 16, v80
	v_lshl_or_b32 v80, v87, 16, v85
	v_perm_b32 v87, v94, v92, 0xc0c0004
	ds_load_u8 v67, v75 offset:18880
	ds_load_u8 v85, v75 offset:18816
	v_perm_b32 v92, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[80:81], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v84, 16, v87
	ds_load_u8 v84, v75 offset:18912
	ds_load_u8 v87, v75 offset:18848
	v_lshl_or_b32 v82, v92, 16, v82
	ds_load_u8 v92, v75 offset:18784
	ds_load_u8 v94, v75 offset:18720
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[80:81], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[82:83], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[82:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v75 offset:18528
	ds_load_u8 v83, v75 offset:18464
	ds_load_u8 v95, v75 offset:18656
	ds_load_u8 v96, v75 offset:18592
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v62 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v85, v67, 0xc0c0004
	v_perm_b32 v85, v88, v90, 0xc0c0004
	ds_load_u8 v90, v75 offset:19008
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v87, v84, 0xc0c0004
	ds_load_u8 v87, v75 offset:18944
	ds_load_u8 v91, v75 offset:18624
	v_perm_b32 v80, v89, v86, 0xc0c0004
	ds_load_u8 v86, v75 offset:19264
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v81, v67, 16, v80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v93, v91, 0xc0c0004
	ds_load_u8 v91, v75 offset:19136
	ds_load_u8 v93, v75 offset:19072
	v_lshl_or_b32 v80, v88, 16, v85
	v_perm_b32 v88, v94, v92, 0xc0c0004
	v_perm_b32 v92, v96, v95, 0xc0c0004
	ds_load_u8 v67, v75 offset:19392
	ds_load_u8 v85, v75 offset:19328
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[80:81], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v84, 16, v88
	ds_load_u8 v84, v75 offset:19424
	ds_load_u8 v88, v75 offset:19360
	v_lshl_or_b32 v82, v92, 16, v82
	ds_load_u8 v92, v75 offset:19296
	ds_load_u8 v94, v75 offset:19232
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[80:81], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[82:83], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[82:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v75 offset:19040
	ds_load_u8 v83, v75 offset:18976
	ds_load_u8 v95, v75 offset:19168
	ds_load_u8 v96, v75 offset:19104
	ds_load_u8 v97, v75 offset:19776
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v63 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v85, v67, 0xc0c0004
	v_perm_b32 v85, v87, v90, 0xc0c0004
	ds_load_u8 v87, v75 offset:19712
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v84, v88, v84, 0xc0c0004
	ds_load_u8 v88, v75 offset:19456
	ds_load_u8 v89, v75 offset:19200
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v89, v86, 0xc0c0004
	v_perm_b32 v86, v93, v91, 0xc0c0004
	v_perm_b32 v91, v96, v95, 0xc0c0004
	ds_load_u8 v89, v75 offset:19520
	v_lshl_or_b32 v81, v67, 16, v80
	v_lshl_or_b32 v80, v86, 16, v85
	v_perm_b32 v86, v94, v92, 0xc0c0004
	v_lshl_or_b32 v82, v91, 16, v82
	ds_load_u8 v67, v75 offset:19904
	ds_load_u8 v85, v75 offset:19840
	ds_load_u8 v92, v75 offset:19584
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[80:81], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v84, 16, v86
	ds_load_u8 v84, v75 offset:20288
	ds_load_u8 v86, v75 offset:20224
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[80:81], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v80, v75 offset:20416
	ds_load_u8 v81, v75 offset:20352
	ds_load_u8 v91, v75 offset:19744
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[82:83], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[82:83], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v76, v75 offset:20032
	ds_load_u8 v77, v75 offset:19936
	ds_load_u8 v78, v75 offset:19808
	ds_load_u8 v79, v75 offset:19968
	ds_load_u8 v82, v75 offset:20160
	ds_load_u8 v83, v75 offset:20096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v85, v67, 0xc0c0004
	ds_load_u8 v85, v75 offset:19872
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v86, v86, v84, 0xc0c0004
	ds_load_u8 v84, v75 offset:19552
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v75 offset:19488
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v93, v79, v76, 0xc0c0004
	ds_load_u8 v79, v75 offset:20320
	ds_load_u8 v90, v75 offset:19648
	v_perm_b32 v88, v88, v89, 0xc0c0004
	ds_load_u8 v76, v75 offset:20448
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v87, v87, v97, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v81, v81, v84, 0xc0c0004
	ds_load_u8 v84, v75 offset:20192
	ds_load_u8 v89, v75 offset:19680
	v_perm_b32 v83, v91, v78, 0xc0c0004
	ds_load_u8 v78, v75 offset:20256
	v_perm_b32 v91, v85, v77, 0xc0c0004
	ds_load_u8 v77, v75 offset:20384
	ds_load_u8 v85, v75 offset:20064
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v75 offset:19616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v77, v76, 0xc0c0004
	ds_load_u8 v76, v75 offset:20128
	v_perm_b32 v94, v78, v79, 0xc0c0004
	ds_load_u8 v78, v75 offset:20000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v92, v89, 0xc0c0004
	v_lshl_or_b32 v89, v91, 16, v83
	v_lshl_or_b32 v91, v95, 16, v94
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v76, v84, 0xc0c0004
	v_lshl_or_b32 v84, v90, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v78, v85, 0xc0c0004
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[76:79], v64 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v85, v67, 16, v87
	v_lshl_or_b32 v87, v80, 16, v86
	v_lshl_or_b32 v86, v82, 16, v93
	v_lshl_or_b32 v88, v92, 16, v81
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[80:83], v66 offset1:16
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v37, v9, 0x5010400
	v_perm_b32 v37, v37, v9, 0x7030602
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v90, v97, 16, v96
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	ds_store_b64 v43, v[41:42] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v42, 8, v37
	v_and_b16 v9.l, 0xff, v67.l
	v_lshrrev_b32_e32 v41, 24, v67
	v_and_b16 v9.h, 0xff, v67.h
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[84:85], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[78:79], v[84:85], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[88:89], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[88:89], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_perm_b32 v76, v38, v10, 0x5010400
	v_perm_b32 v38, v38, v10, 0x7030602
	v_perm_b32 v77, v39, v11, 0x5010400
	v_perm_b32 v39, v39, v11, 0x7030602
	v_perm_b32 v78, v40, v12, 0x5010400
	v_perm_b32 v79, v40, v12, 0x7030602
	v_lshrrev_b32_e32 v40, 8, v67
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[13:20], v[80:81], v[86:87], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[82:83], v[86:87], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[80:81], v[90:91], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[90:91], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b16 v10.l, 0xff, v37.l
	v_lshrrev_b32_e32 v67, 24, v37
	v_and_b16 v10.h, 0xff, v37.h
	v_and_b16 v11.l, 0xff, v76.l
	v_lshrrev_b32_e32 v80, 8, v76
	v_lshrrev_b32_e32 v81, 24, v76
	v_and_b16 v11.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v38
	v_lshrrev_b32_e32 v82, 24, v38
	v_and_b16 v12.h, 0xff, v38.h
	v_and_b16 v37.l, 0xff, v77.l
	v_lshrrev_b32_e32 v83, 8, v77
	v_lshrrev_b32_e32 v84, 24, v77
	v_and_b16 v37.h, 0xff, v77.h
	v_lshrrev_b32_e32 v77, 8, v39
	v_lshrrev_b32_e32 v85, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_lshlrev_b16 v39.h, 8, v40.l
	v_lshlrev_b16 v40.h, 8, v42.l
	v_and_b16 v12.l, 0xff, v38.l
	v_and_b16 v38.l, 0xff, v39.l
	v_and_b16 v39.l, 0xff, v78.l
	v_lshrrev_b32_e32 v86, 8, v78
	v_or_b16 v9.l, v9.l, v39.h
	v_lshrrev_b32_e32 v87, 24, v78
	v_and_b16 v39.h, 0xff, v78.h
	v_lshlrev_b16 v40.l, 8, v41.l
	v_or_b16 v10.l, v10.l, v40.h
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshlrev_b16 v40.h, 8, v67.l
	v_lshrrev_b32_e32 v88, 24, v79
	v_lshlrev_b16 v41.l, 8, v80.l
	v_or_b16 v9.h, v9.h, v40.l
	v_and_b16 v40.l, 0xff, v79.l
	v_or_b16 v10.h, v10.h, v40.h
	v_and_b16 v40.h, 0xff, v79.h
	v_lshlrev_b16 v41.h, 8, v81.l
	v_lshlrev_b16 v42.l, 8, v76.l
	v_lshlrev_b16 v42.h, 8, v82.l
	v_lshlrev_b16 v67.l, 8, v83.l
	v_lshlrev_b16 v67.h, 8, v84.l
	v_lshlrev_b16 v76.l, 8, v77.l
	v_lshlrev_b16 v76.h, 8, v85.l
	v_lshlrev_b16 v77.l, 8, v86.l
	v_lshlrev_b16 v77.h, 8, v87.l
	v_lshlrev_b16 v78.l, 8, v78.l
	v_lshlrev_b16 v78.h, 8, v88.l
	v_or_b16 v11.l, v11.l, v41.l
	v_or_b16 v11.h, v11.h, v41.h
	v_or_b16 v12.l, v12.l, v42.l
	v_or_b16 v12.h, v12.h, v42.h
	v_or_b16 v37.l, v37.l, v67.l
	v_or_b16 v37.h, v37.h, v67.h
	v_or_b16 v38.l, v38.l, v76.l
	v_or_b16 v38.h, v38.h, v76.h
	v_or_b16 v39.l, v39.l, v77.l
	v_or_b16 v39.h, v39.h, v77.h
	v_or_b16 v40.l, v40.l, v78.l
	v_or_b16 v40.h, v40.h, v78.h
	ds_store_b16 v47, v9
	ds_store_b16_d16_hi v47, v9 offset:64
	ds_store_b16 v48, v10
	ds_store_b16_d16_hi v48, v10 offset:64
	ds_store_b16 v49, v11
	ds_store_b16_d16_hi v49, v11 offset:64
	ds_store_b16 v50, v12
	ds_store_b16_d16_hi v50, v12 offset:64
	ds_store_b16 v51, v37
	ds_store_b16_d16_hi v51, v37 offset:64
	ds_store_b16 v52, v38
	ds_store_b16_d16_hi v52, v38 offset:64
	ds_store_b16 v53, v39
	ds_store_b16_d16_hi v53, v39 offset:64
	ds_store_b16 v54, v40
	ds_store_b16_d16_hi v54, v40 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v76, v44
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v5, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v12, v5
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v11, v5
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v36, v12
	v_mov_b32_e32 v4, v5
	v_dual_mov_b32 v2, v5 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v25, v5 :: v_dual_mov_b32 v34, v10
	v_mov_b32_e32 v24, v5
	v_dual_mov_b32 v23, v5 :: v_dual_mov_b32 v32, v8
	v_mov_b32_e32 v22, v5
	v_mov_b32_e32 v16, v5
	v_dual_mov_b32 v15, v5 :: v_dual_mov_b32 v30, v6
	v_mov_b32_e32 v14, v5
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v28, v5
	v_mov_b32_e32 v27, v5
	v_mov_b32_e32 v26, v5
	v_mov_b32_e32 v21, v5
	v_mov_b32_e32 v20, v5
	v_mov_b32_e32 v19, v5
	v_mov_b32_e32 v18, v5
	v_mov_b32_e32 v17, v5
	v_mov_b32_e32 v35, v11
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v29, v5
	v_mov_b32_e32 v1, v5
.LBB0_8:                                ; %._crit_edge
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_11
; %bb.9:                                ; %._crit_edge._crit_edge
.Ltmp16:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 2, v0
	s_cbranch_execz .LBB0_12
.Ltmp17:
; %bb.10:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v71, v9
	s_branch .LBB0_13
.LBB0_11:
                                        ; implicit-def: $vgpr9
.LBB0_12:
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	v_and_b32_e32 v9, 56, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v9, v9, v76
	v_or3_b32 v61, v45, v46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v9, v61, 56, 0
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
	ds_load_2addr_stride64_b64 v[9:12], v9 offset1:16
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[61:62], v[66:67], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[63:64], v[66:67], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[57:58], v[77:78], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[59:60], v[77:78], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[61:62], v[66:67], v[29:36] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[53:54], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[55:56], v[79:80], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[57:58], v[61:62], v[29:36] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[49:50], v[81:82], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[51:52], v[81:82], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[53:54], v[57:58], v[29:36] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[45:46], v[83:84], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[47:48], v[83:84], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[49:50], v[53:54], v[29:36] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[13:20], v[41:42], v[85:86], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[43:44], v[85:86], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[45:46], v[49:50], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v45, v75 offset:19296
	ds_load_u8 v46, v75 offset:19232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v89, 16, v87
	ds_load_u8 v89, v75 offset:20288
	ds_load_u8 v90, v75 offset:20224
	v_wmma_i32_16x16x16_iu4 v[13:20], v[37:38], v[87:88], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[39:40], v[87:88], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[41:42], v[45:46], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v41, v75 offset:19808
	ds_load_u8 v42, v75 offset:19744
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v92, 16, v89
	v_wmma_i32_16x16x16_iu4 v[13:20], v[9:10], v[89:90], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[11:12], v[89:90], v[21:28] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[37:38], v[41:42], v[29:36] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[29:36], v[9:10], v[37:38], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[37:38], v[1:8] neg_lo:[1,1,0]
.LBB0_13:
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v44, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v21, v5
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v5, s19, v74
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s9, s1, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s0
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v41, v13
	v_cvt_f32_i32_e32 v13, v4
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v8, v5, s[8:11], 0 offen
	v_or_b32_e32 v5, 64, v5
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v11, v0, 4, 1
	v_lshrrev_b32_e32 v12, 1, v73
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v42, v17
	v_cvt_f32_i32_e32 v17, v18
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v46, v27
	v_cvt_f32_i32_e32 v18, v30
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v40, v14
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v16, v36
	v_cvt_f32_i32_e32 v47, v28
	v_cvt_f32_i32_e32 v28, v23
	v_cvt_f32_i32_e32 v38, v24
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v23, v34
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s9, s3, 0xffff
	s_mov_b32 s8, s2
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v45, v26
	v_cvt_f32_i32_e32 v26, v22
	v_cvt_f32_i32_e32 v39, v25
	v_cvt_f32_i32_e32 v22, v29
	v_cvt_f32_i32_e32 v25, v33
	v_cvt_f32_i32_e32 v43, v20
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s17, 31
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v9, 4, v70
.Ltmp20:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s17, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, s1, v9
	s_mul_i32 s2, s19, s1
	s_lshl_b32 s1, s1, 5
.Ltmp21:
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v5
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v5, v11, v12, s20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v29, 16, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v11, 4, v5
	v_or_b32_e32 v12, 8, v5
	v_or_b32_e32 v31, 12, v5
	v_or_b32_e32 v32, 16, v5
	v_or_b32_e32 v34, 24, v5
	s_clause 0x5
	buffer_load_u16 v8, v5, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	v_or_b32_e32 v33, 20, v5
	v_or_b32_e32 v35, 28, v5
	v_or_b32_e32 v37, 0x104, v5
	v_or_b32_e32 v36, 0x100, v5
	s_clause 0x2
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v48, v37, s[8:11], 0 offen
	v_or_b32_e32 v37, 0x108, v5
	s_clause 0x1
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v49, v37, s[8:11], 0 offen
	v_or_b32_e32 v37, 0x10c, v5
	buffer_load_u16 v50, v37, s[8:11], 0 offen
	v_or_b32_e32 v37, 0x110, v5
	buffer_load_u16 v51, v37, s[8:11], 0 offen
	v_or_b32_e32 v37, 0x114, v5
	buffer_load_u16 v52, v37, s[8:11], 0 offen
	v_or_b32_e32 v37, 0x118, v5
	v_or_b32_e32 v5, 0x11c, v5
	s_clause 0x1
	buffer_load_u16 v53, v37, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
.Ltmp22:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s8, s4
.Ltmp24:
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v56, 16, v31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v34, 16, v34
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v55, 16, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v33, v30, v12
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v33, v33, v27
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v31, v30, v56
	v_mul_f32_e32 v59, v30, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v20, v59, v20
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v58, v30, v55
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v23, v58, v23 :: v_dual_lshlrev_b32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v57, v30, v32
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v27, v57, v25 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v30, v8 :: v_dual_lshlrev_b32 v54, 16, v35
	v_dual_mul_f32 v60, v30, v54 :: v_dual_lshlrev_b32 v11, 16, v11
	v_mul_f32_e32 v8, v29, v8
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_and_b32_e32 v10, 16, v0
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v12, v29, v12
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v37, v37, v22
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v35, v30, v11
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v29, v11 :: v_dual_lshlrev_b32 v22, 16, v53
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v12, v15 :: v_dual_lshlrev_b32 v15, 16, v5
	v_dual_mul_f32 v35, v35, v18 :: v_dual_mul_f32 v18, v29, v56
	v_mul_f32_e32 v31, v31, v24
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v25, 16, v36
	v_lshlrev_b32_e32 v24, 16, v52
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v8, v8, v41
	v_mul_f32_e32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, v60, v16 :: v_dual_mul_f32 v5, v25, v30
	v_dual_mul_f32 v11, v11, v40 :: v_dual_mul_f32 v36, v24, v30
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v40, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v41, v15, v30 :: v_dual_mul_f32 v18, v5, v1
	v_dual_mul_f32 v22, v29, v22 :: v_dual_mul_f32 v5, v36, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v4, v40, v6 :: v_dual_mul_f32 v1, v41, v7
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v7, v29, v55
	v_mul_f32_e32 v40, v29, v34
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v34, v22, v46
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v24, v29, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v29, v32 :: v_dual_mul_f32 v17, v7, v17
	v_mul_f32_e32 v15, v29, v15
	v_mul_f32_e32 v25, v29, v25
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v32, v24, v45 :: v_dual_mul_f32 v41, v29, v54
	v_mul_f32_e32 v19, v40, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v15, v47 :: v_dual_mul_f32 v15, v6, v42
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v7, 16, v51
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v22, v41, v43
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v40, 16, v50
	v_lshlrev_b32_e32 v41, 16, v49
	v_lshlrev_b32_e32 v42, 16, v48
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v25, v25, v44 :: v_dual_lshlrev_b32 v10, 7, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v44, v30, v40
	v_mul_f32_e32 v43, v30, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v24, v30, v42
	v_mul_f32_e32 v6, v30, v7
	v_dual_mul_f32 v40, v29, v40 :: v_dual_mul_f32 v13, v44, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v24, v24, v2
	v_dual_mul_f32 v6, v6, v21 :: v_dual_mul_f32 v21, v43, v3
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v2, v29, v42
	v_mul_f32_e32 v3, v29, v41
	v_mul_f32_e32 v7, v29, v7
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v29, v40, v38
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v40, |v6|, |v5|, |v4|
.Ltmp26:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v26, v2, v26
	v_mul_f32_e32 v28, v3, v28
	v_mul_f32_e32 v30, v7, v39
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v8|, |v11|
	v_max3_f32 v3, |v14|, |v15|, |v17|
	v_max3_f32 v7, |v19|, |v22|, |v25|
	v_max3_f32 v38, |v26|, |v28|, |v29|
	v_max3_f32 v39, |v30|, |v32|, |v34|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v41, v72, 8, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, |v12|, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v3, v38, v39, |v36|
	v_max3_f32 v39, |v24|, |v21|, |v13|
	v_max3_f32 v38, |v20|, |v16|, |v18|
	v_max3_f32 v2, v2, v7, v3
	v_max_f32_e64 v3, |v37|, |v35|
	v_max3_f32 v7, |v31|, |v27|, |v23|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v3, v3, |v33|, v7
	v_max3_f32 v7, v39, v40, |v1|
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v39, 8, v0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, v3, v38, v7
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v7, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v38, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_and_b32 v38, 0xf0, v38
	v_max_f32_e32 v2, v2, v7
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v7, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v3, v3, v7
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v7, 4, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v40, v7, v38
	v_add3_u32 v40, v41, v40, v39
	ds_store_b64 v40, v[2:3]
	v_lshl_or_b32 v2, v73, 3, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v38
	v_add3_u32 v2, 0, v39, v2
	ds_load_b64 v[2:3], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v7, v2
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v38, v39, 3, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v7
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v7
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v7 :: v_dual_mov_b32 v7, v3
	v_max_f32_e32 v3, v3, v3
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v7, v3
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v7, v3
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v3, v3, v7
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v7, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v38, v7, v76
	ds_store_b64 v38, v[2:3]
	v_lshlrev_b32_e32 v2, 3, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v3, 0, v2, v7
	ds_load_b64 v[38:39], v3
.Ltmp51:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v3, v38, v38
	v_max_f32_e32 v7, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_max_f32_e32 v7, 0x2b8cbccc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v3
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v3, v38, 0x40e00000, v3
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v7, 0x40e00000, v7
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v39.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v38, 0x40e00000, v7
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.h, 0
	v_mov_b16_e32 v38.l, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v39.h, v38.h
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v7, v7, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v3, v39, 0x7fff
	v_mov_b16_e32 v3.h, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v39
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v3.l, v39.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v39, null, v38, v38, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v8, v38, v8
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v8, v39, v38, v8
	v_div_scale_f32 v39, null, v38, v38, v11
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v11, v38, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v11, v39, v38, v11
	v_div_scale_f32 v39, null, v38, v38, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v12, v38, v12
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v12, v39, v38, v12
	v_div_scale_f32 v39, null, v38, v38, v14
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v14, v38, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v14, v39, v38, v14
	v_div_scale_f32 v39, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v15, v38, v15
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v15, v39, v38, v15
	v_div_scale_f32 v39, null, v38, v38, v17
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v17, v39, v38, v17
	v_div_scale_f32 v39, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v40, v41, v40 :: v_dual_and_b32 v7, 0xffff0000, v7
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
	v_div_scale_f32 v39, null, v38, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v25, v38, v25
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_scale_f32 v39, null, v38, v38, v26
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v26, v38, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v26, v39, v38, v26
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
	v_div_scale_f32 v39, null, v38, v38, v29
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v29, v39, v38, v29
	v_div_scale_f32 v39, null, v38, v38, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v30, v38, v30
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v39, v38, v30
	v_div_scale_f32 v39, null, v38, v38, v32
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v32, v39, v38, v32
	v_div_scale_f32 v39, null, v38, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v34, v38, v34
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v34, v39, v38, v34
	v_div_scale_f32 v39, null, v38, v38, v36
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v36, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v36, v39, v38, v36
	v_div_scale_f32 v38, null, v7, v7, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v37, v7, v37
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v38, v7, v37
	v_div_scale_f32 v38, null, v7, v7, v35
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v35, v7, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v35, v38, v7, v35
	v_div_scale_f32 v38, null, v7, v7, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v33, v7, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v33, v38, v7, v33
	v_div_scale_f32 v38, null, v7, v7, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v31, v7, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v31, v38, v7, v31
	v_div_scale_f32 v38, null, v7, v7, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v27, v7, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v27, v38, v7, v27
	v_div_scale_f32 v38, null, v7, v7, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v23, v7, v23
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v38, v7, v23
	v_div_scale_f32 v38, null, v7, v7, v20
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v20, v7, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v20, v38, v7, v20
	v_div_scale_f32 v38, null, v7, v7, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v16, v7, v16
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v38, v7, v16
	v_div_scale_f32 v38, null, v7, v7, v18
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
	v_div_scale_f32 v40, vcc_lo, v18, v7, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v18, v38, v7, v18
	v_div_scale_f32 v38, null, v7, v7, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v24, v7, v24
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v38, v7, v24
	v_div_scale_f32 v38, null, v7, v7, v21
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v21, v7, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v21, v38, v7, v21
	v_div_scale_f32 v38, null, v7, v7, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v13, v7, v13
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v38, v7, v13
	v_div_scale_f32 v38, null, v7, v7, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v43, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v6, v7, v6
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v38, v7, v6
	v_div_scale_f32 v38, null, v7, v7, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v44, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v7, v5
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v38, v7, v5
	v_div_scale_f32 v38, null, v7, v7, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v45, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v4, v7, v4
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v38, v7, v4
	v_div_scale_f32 v38, null, v7, v7, v1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v46, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v1, v7, v1
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v38, v41, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v39, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v39, v16
	v_cvt_i32_f32_e32 v41, v24
	v_and_b32_e32 v24, 15, v35
	v_and_b32_e32 v35, 15, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v1, v38, v7, v1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v8
	v_rndne_f32_e32 v8, v11
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v17
	v_rndne_f32_e32 v17, v19
	v_rndne_f32_e32 v19, v22
	v_rndne_f32_e32 v22, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v1, v1
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v38, v20
	v_cvt_i32_f32_e32 v1, v1
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v6, 15, v11
	v_and_b32_e32 v11, 15, v14
	v_and_b32_e32 v14, 15, v19
	v_and_b32_e32 v19, 15, v29
	v_and_b32_e32 v29, 15, v38
	v_and_b32_e32 v38, 15, v1
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v5, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x3000, v1
	v_and_b32_e32 v8, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v20, 15, v30
	v_and_b32_e32 v30, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0x200, v71
	v_xor_b32_e32 v8, v65, v8
	v_add3_u32 v1, 0, v1, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_and_b32_e32 v4, 15, v7
	v_and_b32_e32 v7, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v1, v39, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 15, v15
	v_and_b32_e32 v13, 15, v17
	v_and_b32_e32 v15, 15, v22
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v17, 15, v26
	v_and_b32_e32 v18, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[4:7]
	ds_store_b128 v1, v[15:18] offset:1024
	v_lshlrev_b32_e32 v5, 5, v0
	v_lshlrev_b32_e32 v4, 7, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v34, v36
	v_rndne_f32_e32 v36, v37
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 0x60, v5
	s_waitcnt lgkmcnt(0)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, 0x3600, v4, v5
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v4, v70, 0
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[15:18], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v37, v23
	v_and_b32_e32 v23, 15, v36
	v_and_b32_e32 v25, 15, v33
	v_and_b32_e32 v26, 15, v31
	v_and_b32_e32 v21, 15, v32
	v_and_b32_e32 v22, 15, v34
	v_and_b32_e32 v31, 15, v40
	v_and_b32_e32 v32, 15, v41
	v_and_b32_e32 v33, 15, v42
	v_and_b32_e32 v34, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[23:26]
	ds_store_b128 v1, v[31:34] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v8
	ds_load_b128 v[31:34], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[11:14]
	ds_store_b128 v1, v[19:22] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[19:22], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v37
	v_and_b32_e32 v36, 15, v45
	v_and_b32_e32 v37, 15, v46
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[27:30]
	ds_store_b128 v1, v[35:38] offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v17, 4, v6
	v_lshl_or_b32 v1, v18, 4, v7
	v_lshl_or_b32 v4, v15, 4, v4
	v_lshl_or_b32 v5, v16, 4, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v6.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[35:38], v8 offset:2048
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s18, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v19, 4, v10
	v_lshl_or_b32 v8, v20, 4, v11
	v_lshl_or_b32 v10, v21, 4, v12
	v_lshl_or_b32 v11, v22, 4, v13
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s0, v2
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v31, 4, v23
	v_lshl_or_b32 v13, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v11.l
	v_and_b16 v1.h, 0xff, v10.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v2, v9
	v_add3_u32 v2, v9, s1, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s17, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v18, v37, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v1.h, 0xff, v14.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s17, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v20, s[8:11], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v1.h, 0xff, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v1.h, 0xff, v18.l
	v_or_b16 v5.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v1.h, 0xff, v16.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v5.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v2, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v68
	v_lshrrev_b32_e32 v4, 2, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s7, 0xffff
	v_add3_u32 v2, 0, v2, v4
	s_mov_b32 s8, s6
	ds_store_b32 v2, v3
.Ltmp52:
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp53:
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
.Ltmp54:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 98
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 98
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14608
; TotalNumSgprs: 28
; NumVgprs: 98
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 98
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     98
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
