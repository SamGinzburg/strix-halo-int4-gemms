	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v29, 15, v0
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v26, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 3, v29
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s5, s5, 2
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s27, v4, v[2:3]
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s20, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s7, s20
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s31, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s20
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s30, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s19, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s7, s3, 5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s19, s5, s17
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s22, s27, s7
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s19, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s6, s4, 31
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s5, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v5, s22, s26, v5
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s18, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s4, s5, s20
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v1, 28, v8
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v10, s7, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v9, s7, v1
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s6, s21, s3
.Ltmp19:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 6
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v9
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 32, v9
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s18, v10
	.loc	1 171 51                        ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 32, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s6, s6, 6
.Ltmp21:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s2, s33, s18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 63
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s7, s2, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b32 v7, v6, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[5:6], v5, s[28:31], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshrrev_b32_e32 v9, 2, v0
	s_mov_b32 s5, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s21, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v9, 24, v9
	v_xor_b32_e32 v8, v8, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_lshlrev_b32_e32 v9, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v32, 0, v8
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v33, 0, v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v32, v7 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[5:6]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
.LBB0_3:                                ; %Flow107
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v31, 16, v4
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v27, 0x70, v26
	v_bfe_u32 v28, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v30, 1, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s16, 0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s7, s7, 32
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v10, 0xe0, v0
	v_add_nc_u32_e32 v12, s7, v4
	v_sub_nc_u32_e32 v35, s18, v4
	v_add3_u32 v9, s33, v31, v29
	s_lshl_b32 s0, s17, 8
	v_lshl_or_b32 v4, s19, 8, v10
	v_mul_lo_u32 v10, s27, v12
	v_and_b32_e32 v5, 0x218, v30
	v_sub_nc_u32_e32 v34, s18, v1
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_subrev_nc_u32_e32 v37, s0, v4
	s_lshl_b32 s0, s19, 7
	s_mov_b32 s19, s16
	v_add3_u32 v2, v10, s0, v2
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v13, 32, v9
	v_mul_lo_u32 v9, s6, v9
	v_add_nc_u32_e32 v3, s33, v3
	v_subrev_nc_u32_e32 v40, s0, v2
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_lshlrev_b32_e32 v39, 1, v9
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	v_mov_b32_e32 v10, 0
	v_lshl_or_b32 v5, v29, 5, v5
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 0, v29
	v_lshlrev_b32_e32 v36, 1, v28
	v_mov_b32_e32 v24, 0
	v_xor_b32_e32 v7, 8, v5
	v_xor_b32_e32 v8, 16, v5
	v_xor_b32_e32 v11, 24, v5
	v_add_nc_u32_e32 v41, 0, v5
	v_add_nc_u32_e32 v45, v6, v27
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v42, 0, v7
	v_add_nc_u32_e32 v43, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mul_lo_u32 v12, s6, v13
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v44, 0, v11
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, s22 :: v_dual_lshlrev_b32 v38, 1, v12
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s5, s1, 1
	s_lshl_b32 s34, s27, 1
	s_lshl_b32 s35, s27, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v46, v39, s[44:47], 0 offen
	buffer_load_u16 v47, v38, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v34
	v_cmp_lt_i32_e64 s0, s7, v35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v38, 2, v38
	s_add_i32 s5, s5, -1
	v_add_nc_u32_e32 v39, 2, v39
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s0, s0, s4
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v47
	v_lshlrev_b32_e32 v82, 16, v46
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v46, s7, v9
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s7, s7, 32
	s_cmp_lg_u32 s5, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_b32 v84, v46, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v54, v45 offset:1664
	ds_load_u8 v55, v45 offset:1536
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e64 v46, 0x80000000, v40, s0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[60:63], v41 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[64:67], v42 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[68:71], v43 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[72:75], v44 offset0:8 offset1:10
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v40, s35, v40
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[76:77], v46, s[28:31], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v46, v45 offset:640
	ds_load_u8 v47, v45 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:1920
	ds_load_u8 v56, v45 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v45 offset:896
	ds_load_u8 v48, v45 offset:768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v55, 16, v54
	ds_load_u8 v54, v45 offset:1152
	ds_load_u8 v55, v45 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v79, v47, 16, v46
	ds_load_u8 v46, v45 offset:128
	ds_load_u8 v47, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:1408
	ds_load_u8 v56, v45 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v45 offset:384
	ds_load_u8 v48, v45 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v55, 16, v54
	ds_load_u8 v54, v45 offset:2688
	ds_load_u8 v55, v45 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v78, v47, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[78:79], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[80:81], v[64:65], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:2944
	ds_load_u8 v56, v45 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v55, 16, v54
	ds_load_u8 v54, v45 offset:2176
	ds_load_u8 v55, v45 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:2432
	ds_load_u8 v56, v45 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v55, 16, v54
	ds_load_u8 v54, v45 offset:3712
	ds_load_u8 v55, v45 offset:3584
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[68:69], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:3968
	ds_load_u8 v56, v45 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v55, 16, v54
	ds_load_u8 v54, v45 offset:3200
	ds_load_u8 v55, v45 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v45 offset:3456
	ds_load_u8 v56, v45 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v68, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[54:61], v[78:79], v[62:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[72:73], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[80:81], v[66:67], v[54:61] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[54:61], v[64:65], v[70:71], v[54:61] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[54:61], v[68:69], v[74:75], v[54:61] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_dual_mul_f32 v55, v83, v55 :: v_dual_add_nc_u32 v62, v36, v37
	v_mul_f32_e32 v51, v82, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v63, v62, s[40:43], 0 offen
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:8
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:12
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:16
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:20
	buffer_load_u16 v69, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v62, v62, s[40:43], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v48, v82, v48
	v_mul_f32_e32 v46, v82, v46
	v_mul_f32_e32 v47, v82, v47
	v_mul_f32_e32 v49, v82, v49
	v_mul_f32_e32 v50, v82, v50
	v_mul_f32_e32 v52, v82, v52
	v_mul_f32_e32 v53, v82, v53
	v_mul_f32_e32 v57, v83, v57
	v_mul_f32_e32 v59, v83, v59
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b32 v32, v84 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(8)
	ds_store_b64 v33, v[76:77]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v37, s34, v37
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v64, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v69
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v54, v83, v54 :: v_dual_fmac_f32 v23, v48, v65
	v_dual_mul_f32 v56, v83, v56 :: v_dual_fmac_f32 v21, v50, v67
	v_dual_mul_f32 v58, v83, v58 :: v_dual_fmac_f32 v19, v52, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, v83, v60 :: v_dual_fmac_f32 v25, v54, v63
	v_dual_mul_f32 v61, v83, v61 :: v_dual_fmac_f32 v10, v46, v63
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v24, v47, v64 :: v_dual_fmac_f32 v15, v57, v66
	v_dual_fmac_f32 v22, v49, v66 :: v_dual_fmac_f32 v17, v55, v64
	v_dual_fmac_f32 v20, v51, v68 :: v_dual_fmac_f32 v11, v61, v62
	v_dual_fmac_f32 v18, v53, v62 :: v_dual_fmac_f32 v13, v59, v68
	v_fmac_f32_e32 v16, v56, v65
	v_fmac_f32_e32 v14, v58, v67
	v_fmac_f32_e32 v12, v60, v69
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, v31, v29
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s3, s33, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 32, v3
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s6, v3
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mul_lo_u32 v2, s6, v4
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v37, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v39, 0
	s_mov_b32 s4, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v40, v1, s[36:39], 0 offen
	buffer_load_u16 v41, v2, s[36:39], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add3_u32 v9, 0, v29, v27
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	ds_load_u8 v1, v9 offset:640
	ds_load_u8 v2, v9 offset:896
	ds_load_u8 v5, v9 offset:768
	ds_load_u8 v6, v9 offset:512
	ds_load_u8 v7, v9 offset:128
	ds_load_u8 v8, v9 offset:256
	ds_load_u8 v31, v9
	ds_load_u8 v32, v9 offset:384
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v30, 0x218, v30
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v62, v9 offset:2688
	ds_load_u8 v63, v9 offset:2944
	ds_load_u8 v64, v9 offset:2816
	ds_load_u8 v65, v9 offset:2560
	ds_load_u8 v66, v9 offset:2176
	ds_load_u8 v67, v9 offset:2432
	ds_load_u8 v68, v9 offset:2304
	ds_load_u8 v69, v9 offset:2048
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v29, v29, 5, v30
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v30, v9 offset:1664
	ds_load_u8 v42, v9 offset:1792
	ds_load_u8 v43, v9 offset:1536
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v33, v29, 24, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v34, v29, 8, 0
	v_xad_u32 v44, v29, 16, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v31, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v32, v8, v32, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v29, 0, v29
	ds_load_2addr_stride64_b64 v[5:8], v33 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[50:53], v34 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[54:57], v29 offset0:8 offset1:10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v32, 16, v31
	ds_load_u8 v29, v9 offset:1920
	ds_load_u8 v31, v9 offset:1152
	ds_load_u8 v45, v9 offset:1408
	ds_load_u8 v46, v9 offset:1280
	ds_load_u8 v47, v9 offset:1024
	ds_load_u8 v70, v9 offset:3712
	ds_load_u8 v71, v9 offset:3968
	ds_load_u8 v72, v9 offset:3840
	ds_load_u8 v73, v9 offset:3584
	ds_load_u8 v74, v9 offset:3200
	ds_load_u8 v75, v9 offset:3456
	ds_load_u8 v76, v9 offset:3328
	ds_load_u8 v9, v9 offset:3072
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[58:61], v44 offset0:8 offset1:10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v38, s10
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v36, s8
	v_dual_mov_b32 v35, s7 :: v_dual_mov_b32 v34, s6
	v_dual_mov_b32 v33, s5 :: v_dual_mov_b32 v32, s4
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v30, v43, v30, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v29, v42, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v77, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v31, v47, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[54:55], v[32:39] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v29, 16, v30
	v_perm_b32 v54, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v29, v77, 16, v31
	v_perm_b32 v31, v65, v62, 0xc0c0004
	v_perm_b32 v55, v69, v66, 0xc0c0004
	v_perm_b32 v62, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[32:39], v[1:2], v[56:57], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[29:30], v[50:51], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v54, 16, v31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v73, v70, 0xc0c0004
	v_lshl_or_b32 v50, v62, 16, v55
	v_perm_b32 v54, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v74, 0xc0c0004
	v_perm_b32 v1, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[32:39], v[29:30], v[52:53], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[58:59], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v54, 16, v31
	v_lshl_or_b32 v1, v1, 16, v9
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[60:61], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[5:6], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[1:2], v[7:8], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v1, v42
	v_cvt_f32_i32_e32 v2, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v9, v48
	v_cvt_f32_i32_e32 v31, v49
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
.LBB0_8:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v27, v28, v27
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s26, s0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v46.h, v41.l
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v27, s0, v27, 1
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v32, v32, v46 :: v_dual_add_nc_u32 v29, 4, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_dual_mov_b32 v41, 0x5410 :: v_dual_add_nc_u32 v30, 8, v27
	v_dual_mov_b32 v47, 0x7632 :: v_dual_add_nc_u32 v42, 12, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v27, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v34, v34, v46 :: v_dual_add_nc_u32 v43, 16, v27
	v_dual_mul_f32 v33, v33, v46 :: v_dual_add_nc_u32 v44, 20, v27
	v_dual_mul_f32 v36, v36, v46 :: v_dual_add_nc_u32 v45, 24, v27
	v_dual_mul_f32 v38, v38, v46 :: v_dual_add_nc_u32 v27, 28, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x7
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v40.h, v40.l
	v_mov_b16_e32 v40.l, v46.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v26, 0x78, v26
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v3, s27, v3
	v_mul_lo_u32 v4, s27, v4
	s_mul_i32 s33, s33, s27
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v1, v40
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v26, s33, s26, v26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v37, v37, v46 :: v_dual_mul_f32 v2, v2, v40
	v_dual_mul_f32 v39, v39, v46 :: v_dual_mul_f32 v6, v6, v40
	v_mul_f32_e32 v5, v5, v40
	v_mul_f32_e32 v7, v7, v40
	v_mul_f32_e32 v8, v8, v40
	v_mul_f32_e32 v9, v9, v40
	v_mul_f32_e32 v31, v31, v40
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add_lshl_u32 v40, v26, v3, 1
	v_add_lshl_u32 v26, v26, v4, 1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v35, v35, v46 :: v_dual_and_b32 v0, 16, v0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v60.h, v46.l
	v_mov_b16_e32 v56.h, v46.l
	v_mov_b16_e32 v59.h, v46.l
	v_mov_b16_e32 v52.h, v46.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v51.h, v46.l
	v_mov_b16_e32 v50.h, v46.l
	v_mov_b16_e32 v58.h, v46.l
	v_mov_b16_e32 v62.h, v46.l
	v_mov_b16_e32 v57.h, v46.l
	v_mov_b16_e32 v61.h, v46.l
	v_mov_b16_e32 v54.h, v46.l
	v_mov_b16_e32 v53.h, v46.l
	v_mov_b16_e32 v48.h, v46.l
	v_mov_b16_e32 v46.h, v46.l
	v_mov_b16_e32 v49.h, v46.l
	s_mov_b32 s0, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v4, 16, v29
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v29, 16, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v2, v4, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v6, v29, v22
	v_fma_f32 v4, v33, v4, v17
	v_fma_f32 v29, v35, v29, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v24, v2, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v6, v22, v6, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v3, 16, v28
	v_lshlrev_b32_e32 v28, 16, v30
	v_lshlrev_b32_e32 v30, 16, v43
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v6, v6, v6
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v1, v3, v10
	v_fma_f32 v3, v32, v3, v25
	v_fma_f32 v31, v31, v27, v18
	v_fma_f32 v5, v5, v28, v23
	v_fma_f32 v7, v7, v30, v21
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v42, 16, v44
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v36, v30, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v25, v3, s2
	v_cndmask_b32_e64 v10, v18, v31, s2
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_max_f32_e32 v1, v1, v1
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v8, v42, v20
	v_fma_f32 v32, v37, v42, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v23, v5, s2
	v_cndmask_b32_e64 v7, v21, v7, s2
	v_cndmask_b32_e64 v14, v14, v30, s2
	v_cndmask_b32_e64 v8, v20, v8, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v43, 16, v45
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v17, v4, s2
	v_cndmask_b32_e64 v13, v13, v32, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v8, v8, v8
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v38, v43, v12
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_max_f32_e32 v10, v10, v10
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v39, v27, v11
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v12, v33, s2
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_max_f32_e32 v7, v7, v7
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v9, v43, v19
	v_fma_f32 v28, v34, v28, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v11, v27, s2
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v13, v13, v13
	v_max_f32_e32 v10, 0, v10
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v14, 0, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v19, v9, s2
	v_cndmask_b32_e64 v16, v16, v28, s2
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_mul_f32_e32 v3, v3, v3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v15, v29, s2
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v14, v14, v14
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v2, 0, v2
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v55.l, v3.h
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v8, 0, v8
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v60.l, v14.h
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, 0, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v56.l, v4.h
	v_and_b32_e32 v18, 1, v55
	v_mov_b16_e32 v59.l, v13.h
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v29, 1, v60
	.loc	1 213 19                        ; generate_amdgcn.py:213:19
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v2, v2, v2
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v10, v10, v10
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v16, v16, v16
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v52.l, v7.h
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v25, 1, v56
	v_and_b32_e32 v28, 1, v59
	v_mov_b16_e32 v51.l, v8.h
	v_add3_u32 v3, v3, v18, 0x7fff
	v_add3_u32 v14, v14, v29, 0x7fff
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v22, 1, v52
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v50.l, v5.h
	.loc	1 214 19                        ; generate_amdgcn.py:214:19
	v_mul_f32_e32 v15, v15, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v58.l, v16.h
	v_mov_b16_e32 v62.l, v12.h
	v_add3_u32 v4, v4, v25, 0x7fff
	v_add3_u32 v13, v13, v28, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v13.l, v14.h
	v_and_b32_e32 v21, 1, v51
	v_mov_b16_e32 v61.l, v11.h
	v_and_b32_e32 v20, 1, v50
	v_mov_b16_e32 v57.l, v15.h
	v_add3_u32 v7, v7, v22, 0x7fff
	v_and_b32_e32 v27, 1, v58
	v_and_b32_e32 v31, 1, v62
	v_mov_b16_e32 v54.l, v9.h
	v_add3_u32 v8, v8, v21, 0x7fff
	v_and_b32_e32 v30, 1, v61
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v18, 1, v57
	v_mov_b16_e32 v53.l, v10.h
	v_add3_u32 v16, v16, v27, 0x7fff
	v_add3_u32 v12, v12, v31, 0x7fff
	v_dual_cndmask_b32 v3, 0x1054, v41 :: v_dual_and_b32 v24, 1, v54
	v_add3_u32 v15, v15, v18, 0x7fff
	v_add3_u32 v0, v11, v30, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e32 v0.l, v12.h
	v_and_b32_e32 v23, 1, v53
	v_mov_b16_e32 v48.l, v2.h
	v_add3_u32 v9, v9, v24, 0x7fff
	v_mov_b16_e32 v46.l, v1.h
	v_mov_b16_e32 v49.l, v6.h
	v_add3_u32 v10, v10, v23, 0x7fff
	v_add3_u32 v5, v5, v20, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v19, 1, v48
	v_lshl_or_b32 v3, v3, 8, v3
	v_dual_cndmask_b32 v9, v0, v15 :: v_dual_cndmask_b32 v0, v15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v2, v19, 0x7fff
	v_and_b32_e32 v17, 1, v46
	v_and_b32_e32 v3, 0x540054, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v12, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v1, v1, v17, 0x7fff
	v_and_b32_e32 v17, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 4, v3
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v1, v8, v2 :: v_dual_cndmask_b32 v2, v2, v8
	v_cndmask_b32_e32 v8, v13, v4, vcc_lo
	v_add3_u32 v6, v6, v17, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_dual_cndmask_b32 v5, 0x3276, v47 :: v_dual_cndmask_b32 v4, v4, v13
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v7, v10, v6, vcc_lo
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e32 v6, v6, v10, vcc_lo
	v_and_b32_e32 v10, 0x5040504, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0x760076, v5
	v_permlanex16_b32 v3, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v2, v1, v10
	v_perm_b32 v6, v12, v9, v10
	v_lshl_or_b32 v5, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v5
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v2, v1, v11
	v_perm_b32 v2, v3, v7, v10
	v_perm_b32 v3, v3, v7, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v4, v5, v8, v10
	v_perm_b32 v5, v5, v8, v11
	v_perm_b32 v7, v12, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v40, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 85
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 40
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 85
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5084
; TotalNumSgprs: 50
; NumVgprs: 85
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 85
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     85
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
