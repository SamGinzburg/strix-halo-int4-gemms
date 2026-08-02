	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v39, 0x1f0, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v43, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v42, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v39
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
	s_ashr_i32 s5, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s9, 0, s4
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s8, s6
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s4, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s14, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s13, 0, s14
	s_abs_i32 s15, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b32 s4, s[0:1], 0x38
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s12, s12
	s_mul_i32 s13, s13, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s12, s13
	s_add_i32 s5, s12, s5
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	s_mul_hi_u32 s5, s15, s5
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s5, s14
	s_ashr_i32 s22, s10, 31
	s_sub_i32 s10, s15, s11
	s_add_i32 s15, s5, 1
	s_sub_i32 s16, s10, s14
	s_cmp_ge_u32 s10, s14
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s5, s15, s5
	s_cselect_b32 s10, s16, s10
	s_add_i32 s15, s5, 1
	s_cmp_ge_u32 s10, s14
	s_cselect_b32 s5, s15, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s10, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s23, s5, s22
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s16, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s4, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s23, s22
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s24, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s3, s18, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s20, s18, 8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s3
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s5, s17, s16
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s19, s2, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s4, 2
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s19, s24
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s21, -1, 0
	s_cmp_gt_i32 s4, 1
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s14, s10
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v38, 15, v0
	v_and_b32_e32 v41, 7, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v37, 4, v38
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s4, 0x81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[4:5], null, s17, v3, v[37:38]
	v_add3_u32 v4, s20, s5, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[5:6], null, s24, v2, v[1:2]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v6, s17, v4
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_xor_b32_e32 v10, v1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v6, vcc_lo
	.loc	1 154 30 is_stmt 1              ; generate_amdgcn.py:154:30
	v_add3_u32 v5, s16, s2, v5
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshl_or_b32 v12, v38, 10, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v8, 0x80000000, v5, vcc_lo
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v9, s[12:15], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v9, 56, v43
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v17, 0x110, v12
	v_xor_b32_e32 v18, 0x198, v12
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[24:25], v8, s[8:11], 0 offen
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v19, 0x220, v12
	v_add_nc_u32_e32 v11, 0, v12
	v_xor_b32_e32 v20, 0x2a8, v12
	v_xor_b32_e32 v21, 0x330, v12
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v8, v8, v9
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v22, 0x3b8, v12
	v_add_nc_u32_e32 v47, 0, v17
	v_add_nc_u32_e32 v48, 0, v18
	v_add_nc_u32_e32 v49, 0, v19
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v10, 0, v8
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v8, 0x88, v12
	v_add_nc_u32_e32 v50, 0, v20
	v_add_nc_u32_e32 v51, 0, v21
	v_add_nc_u32_e32 v52, 0, v22
	v_lshrrev_b32_e32 v9, 2, v42
	v_add_nc_u32_e32 v12, 0, v8
	s_mov_b32 s14, 0
	s_waitcnt vmcnt(1)
	v_perm_b32 v8, v13, v4, 0x5010400
	v_perm_b32 v13, v13, v4, 0x7030602
	v_perm_b32 v17, v14, v5, 0x5010400
	v_perm_b32 v14, v14, v5, 0x7030602
	v_perm_b32 v18, v15, v6, 0x5010400
	v_perm_b32 v15, v15, v6, 0x7030602
	v_perm_b32 v19, v16, v7, 0x5010400
	v_perm_b32 v16, v16, v7, 0x7030602
	v_lshrrev_b32_e32 v20, 8, v8
	v_lshrrev_b32_e32 v21, 24, v8
	v_lshrrev_b32_e32 v22, 8, v13
	v_lshrrev_b32_e32 v23, 24, v13
	v_lshrrev_b32_e32 v26, 8, v17
	v_lshrrev_b32_e32 v27, 24, v17
	v_lshrrev_b32_e32 v28, 8, v14
	v_lshrrev_b32_e32 v29, 24, v14
	v_lshrrev_b32_e32 v30, 8, v18
	v_lshrrev_b32_e32 v31, 24, v18
	v_lshrrev_b32_e32 v32, 8, v15
	v_lshrrev_b32_e32 v33, 24, v15
	v_lshrrev_b32_e32 v34, 8, v19
	v_lshrrev_b32_e32 v35, 24, v19
	v_lshrrev_b32_e32 v36, 8, v16
	v_lshrrev_b32_e32 v40, 24, v16
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v13.l
	v_and_b16 v13.l, 0xff, v15.l
	v_and_b16 v15.l, 0xff, v16.l
	v_lshlrev_b16 v16.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v13.h
	v_and_b16 v13.h, 0xff, v15.h
	v_and_b16 v15.h, 0xff, v16.h
	v_lshlrev_b16 v16.h, 8, v21.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v22.l
	v_and_b16 v6.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v23.l
	v_and_b16 v7.l, 0xff, v14.l
	v_and_b16 v7.h, 0xff, v14.h
	v_and_b16 v8.l, 0xff, v18.l
	v_and_b16 v8.h, 0xff, v18.h
	v_and_b16 v14.l, 0xff, v19.l
	v_and_b16 v14.h, 0xff, v19.h
	v_lshlrev_b16 v18.l, 8, v26.l
	v_lshlrev_b16 v18.h, 8, v27.l
	v_lshlrev_b16 v19.l, 8, v28.l
	v_lshlrev_b16 v19.h, 8, v29.l
	v_lshlrev_b16 v20.l, 8, v30.l
	v_lshlrev_b16 v20.h, 8, v31.l
	v_lshlrev_b16 v21.l, 8, v32.l
	v_lshlrev_b16 v21.h, 8, v33.l
	v_lshlrev_b16 v22.l, 8, v34.l
	v_lshlrev_b16 v22.h, 8, v35.l
	v_lshlrev_b16 v23.l, 8, v36.l
	v_lshlrev_b16 v23.h, 8, v40.l
	v_or_b16 v4.l, v4.l, v16.l
	v_or_b16 v4.h, v4.h, v16.h
	v_or_b16 v5.l, v5.l, v17.l
	v_or_b16 v5.h, v5.h, v17.h
	v_or_b16 v6.l, v6.l, v18.l
	v_or_b16 v6.h, v6.h, v18.h
	v_or_b16 v7.l, v7.l, v19.l
	v_or_b16 v7.h, v7.h, v19.h
	v_or_b16 v8.l, v8.l, v20.l
	v_or_b16 v8.h, v8.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v10, v[24:25] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_store_b16 v11, v4
	ds_store_b16_d16_hi v11, v4 offset:64
	ds_store_b16 v12, v5
	ds_store_b16_d16_hi v12, v5 offset:64
	ds_store_b16 v47, v6
	ds_store_b16_d16_hi v47, v6 offset:64
	ds_store_b16 v48, v7
	ds_store_b16_d16_hi v48, v7 offset:64
	ds_store_b16 v49, v8
	ds_store_b16_d16_hi v49, v8 offset:64
	ds_store_b16 v50, v13
	ds_store_b16_d16_hi v50, v13 offset:64
	ds_store_b16 v51, v14
	ds_store_b16_d16_hi v51, v14 offset:64
	ds_store_b16 v52, v15
	ds_store_b16_d16_hi v52, v15 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshrrev_b32_e32 v44, 2, v42
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow196
	s_load_b256 s[0:7], s[0:1], 0x10
	v_lshlrev_b32_e32 v45, 6, v38
	v_lshlrev_b32_e32 v40, 2, v0
	v_lshlrev_b32_e32 v46, 5, v42
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s24, 63
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s14, s14, 6
.Ltmp13:
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_lshl_b32 s15, s23, 8
	v_sub_nc_u32_e64 v13, s14, 2 clamp
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_readfirstlane_b32 s14, v13
	v_mov_b32_e32 v13, 0
	v_and_b32_e32 v5, 56, v4
	v_and_or_b32 v4, 0x438, v4, v45
	v_add_nc_u32_e32 v3, s16, v3
	v_dual_mov_b32 v35, v13 :: v_dual_add_nc_u32 v2, s19, v2
	v_mov_b32_e32 v36, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v14, 24, v4
	v_xor_b32_e32 v16, 40, v4
	v_xor_b32_e32 v15, 32, v4
	v_xor_b32_e32 v18, 56, v4
	v_xor_b32_e32 v17, 48, v4
	v_add_nc_u32_e32 v58, 0, v14
	v_mov_b32_e32 v14, v13
	v_add_nc_u32_e32 v6, 0x41, v3
	v_add_nc_u32_e32 v3, 64, v3
	v_add_nc_u32_e32 v60, 0, v16
	v_mov_b32_e32 v16, v13
	v_xor_b32_e32 v5, v5, v9
	v_add_nc_u32_e32 v59, 0, v15
	v_dual_mov_b32 v15, v13 :: v_dual_add_nc_u32 v62, 0, v18
	v_mul_lo_u32 v6, s17, v6
	v_mov_b32_e32 v18, v13
	v_mul_lo_u32 v24, s17, v3
	v_or3_b32 v5, v5, v46, v45
	v_dual_mov_b32 v26, v13 :: v_dual_add_nc_u32 v61, 0, v17
	v_mov_b32_e32 v17, v13
	v_mad_u64_u32 v[2:3], null, s24, v2, s[16:17]
	v_xor_b32_e32 v7, 8, v4
	v_xor_b32_e32 v8, 16, v4
	v_xor_b32_e32 v19, 8, v5
	v_xor_b32_e32 v20, 16, v5
	v_xor_b32_e32 v21, 24, v5
	v_xor_b32_e32 v22, 32, v5
	v_xor_b32_e32 v23, 40, v5
	v_xor_b32_e32 v25, 48, v5
	v_add3_u32 v3, v6, s15, v37
	v_add3_u32 v6, v24, s15, v37
	v_xor_b32_e32 v24, 56, v5
	s_lshl_b32 s15, s22, 8
	v_add3_u32 v54, v2, v1, 64
	v_subrev_nc_u32_e32 v44, s15, v3
	v_subrev_nc_u32_e32 v53, s15, v6
	v_add_nc_u32_e32 v55, 0, v4
	v_add_nc_u32_e32 v56, 0, v7
	v_add_nc_u32_e32 v57, 0, v8
	v_dual_mov_b32 v28, v13 :: v_dual_add_nc_u32 v63, 0, v5
	v_dual_mov_b32 v27, v13 :: v_dual_add_nc_u32 v64, 0, v19
	v_dual_mov_b32 v30, v13 :: v_dual_add_nc_u32 v65, 0, v20
	v_dual_mov_b32 v29, v13 :: v_dual_add_nc_u32 v66, 0, v21
	v_dual_mov_b32 v32, v13 :: v_dual_add_nc_u32 v67, 0, v22
	v_dual_mov_b32 v31, v13 :: v_dual_add_nc_u32 v68, 0, v23
	v_dual_mov_b32 v34, v13 :: v_dual_add_nc_u32 v69, 0, v25
	v_dual_mov_b32 v33, v13 :: v_dual_add_nc_u32 v70, 0, v24
	v_mov_b32_e32 v19, v13
	v_mov_b32_e32 v20, v13
	v_mov_b32_e32 v21, v13
	v_mov_b32_e32 v22, v13
	v_mov_b32_e32 v23, v13
	v_mov_b32_e32 v24, v13
	v_mov_b32_e32 v25, v13
	v_mov_b32_e32 v1, v13
	v_mov_b32_e32 v2, v13
	v_mov_b32_e32 v3, v13
	v_mov_b32_e32 v4, v13
	v_mov_b32_e32 v5, v13
	v_mov_b32_e32 v6, v13
	v_mov_b32_e32 v7, v13
	v_mov_b32_e32 v8, v13
	s_add_i32 s16, s14, 1
	s_lshl_b32 s22, s17, 6
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[87:88], v54, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[71:74], v53, s[12:15], 0 offen
	buffer_load_b128 v[75:78], v44, s[12:15], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v55 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v63 offset1:16
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v44, s22, v44
	v_add_nc_u32_e32 v53, s22, v53
	v_add_nc_u32_e32 v54, 64, v54
	s_add_i32 s16, s16, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s16, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v56 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v64 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v57 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v65 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v58 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v66 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v59 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v67 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v60 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v68 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v61 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v69 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v62 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[83:86], v70 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[13:20], v[83:84], v[79:80], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[79:80], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[83:84], v[81:82], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v10, v[87:88] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v79, v75, v71, 0x5010400
	v_perm_b32 v75, v75, v71, 0x7030602
	v_perm_b32 v80, v76, v72, 0x5010400
	v_perm_b32 v76, v76, v72, 0x7030602
	v_perm_b32 v82, v78, v74, 0x5010400
	v_perm_b32 v83, v78, v74, 0x7030602
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshrrev_b32_e32 v85, 24, v75
	v_perm_b32 v81, v77, v73, 0x5010400
	v_perm_b32 v77, v77, v73, 0x7030602
	v_and_b16 v71.l, 0xff, v79.l
	v_lshrrev_b32_e32 v84, 24, v79
	v_and_b16 v71.h, 0xff, v79.h
	v_lshrrev_b32_e32 v79, 8, v75
	v_and_b16 v72.h, 0xff, v75.h
	v_and_b16 v73.l, 0xff, v80.l
	v_lshrrev_b32_e32 v86, 8, v80
	v_lshrrev_b32_e32 v87, 24, v80
	v_and_b16 v73.h, 0xff, v80.h
	v_lshrrev_b32_e32 v80, 8, v76
	v_lshrrev_b32_e32 v88, 24, v76
	v_and_b16 v74.h, 0xff, v76.h
	v_lshlrev_b16 v75.h, 8, v78.l
	v_lshlrev_b16 v76.h, 8, v85.l
	v_and_b16 v72.l, 0xff, v75.l
	v_and_b16 v74.l, 0xff, v76.l
	v_and_b16 v75.l, 0xff, v81.l
	v_or_b16 v71.l, v71.l, v75.h
	v_lshlrev_b16 v75.h, 8, v84.l
	v_or_b16 v72.h, v72.h, v76.h
	v_lshlrev_b16 v76.h, 8, v86.l
	v_lshrrev_b32_e32 v78, 8, v81
	v_lshrrev_b32_e32 v84, 24, v81
	v_or_b16 v71.h, v71.h, v75.h
	v_and_b16 v75.h, 0xff, v81.h
	v_lshlrev_b16 v76.l, 8, v79.l
	v_lshrrev_b32_e32 v79, 8, v77
	v_or_b16 v73.l, v73.l, v76.h
	v_lshrrev_b32_e32 v81, 24, v77
	v_and_b16 v76.h, 0xff, v77.h
	v_lshlrev_b16 v77.h, 8, v80.l
	v_or_b16 v72.l, v72.l, v76.l
	v_and_b16 v76.l, 0xff, v77.l
	v_lshlrev_b16 v77.l, 8, v87.l
	v_lshlrev_b16 v78.h, 8, v84.l
	v_or_b16 v74.l, v74.l, v77.h
	v_lshlrev_b16 v77.h, 8, v88.l
	v_lshrrev_b32_e32 v80, 8, v82
	v_or_b16 v73.h, v73.h, v77.l
	v_and_b16 v77.l, 0xff, v82.l
	v_lshrrev_b32_e32 v85, 24, v82
	v_or_b16 v74.h, v74.h, v77.h
	v_and_b16 v77.h, 0xff, v82.h
	v_lshlrev_b16 v78.l, 8, v78.l
	v_or_b16 v75.h, v75.h, v78.h
	v_lshrrev_b32_e32 v82, 8, v83
	v_lshlrev_b16 v78.h, 8, v79.l
	v_lshrrev_b32_e32 v84, 24, v83
	v_or_b16 v75.l, v75.l, v78.l
	v_and_b16 v78.l, 0xff, v83.l
	v_lshlrev_b16 v79.l, 8, v81.l
	v_or_b16 v76.l, v76.l, v78.h
	v_and_b16 v78.h, 0xff, v83.h
	v_lshlrev_b16 v79.h, 8, v80.l
	v_lshlrev_b16 v80.l, 8, v85.l
	v_lshlrev_b16 v80.h, 8, v82.l
	v_lshlrev_b16 v81.l, 8, v84.l
	v_or_b16 v76.h, v76.h, v79.l
	v_or_b16 v77.l, v77.l, v79.h
	v_or_b16 v77.h, v77.h, v80.l
	v_or_b16 v78.l, v78.l, v80.h
	v_or_b16 v78.h, v78.h, v81.l
	ds_store_b16 v11, v71
	ds_store_b16_d16_hi v11, v71 offset:64
	ds_store_b16 v12, v72
	ds_store_b16_d16_hi v12, v72 offset:64
	ds_store_b16 v47, v73
	ds_store_b16_d16_hi v47, v73 offset:64
	ds_store_b16 v48, v74
	ds_store_b16_d16_hi v48, v74 offset:64
	ds_store_b16 v49, v75
	ds_store_b16_d16_hi v49, v75 offset:64
	ds_store_b16 v50, v76
	ds_store_b16_d16_hi v50, v76 offset:64
	ds_store_b16 v51, v77
	ds_store_b16_d16_hi v51, v77 offset:64
	ds_store_b16 v52, v78
	ds_store_b16_d16_hi v52, v78 offset:64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v44, v9
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
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_11
; %bb.9:                                ; %._crit_edge._crit_edge
.Ltmp14:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 2, v0
	s_cbranch_execz .LBB0_12
.Ltmp15:
; %bb.10:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v40, v9
	s_branch .LBB0_13
.LBB0_11:
                                        ; implicit-def: $vgpr9
.LBB0_12:
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	v_and_b32_e32 v9, 56, v40
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v49, 0x438, v40, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xor_b32_e32 v9, v9, v44
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v50, v49, 8, 0
	v_xad_u32 v57, v49, 56, 0
	v_xad_u32 v90, v49, 48, 0
	v_xad_u32 v65, v49, 40, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or3_b32 v89, v9, v46, v45
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v9, 0, v49
	v_xad_u32 v77, v49, 32, 0
	v_xad_u32 v61, v49, 16, 0
	v_xad_u32 v73, v49, 24, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v45, 0, v89
	v_xad_u32 v53, v89, 8, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[49:52], v50 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v69, v89, 16, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[9:12], v9 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[45:48], v45 offset1:16
	ds_load_2addr_stride64_b64 v[53:56], v53 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[57:60], v57 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v61 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v65 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v81, v89, 24, 0
	ds_load_2addr_stride64_b64 v[69:72], v69 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v73 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v85, v89, 32, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[77:80], v77 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_xad_u32 v91, v89, 40, 0
	ds_load_2addr_stride64_b64 v[81:84], v81 offset1:16
	v_xad_u32 v92, v89, 48, 0
	ds_load_2addr_stride64_b64 v[85:88], v85 offset1:16
	v_xad_u32 v93, v89, 56, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[47:48], v[9:10], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[45:46], v[9:10], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[45:46], v[11:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[45:48], v91 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[55:56], v[49:50], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[53:54], v[49:50], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[53:54], v[51:52], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[9:12], v90 offset0:32 offset1:36
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[89:92], v92 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[71:72], v[61:62], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[69:70], v[61:62], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[69:70], v[63:64], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[63:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	ds_load_2addr_stride64_b64 v[49:52], v93 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[83:84], v[73:74], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[81:82], v[73:74], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[81:82], v[75:76], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[87:88], v[77:78], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[85:86], v[77:78], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[85:86], v[79:80], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[47:48], v[65:66], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[45:46], v[65:66], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[45:46], v[67:68], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[91:92], v[9:10], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[89:90], v[9:10], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[89:90], v[11:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[51:52], v[57:58], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[49:50], v[57:58], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[29:36], v[49:50], v[59:60], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[59:60], v[1:8] neg_lo:[1,1,0]
.LBB0_13:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v50, v14
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v18, v29
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v9, 0x100, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v12, v5
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s9, s1, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v48, 4, v9
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s8, s0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v51, v20
	v_cvt_f32_i32_e32 v20, v4
	v_cvt_f32_i32_e32 v4, v6
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or3_b32 v5, v48, v38, s19
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v45, v0, 4, 1
	v_lshrrev_b32_e32 v46, 1, v42
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v22
	v_cvt_f32_i32_e32 v22, v30
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v54, v28
	v_cvt_f32_i32_e32 v28, v24
	v_cvt_f32_i32_e32 v24, v33
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v6, v5, s[8:11], 0 offen
	v_or_b32_e32 v5, 64, v5
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v29, v34
	v_cvt_f32_i32_e32 v34, v8
	v_cvt_f32_i32_e32 v52, v26
	v_cvt_f32_i32_e32 v53, v27
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s9, s3, 0xffff
	s_mov_b32 s8, s2
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v26, v23
	v_cvt_f32_i32_e32 v23, v32
	v_cvt_f32_i32_e32 v27, v35
	v_cvt_f32_i32_e32 v32, v7
	v_cvt_f32_i32_e32 v49, v13
	v_cvt_f32_i32_e32 v13, v15
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v19, v36
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v25, v25
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s17, 31
.Ltmp17:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v10, 4, v39
.Ltmp18:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s17, s1
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v43, 0xf0, v43
.Ltmp20:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v10, s1, v10
	s_mul_i32 s2, s19, s1
	s_lshl_b32 s1, s1, 5
.Ltmp21:
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v5
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v5, v45, v46, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v8, 4, v5
	v_or_b32_e32 v31, 8, v5
	v_or_b32_e32 v33, 12, v5
	buffer_load_u16 v7, v5, s[8:11], 0 offen
	v_or_b32_e32 v35, 16, v5
	s_clause 0x2
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	v_or_b32_e32 v36, 20, v5
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	v_or_b32_e32 v45, 24, v5
	v_or_b32_e32 v55, 0x100, v5
	v_or_b32_e32 v57, 0x108, v5
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	v_or_b32_e32 v59, 0x110, v5
	v_or_b32_e32 v61, 0x118, v5
	s_clause 0x4
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v55, v55, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	v_or_b32_e32 v46, 28, v5
	v_or_b32_e32 v56, 0x104, v5
	v_or_b32_e32 v58, 0x10c, v5
	v_or_b32_e32 v60, 0x114, v5
	s_clause 0x3
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	buffer_load_u16 v58, v58, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	v_or_b32_e32 v5, 0x11c, v5
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
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v66, 16, v33
	v_lshlrev_b32_e32 v62, 16, v31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v65, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v35, v48, v62 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v35, v35, v30
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v31, v48, v65 :: v_dual_lshlrev_b32 v36, 16, v36
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v33, v48, v66 :: v_dual_lshlrev_b32 v64, 16, v45
	v_mul_f32_e32 v45, v48, v8
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v67, v48, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v33, v33, v23 :: v_dual_mul_f32 v8, v6, v8
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v61
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v68, v48, v64 :: v_dual_lshlrev_b32 v63, 16, v46
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v29, v67, v29 :: v_dual_mul_f32 v8, v8, v50
	v_dual_mul_f32 v31, v31, v24 :: v_dual_lshlrev_b32 v30, 16, v55
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v50, v23, v48 :: v_dual_mul_f32 v45, v45, v22
	v_dual_mul_f32 v22, v6, v62 :: v_dual_and_b32 v11, 16, v0
	v_mul_f32_e32 v46, v48, v7
	v_mul_f32_e32 v69, v48, v63
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v68, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v13, v22, v13
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v5
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v46, v46, v18
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v18, v6, v66
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v24, 16, v60
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v60, v6, v63
	v_mul_f32_e32 v23, v6, v23
	v_mul_f32_e32 v5, v30, v48
	v_mul_f32_e32 v7, v6, v7
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v19, v69, v19 :: v_dual_mul_f32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v55, v22, v48 :: v_dual_mul_f32 v18, v5, v1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v7, v7, v49
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v49, v24, v48 :: v_dual_mul_f32 v30, v6, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v1, v55, v34 :: v_dual_mul_f32 v24, v6, v24
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v55, v6, v64
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v5, v49, v4 :: v_dual_mul_f32 v22, v6, v22
	v_mul_f32_e32 v4, v50, v32
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v50, v6, v36
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v32, v24, v52 :: v_dual_lshlrev_b32 v11, 7, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v22, v54
	v_mul_f32_e32 v16, v50, v16
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v50, 16, v57
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v22, v48, v50
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v34, v23, v53
	v_mul_f32_e32 v23, v30, v21
	v_mul_f32_e32 v21, v60, v51
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v51, 16, v56
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v49, v6, v65 :: v_dual_lshlrev_b32 v30, 16, v59
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v22, v22, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v24, v48, v51
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v15, v49, v15
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v49, 16, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v24, v24, v2
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v52, v48, v49
	v_dual_mul_f32 v48, v48, v30 :: v_dual_mul_f32 v17, v55, v17
	v_mul_f32_e32 v2, v6, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v20, v52, v20
	v_mul_f32_e32 v12, v48, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v48, v6, v49
	v_mul_f32_e32 v3, v6, v50
	v_mul_f32_e32 v6, v6, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v49, |v12|, |v5|, |v4|
.Ltmp26:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v28, v48, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v26, v3, v26
	v_mul_f32_e32 v30, v6, v25
	v_mul_f32_e32 v25, v2, v47
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v7|, |v8|
	v_max3_f32 v3, |v14|, |v15|, |v16|
	v_max3_f32 v6, |v17|, |v21|, |v23|
	v_max3_f32 v48, |v30|, |v32|, |v34|
	v_max3_f32 v47, |v25|, |v26|, |v28|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v2, |v13|, v3
	v_max3_f32 v3, v47, v48, |v36|
	v_max3_f32 v48, |v24|, |v22|, |v20|
	v_max3_f32 v47, |v27|, |v19|, |v18|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v6, v3
	v_max_f32_e64 v3, |v46|, |v45|
	v_max3_f32 v6, |v33|, |v31|, |v29|
	v_max3_f32 v3, v3, |v35|, v6
	v_max3_f32 v6, v48, v49, |v1|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v3, v3, v47, v6
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_and_b32 v47, 8, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v6
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v6, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v3, v3, v6 :: v_dual_lshlrev_b32 v6, 4, v41
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v41, v41, 8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v48, v6, v43
	v_add3_u32 v41, v41, v48, v47
	ds_store_b64 v41, v[2:3]
	v_lshl_or_b32 v2, v42, 3, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_add_u32 v41, v47, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v43
	v_add3_u32 v2, 0, v47, v2
	ds_load_b64 v[2:3], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v2
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v6
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v6
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v6
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v3
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v3
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v3
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v3, v3, v6
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v6, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v6, v44
	ds_store_b64 v41, v[2:3]
	v_lshlrev_b32_e32 v2, 3, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v3, 0, v2, v6
	ds_load_b64 v[41:42], v3
.Ltmp49:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v41, v41 :: v_dual_max_f32 v6, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v6, 0x2b8cbccc, v6
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v3, 0x40e00000, v3
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v44, v43
	v_fmac_f32_e32 v44, v47, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v3, v41, 0x40e00000, v3
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v6
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v6, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v47, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v47, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v42.l, v3.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v41, 0x40e00000, v6
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v41.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v41.l, v6.h
	v_mov_b16_e32 v42.h, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v6, v41, 0x7fff
	v_add3_u32 v42, v3, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v3.h, v6.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v41, 0xffff0000, v42
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v3.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v42, null, v41, v41, v7
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v7, v41, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v7, v42, v41, v7
	v_div_scale_f32 v42, null, v41, v41, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v8, v41, v8
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v8, v42, v41, v8
	v_div_scale_f32 v42, null, v41, v41, v13
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v41, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v13, v42, v41, v13
	v_div_scale_f32 v42, null, v41, v41, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v14, v41, v14
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v42, v41, v14
	v_div_scale_f32 v42, null, v41, v41, v15
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v15, v41, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v15, v42, v41, v15
	v_div_scale_f32 v42, null, v41, v41, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v16, v41, v16
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v16, v42, v41, v16
	v_div_scale_f32 v42, null, v41, v41, v17
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v17, v41, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v17, v42, v41, v17
	v_div_scale_f32 v42, null, v41, v41, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v21, v41, v21
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v21, v42, v41, v21
	v_div_scale_f32 v42, null, v41, v41, v23
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_dual_fmac_f32 v43, v44, v43 :: v_dual_and_b32 v6, 0xffff0000, v6
	v_div_scale_f32 v44, vcc_lo, v23, v41, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v23, v42, v41, v23
	v_div_scale_f32 v42, null, v41, v41, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v25, v41, v25
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v25, v42, v41, v25
	v_div_scale_f32 v42, null, v41, v41, v26
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v41, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v26, v42, v41, v26
	v_div_scale_f32 v42, null, v41, v41, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v28, v41, v28
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v28, v42, v41, v28
	v_div_scale_f32 v42, null, v41, v41, v30
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v30, v41, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v30, v42, v41, v30
	v_div_scale_f32 v42, null, v41, v41, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v32, v41, v32
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v32, v42, v41, v32
	v_div_scale_f32 v42, null, v41, v41, v34
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v34, v41, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v44, v43
	v_fma_f32 v48, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	v_div_fixup_f32 v34, v42, v41, v34
	v_div_scale_f32 v42, null, v41, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v41, v36
	v_mul_f32_e32 v47, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v47, v44
	v_fmac_f32_e32 v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v47, v44
	v_div_fmas_f32 v42, v42, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v36, v42, v41, v36
	v_div_scale_f32 v41, null, v6, v6, v46
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v46, v6, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v47, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v47, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_scale_f32 v42, null, v6, v6, v45
	v_div_fixup_f32 v41, v41, v6, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v45, v6, v45
	v_mul_f32_e32 v46, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v42, v46, v44
	v_fmac_f32_e32 v46, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v46, v44
	v_div_fmas_f32 v42, v42, v43, v46
	v_div_scale_f32 v43, null, v6, v6, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v42, v42, v6, v45
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v35, v6, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v35, v43, v6, v35
	v_div_scale_f32 v43, null, v6, v6, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v33, v6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v33, v43, v6, v33
	v_div_scale_f32 v43, null, v6, v6, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v31, v6, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v31, v43, v6, v31
	v_div_scale_f32 v43, null, v6, v6, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v29, v6, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v29, v43, v6, v29
	v_div_scale_f32 v43, null, v6, v6, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_dual_fmac_f32 v44, v45, v44 :: v_dual_and_b32 v29, 15, v29
	v_div_scale_f32 v45, vcc_lo, v27, v6, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v27, v43, v6, v27
	v_div_scale_f32 v43, null, v6, v6, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v19, v6, v19
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v43, v6, v19
	v_div_scale_f32 v43, null, v6, v6, v18
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v18, v6, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v18, v43, v6, v18
	v_div_scale_f32 v43, null, v6, v6, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v24, v6, v24
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v43, v6, v24
	v_div_scale_f32 v43, null, v6, v6, v22
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v22, v6, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v22, v43, v6, v22
	v_div_scale_f32 v43, null, v6, v6, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v20, v6, v20
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v43, v6, v20
	v_div_scale_f32 v43, null, v6, v6, v12
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v12, v6, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v12, v43, v6, v12
	v_div_scale_f32 v43, null, v6, v6, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v48, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v5, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v5, v43, v6, v5
	v_div_scale_f32 v43, null, v6, v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v4, v6, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v43, v44, v46
	v_div_fixup_f32 v4, v43, v6, v4
	v_div_scale_f32 v43, null, v6, v6, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v1, v6, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v47, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v47, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v43, v46, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v43, v43, v44, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v44, v18
	v_cvt_i32_f32_e32 v46, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v1, v43, v6, v1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v7
	v_rndne_f32_e32 v7, v8
	v_rndne_f32_e32 v8, v13
	v_rndne_f32_e32 v13, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v21
	v_rndne_f32_e32 v21, v23
	v_rndne_f32_e32 v23, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v28
	v_rndne_f32_e32 v28, v30
	v_rndne_f32_e32 v30, v32
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v1, v1
	v_rndne_f32_e32 v34, v36
	v_rndne_f32_e32 v36, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v1, v1, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v1, v1
	v_cvt_i32_f32_e32 v8, v8
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v32
	v_and_b32_e32 v32, 15, v44
	v_and_b32_e32 v44, 15, v1
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v4, 15, v6
	v_and_b32_e32 v6, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x160, v0
	v_and_b32_e32 v1, 0x3000, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v24, 15, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 0x200, v40
	v_xor_b32_e32 v8, v37, v8
	v_add3_u32 v1, 0, v1, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v5, 15, v7
	v_and_b32_e32 v7, 15, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v1, v36, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v19
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v15, 15, v17
	v_and_b32_e32 v16, 15, v21
	v_and_b32_e32 v17, 15, v23
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v19, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[4:7]
	ds_store_b128 v1, v[16:19] offset:1024
	v_lshlrev_b32_e32 v5, 5, v0
	v_lshlrev_b32_e32 v4, 7, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v41, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 0x60, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_or_b32 v4, 0x3600, v4, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v4, v39, 0
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[16:19], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v27
	v_and_b32_e32 v25, 15, v41
	v_and_b32_e32 v26, 15, v35
	v_and_b32_e32 v27, 15, v33
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v21, 15, v30
	v_and_b32_e32 v23, 15, v34
	v_and_b32_e32 v33, 15, v45
	v_and_b32_e32 v34, 15, v46
	v_and_b32_e32 v35, 15, v47
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[24:27]
	ds_store_b128 v1, v[32:35] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v8
	ds_load_b128 v[32:35], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[12:15]
	ds_store_b128 v1, v[20:23] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[20:23], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v31
	v_and_b32_e32 v30, 15, v42
	v_and_b32_e32 v31, 15, v43
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v42, 15, v49
	v_and_b32_e32 v43, 15, v50
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[28:31]
	ds_store_b128 v1, v[41:44] offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v18, 4, v6
	v_lshl_or_b32 v1, v19, 4, v7
	v_lshl_or_b32 v4, v16, 4, v4
	v_lshl_or_b32 v5, v17, 4, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v6.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_load_b128 v[28:31], v8
	ds_load_b128 v[41:44], v8 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v20, 4, v11
	v_lshl_or_b32 v8, v21, 4, v12
	v_lshl_or_b32 v11, v22, 4, v13
	v_lshl_or_b32 v12, v23, 4, v14
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s18, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v10
	v_add3_u32 v2, v10, s1, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v43, 4, v30
	v_lshl_or_b32 v20, v44, 4, v31
	v_lshl_or_b32 v17, v41, 4, v28
	v_lshl_or_b32 v18, v42, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v1.h, 0xff, v15.l
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s17, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v21, s[8:11], 0 offen
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s17, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v1.h, 0xff, v19.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v5.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v1.h, 0xff, v17.l
	v_or_b16 v5.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v2, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v38
	v_lshrrev_b32_e32 v4, 2, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s7, 0xffff
	v_add3_u32 v2, 0, v2, v4
	s_mov_b32 s8, s6
	ds_store_b32 v2, v3
.Ltmp50:
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp51:
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v2, 0x7c, v40
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
.Ltmp52:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 25
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 25
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10288
; TotalNumSgprs: 27
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 27
; NumVGPRsForWavesPerEU: 94
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
