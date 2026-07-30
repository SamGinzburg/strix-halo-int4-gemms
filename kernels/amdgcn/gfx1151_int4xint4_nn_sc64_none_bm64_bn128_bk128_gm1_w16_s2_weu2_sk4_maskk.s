	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v31, 15, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v11, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v13, 0x100, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v2, 3, v31
	v_and_b32_e32 v12, 0xe0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s34, 63
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
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s35, v4, v[2:3]
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s16, s7, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s6, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s7, s16
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s17, s7
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v1, 28, v11
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s16
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s30, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s7
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s18, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s19, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s18
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s19, s17
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s7, s3, 5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s18, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s4, s5, s16
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v8, s7, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v9, s7, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s16, s20, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v8
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 32, v8
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s2, 6
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s5, 7
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s18, v9
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 32, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s6, s16, 6
.Ltmp21:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s2, s26, s18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s21, s35, s7
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s7, s2, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
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
	v_lshrrev_b32_e32 v8, 2, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_lshlrev_b32_e32 v9, 3, v0
	s_mov_b32 s5, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v8, 24, v8
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v35, 0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v8, v11, v8
	v_add_nc_u32_e32 v34, 0, v8
	s_waitcnt vmcnt(1)
	ds_store_b32 v34, v7 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v35, v[5:6]
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
	v_lshrrev_b32_e32 v33, 4, v13
	v_lshrrev_b32_e32 v29, 1, v12
	v_bfe_u32 v30, v0, 4, 1
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v32, 1, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s16, 0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s5, s7, 32
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s5, v4
	v_sub_nc_u32_e32 v37, s18, v4
	v_lshl_or_b32 v4, s19, 8, v12
	v_add3_u32 v9, s26, v33, v31
	s_lshl_b32 s0, s17, 8
	v_mul_lo_u32 v10, s35, v10
	v_and_b32_e32 v5, 0x218, v32
	v_subrev_nc_u32_e32 v39, s0, v4
	s_lshl_b32 s0, s19, 7
	s_mov_b32 s19, s16
	v_sub_nc_u32_e32 v36, s18, v1
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_add3_u32 v2, v10, s0, v2
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v15, 32, v9
	v_mul_lo_u32 v9, s6, v9
	v_add_nc_u32_e32 v3, s26, v3
	v_subrev_nc_u32_e32 v42, s0, v2
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_lshlrev_b32_e32 v41, 1, v9
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	v_mov_b32_e32 v10, 0
	v_lshl_or_b32 v5, v31, 5, v5
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 0, v31
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v38, 1, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v7, 8, v5
	v_xor_b32_e32 v8, 16, v5
	v_xor_b32_e32 v14, 24, v5
	v_add_nc_u32_e32 v43, 0, v5
	v_add_nc_u32_e32 v47, v6, v29
	v_add_nc_u32_e32 v44, 0, v7
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v45, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mul_lo_u32 v15, s6, v15
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v46, 0, v14
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, s22 :: v_dual_lshlrev_b32 v40, 1, v15
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s1, 1
	s_lshl_b32 s27, s35, 1
	s_lshl_b32 s34, s35, 5
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
	buffer_load_u16 v48, v41, s[44:47], 0 offen
	buffer_load_u16 v49, v40, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v36
	v_cmp_lt_i32_e64 s0, s5, v37
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v40, 2, v40
	s_add_i32 s7, s7, -1
	v_add_nc_u32_e32 v41, 2, v41
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s0, s0, s4
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v85, 16, v49
	v_lshlrev_b32_e32 v84, 16, v48
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v48, s5, v9
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s5, s5, 32
	s_cmp_lg_u32 s7, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	buffer_load_b32 v86, v48, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v56, v47 offset:1664
	ds_load_u8 v57, v47 offset:1536
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e64 v48, 0x80000000, v42, s0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[62:65], v43 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[66:69], v44 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[70:73], v45 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[74:77], v46 offset0:8 offset1:10
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v42, s34, v42
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[78:79], v48, s[28:31], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v48, v47 offset:640
	ds_load_u8 v49, v47 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:1920
	ds_load_u8 v58, v47 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v47 offset:896
	ds_load_u8 v50, v47 offset:768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v57, 16, v56
	ds_load_u8 v56, v47 offset:1152
	ds_load_u8 v57, v47 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v81, v49, 16, v48
	ds_load_u8 v48, v47 offset:128
	ds_load_u8 v49, v47
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:1408
	ds_load_u8 v58, v47 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v47 offset:384
	ds_load_u8 v50, v47 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v57, 16, v56
	ds_load_u8 v56, v47 offset:2688
	ds_load_u8 v57, v47 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v80, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[80:81], v[62:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[82:83], v[66:67], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:2944
	ds_load_u8 v58, v47 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v57, 16, v56
	ds_load_u8 v56, v47 offset:2176
	ds_load_u8 v57, v47 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:2432
	ds_load_u8 v58, v47 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v57, 16, v56
	ds_load_u8 v56, v47 offset:3712
	ds_load_u8 v57, v47 offset:3584
	v_wmma_i32_16x16x16_iu4 v[48:55], v[66:67], v[70:71], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:3968
	ds_load_u8 v58, v47 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v57, 16, v56
	ds_load_u8 v56, v47 offset:3200
	ds_load_u8 v57, v47 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v47 offset:3456
	ds_load_u8 v58, v47 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v70, v57, 16, v56
	v_wmma_i32_16x16x16_iu4 v[56:63], v[80:81], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[70:71], v[74:75], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[82:83], v[68:69], v[56:63] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[56:63], v[66:67], v[72:73], v[56:63] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[56:63], v[70:71], v[76:77], v[56:63] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_dual_mul_f32 v57, v85, v57 :: v_dual_add_nc_u32 v64, v38, v39
	v_mul_f32_e32 v49, v84, v49
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v65, v64, s[40:43], 0 offen
	buffer_load_u16 v66, v64, s[40:43], 0 offen offset:4
	buffer_load_u16 v67, v64, s[40:43], 0 offen offset:8
	buffer_load_u16 v68, v64, s[40:43], 0 offen offset:12
	buffer_load_u16 v69, v64, s[40:43], 0 offen offset:16
	buffer_load_u16 v70, v64, s[40:43], 0 offen offset:20
	buffer_load_u16 v71, v64, s[40:43], 0 offen offset:24
	buffer_load_u16 v64, v64, s[40:43], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_mul_f32_e32 v51, v84, v51
	v_mul_f32_e32 v55, v84, v55
	v_mul_f32_e32 v48, v84, v48
	v_mul_f32_e32 v50, v84, v50
	v_mul_f32_e32 v52, v84, v52
	v_mul_f32_e32 v53, v84, v53
	v_dual_mul_f32 v54, v84, v54 :: v_dual_mul_f32 v59, v85, v59
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b32 v34, v86 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(8)
	ds_store_b64 v35, v[78:79]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v61, v85, v61
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v39, s27, v39
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v69, 16, v69
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v71, 16, v71
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v58, v85, v58 :: v_dual_fmac_f32 v25, v51, v68
	v_mul_f32_e32 v56, v85, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v62, v85, v62 :: v_dual_fmac_f32 v21, v55, v64
	v_mul_f32_e32 v60, v85, v60
	v_dual_mul_f32 v63, v85, v63 :: v_dual_fmac_f32 v10, v48, v65
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v27, v49, v66 :: v_dual_fmac_f32 v26, v50, v67
	v_dual_fmac_f32 v24, v52, v69 :: v_dual_fmac_f32 v23, v53, v70
	v_dual_fmac_f32 v20, v57, v66 :: v_dual_fmac_f32 v19, v58, v67
	v_fmac_f32_e32 v28, v56, v65
	v_fmac_f32_e32 v18, v59, v68
	v_dual_fmac_f32 v16, v61, v70 :: v_dual_fmac_f32 v15, v62, v71
	v_dual_fmac_f32 v22, v54, v71 :: v_dual_fmac_f32 v17, v60, v69
	v_fmac_f32_e32 v14, v63, v64
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v33, v31
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s3, s26, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, 32, v1
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s6, v1
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mul_lo_u32 v2, s6, v2
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s4, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v9, v1, s[36:39], 0 offen
	buffer_load_u16 v33, v2, s[36:39], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add3_u32 v1, 0, v31, v29
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	ds_load_u8 v2, v1 offset:640
	ds_load_u8 v3, v1 offset:896
	ds_load_u8 v4, v1 offset:768
	ds_load_u8 v5, v1 offset:512
	ds_load_u8 v6, v1 offset:128
	ds_load_u8 v7, v1 offset:256
	ds_load_u8 v8, v1
	ds_load_u8 v34, v1 offset:384
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v32, 0x218, v32
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v54, v1 offset:1664
	ds_load_u8 v55, v1 offset:1792
	ds_load_u8 v56, v1 offset:1536
	ds_load_u8 v58, v1 offset:2688
	ds_load_u8 v59, v1 offset:2944
	ds_load_u8 v60, v1 offset:2816
	ds_load_u8 v61, v1 offset:2560
	ds_load_u8 v62, v1 offset:2176
	ds_load_u8 v63, v1 offset:2432
	ds_load_u8 v64, v1 offset:2304
	ds_load_u8 v65, v1 offset:2048
	ds_load_u8 v67, v1 offset:3712
	ds_load_u8 v68, v1 offset:3968
	ds_load_u8 v69, v1 offset:3840
	ds_load_u8 v70, v1 offset:3584
	ds_load_u8 v71, v1 offset:3200
	ds_load_u8 v72, v1 offset:3456
	ds_load_u8 v73, v1 offset:3328
	ds_load_u8 v74, v1 offset:3072
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v31, v31, 5, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v32, v31, 24, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v35, v31, 8, 0
	v_xad_u32 v57, v31, 16, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v8, v6, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v5, v7, v34, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v31, 0, v31
	ds_load_2addr_stride64_b64 v[42:45], v32 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[46:49], v35 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[50:53], v31 offset0:8 offset1:10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v32, v3, 16, v2
	v_lshl_or_b32 v31, v5, 16, v4
	ds_load_u8 v2, v1 offset:1920
	ds_load_u8 v3, v1 offset:1152
	ds_load_u8 v4, v1 offset:1408
	ds_load_u8 v5, v1 offset:1280
	ds_load_u8 v6, v1 offset:1024
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v66, v56, v54, 0xc0c0004
	v_dual_mov_b32 v41, s11 :: v_dual_mov_b32 v40, s10
	v_dual_mov_b32 v39, s9 :: v_dual_mov_b32 v38, s8
	v_dual_mov_b32 v37, s7 :: v_dual_mov_b32 v36, s6
	v_dual_mov_b32 v35, s5 :: v_dual_mov_b32 v34, s4
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v58, v61, v58, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v65, v62, 0xc0c0004
	v_perm_b32 v61, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v55, v2, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[54:57], v57 offset0:8 offset1:10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v6, v3, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[50:51], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v75, 16, v66
	v_wmma_i32_16x16x16_iu4 v[34:41], v[31:32], v[52:53], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v50, v77, 16, v76
	v_perm_b32 v31, v73, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[46:47], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v59, 16, v58
	v_lshl_or_b32 v46, v61, 16, v60
	v_perm_b32 v58, v70, v67, 0xc0c0004
	v_perm_b32 v59, v69, v68, 0xc0c0004
	v_perm_b32 v60, v74, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[50:51], v[48:49], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v59, 16, v58
	v_lshl_or_b32 v31, v31, 16, v60
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[56:57], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[31:32], v[44:45], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_8:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v29, v30, v29
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s35
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v29, s0, v29, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s14
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_bfe_i32 v50, v0, 0, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v9.h, v9.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 4, v29
	v_add_nc_u32_e32 v32, 8, v29
	v_add_nc_u32_e32 v42, 12, v29
	v_add_nc_u32_e32 v43, 16, v29
	v_add_nc_u32_e32 v44, 20, v29
	v_add_nc_u32_e32 v45, 24, v29
	v_cndmask_b32_e64 v30, 0x80000000, v29, s2
	v_add_nc_u32_e32 v29, 28, v29
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_clause 0x7
	buffer_load_u16 v46, v30, s[4:7], 0 offen
	buffer_load_u16 v47, v31, s[4:7], 0 offen
	buffer_load_u16 v48, v32, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v49, v29, s[4:7], 0 offen
	v_mov_b16_e32 v29.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v29.h, v33.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v30, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v31, 7, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v32, 14, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v34, v34, v29 :: v_dual_and_b32 v11, 0x78, v11
	v_dual_mul_f32 v36, v36, v29 :: v_dual_and_b32 v33, 1, v0
	v_dual_mul_f32 v39, v39, v29 :: v_dual_lshlrev_b32 v52, 4, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v9.l, v29.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v37, v37, v29
	v_dual_mul_f32 v38, v38, v29 :: v_dual_lshlrev_b32 v61, 11, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v11, v12, 3, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v1, v1, v9 :: v_dual_and_b32 v12, 0x700, v52
	v_dual_mul_f32 v3, v3, v9 :: v_dual_lshlrev_b32 v52, 2, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshlrev_b32_e32 v32, 6, v33
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v5, v5, v9 :: v_dual_and_b32 v0, 0x840, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	v_lshrrev_b32_e32 v51, 1, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v35, v35, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v41, v41, v29 :: v_dual_and_b32 v50, 0x840, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, 0x1008, 0, vcc_lo
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s26, s35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v0, v12, v52, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v53, 60, v31
	v_or_b32_e32 v54, 52, v31
	v_or_b32_e32 v55, 44, v31
	v_or_b32_e32 v56, 36, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v40, v40, v29
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v29, s35, v31
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v57, 28, v31
	v_or_b32_e32 v58, 20, v31
	v_or_b32_e32 v59, 12, v31
	v_or_b32_e32 v60, 4, v31
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v62, s0, s33, v30
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v2, v2, v9
	v_mul_f32_e32 v4, v4, v9
	v_mul_f32_e32 v6, v6, v9
	v_mul_f32_e32 v7, v7, v9
	v_mul_f32_e32 v8, v8, v9
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v9, v11, v50
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[30:31], null, s35, 24, v[29:30]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v69, 0, v0
	v_xad_u32 v70, 0x2010, v0, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v9, v61, v51, v9
	v_xad_u32 v71, 0x4020, v0, 0
	v_xad_u32 v72, 0x6030, v0, 0
	s_waitcnt lgkmcnt(0)
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[31:32], null, s35, 40, v[29:30]
	v_mad_u64_u32 v[32:33], null, s35, 48, v[29:30]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v33, 0, v9
	v_xad_u32 v51, v9, 8, 0
	v_xad_u32 v52, v9, 16, 0
	v_xad_u32 v61, v9, 24, 0
	v_xad_u32 v65, v9, 32, 0
	v_xad_u32 v66, v9, 40, 0
	v_xad_u32 v67, v9, 48, 0
	v_xad_u32 v68, v9, 56, 0
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v50, s35, v60
	v_mul_lo_u32 v59, s35, v59
	v_mul_lo_u32 v58, s35, v58
	v_mul_lo_u32 v57, s35, v57
	v_mul_lo_u32 v56, s35, v56
	v_lshl_add_u32 v60, s35, 3, v29
	v_mul_lo_u32 v55, s35, v55
	v_lshl_add_u32 v63, s35, 4, v29
	v_mul_lo_u32 v54, s35, v54
	v_lshl_add_u32 v64, s35, 5, v29
	v_mul_lo_u32 v53, s35, v53
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v46
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v47
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v48
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v42
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v13, 16, v43
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v49
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v1, v0, v10
	v_fma_f32 v34, v34, v0, v28
	v_fma_f32 v2, v2, v9, v27
	v_fma_f32 v3, v3, v11, v26
	v_fma_f32 v9, v35, v9, v20
	v_fma_f32 v5, v5, v13, v24
	v_fma_f32 v11, v36, v11, v19
	v_fma_f32 v45, v4, v12, v25
	v_fma_f32 v7, v7, v43, v22
	v_fma_f32 v35, v37, v12, v18
	v_fma_f32 v46, v6, v42, v23
	v_fma_f32 v13, v38, v13, v17
	v_fma_f32 v36, v39, v42, v16
	v_fma_f32 v37, v40, v43, v15
	v_fma_f32 v47, v8, v44, v21
	v_fma_f32 v38, v41, v44, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v10, v1, s2
	v_cndmask_b32_e64 v1, v28, v34, s2
	v_cndmask_b32_e64 v2, v27, v2, s2
	v_cndmask_b32_e64 v4, v26, v3, s2
	v_cndmask_b32_e64 v3, v20, v9, s2
	v_cndmask_b32_e64 v8, v24, v5, s2
	v_cndmask_b32_e64 v5, v19, v11, s2
	v_cndmask_b32_e64 v6, v25, v45, s2
	v_cndmask_b32_e64 v12, v22, v7, s2
	v_cndmask_b32_e64 v7, v18, v35, s2
	v_cndmask_b32_e64 v10, v23, v46, s2
	v_cndmask_b32_e64 v9, v17, v13, s2
	v_cndmask_b32_e64 v11, v16, v36, s2
	v_cndmask_b32_e64 v13, v15, v37, s2
	v_cndmask_b32_e64 v21, v21, v47, s2
	v_cndmask_b32_e64 v22, v14, v38, s2
	ds_store_b64 v33, v[0:1]
	ds_store_b64 v51, v[2:3]
	ds_store_b64 v52, v[4:5]
	ds_store_b64 v61, v[6:7]
	ds_store_b64 v65, v[8:9]
	ds_store_b64 v66, v[10:11]
	ds_store_b64 v67, v[12:13]
	ds_store_b64 v68, v[21:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v69 offset1:16
	ds_load_2addr_b64 v[4:7], v70 offset1:16
	ds_load_2addr_b64 v[8:11], v71 offset1:16
	ds_load_2addr_b64 v[12:15], v72 offset1:16
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[16:17], null, s35, 56, v[29:30]
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v17, v62, v29, 2
	v_add_lshl_u32 v18, v62, v50, 2
	v_add_lshl_u32 v19, v62, v60, 2
	v_add_lshl_u32 v20, v62, v59, 2
	v_add_lshl_u32 v21, v62, v63, 2
	v_add_lshl_u32 v22, v62, v58, 2
	v_add_lshl_u32 v23, v62, v57, 2
	v_add_lshl_u32 v24, v62, v64, 2
	v_add_lshl_u32 v25, v62, v56, 2
	v_add_lshl_u32 v28, v62, v30, 2
	v_add_lshl_u32 v29, v62, v31, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v8, v19, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x7
	buffer_atomic_add_f32 v12, v20, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v21, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v22, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v28, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v23, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v24, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v25, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v29, s[24:27], 0 offen
	v_add_lshl_u32 v26, v62, v55, 2
	v_add_lshl_u32 v30, v62, v32, 2
	v_add_lshl_u32 v27, v62, v54, 2
	v_add_lshl_u32 v16, v62, v16, 2
	v_add_lshl_u32 v0, v62, v53, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v26, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v30, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v27, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v16, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 87
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
		.amdhsa_inst_pref_size 39
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_vgpr, 87
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4936
; TotalNumSgprs: 50
; NumVgprs: 87
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 87
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     87
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
