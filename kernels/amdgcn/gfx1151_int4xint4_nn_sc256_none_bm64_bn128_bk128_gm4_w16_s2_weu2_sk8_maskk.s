	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v2, 7, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v12, 0x70, v0
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v15, 0xe0, v0
	v_lshlrev_b32_e32 v10, 3, v0
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v13, 0x100, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v11, 1, v12
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v16, 15, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v36, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v18, 1, v15
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v10, v10, v11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v35, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v17, v0, 4, 1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v19, 4, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0, v36
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v38, 0, v10
	v_add3_u32 v36, 0, v16, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s19
	s_xor_b32 s6, s2, s19
	s_cvt_f32_u32 s17, s7
	s_ashr_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 166 34 is_stmt 0              ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s35, v3, v[2:3]
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s18, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s7, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 0xff
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s17, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s7, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s18, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s7, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s18, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s20, s3
.Ltmp19:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s7, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s26, s22, 8
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s7, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 0x80, v8
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s34, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s20, 0x100
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s35, s18
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s18, s16, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s27, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s21, s33, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[8:9], v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s26, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x200
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v38, v[8:9] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[4:7]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v14, s17, 8, v15
	s_add_i32 s15, s18, 0x80
	s_lshl_b32 s0, s6, 8
	v_add3_u32 v5, s34, v19, v16
	v_add_nc_u32_e32 v9, s15, v3
	v_subrev_nc_u32_e32 v41, s0, v14
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v4, 2, v0
	v_add_nc_u32_e32 v10, 32, v5
	v_mov_b32_e32 v14, 0
	v_mul_lo_u32 v9, s35, v9
	v_mul_lo_u32 v5, s26, v5
	v_and_b32_e32 v4, 0x438, v4
	v_mul_lo_u32 v10, s26, v10
	v_sub_nc_u32_e32 v40, s7, v3
	v_add_nc_u32_e32 v3, s34, v3
	v_sub_nc_u32_e32 v39, s7, v1
	v_lshl_or_b32 v4, v16, 6, v4
	v_add3_u32 v2, v9, s0, v2
	s_lshl_b32 s0, s6, 7
	v_lshlrev_b32_e32 v43, 1, v5
	v_lshlrev_b32_e32 v42, 1, v10
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_xor_b32_e32 v11, 32, v4
	v_xor_b32_e32 v20, 40, v4
	v_xor_b32_e32 v21, 48, v4
	v_xor_b32_e32 v22, 56, v4
	v_mad_u64_u32 v[9:10], null, s7, v3, v[1:2]
	v_subrev_nc_u32_e32 v44, s0, v2
	v_add_nc_u32_e32 v45, 0, v4
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v46, 0, v6
	v_add_nc_u32_e32 v47, 0, v7
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v48, 0, v8
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v49, 0, v11
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v50, 0, v20
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v51, 0, v21
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v52, 0, v22
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v20, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_max_i32 s42, s14, 1
	s_lshl_b32 s43, s35, 1
	s_lshl_b32 s44, s35, 7
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s15, v39
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v10, s15, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v11, 1, v17
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s15, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s15, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v53, v11, v41
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s42, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[10:11], v10, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v85, v43, s[4:7], 0 offen
	buffer_load_u16 v86, v42, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v87, v53, s[36:39], 0 offen
	buffer_load_u16 v88, v53, s[36:39], 0 offen offset:4
	buffer_load_u16 v89, v53, s[36:39], 0 offen offset:8
	buffer_load_u16 v90, v53, s[36:39], 0 offen offset:12
	buffer_load_u16 v91, v53, s[36:39], 0 offen offset:16
	buffer_load_u16 v92, v53, s[36:39], 0 offen offset:20
	buffer_load_u16 v93, v53, s[36:39], 0 offen offset:24
	buffer_load_u16 v94, v53, s[36:39], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v53, 0x80000000, v44, s0
	buffer_load_b128 v[69:72], v53, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v53, v36 offset:640
	ds_load_u8 v54, v36 offset:896
	ds_load_u8 v55, v36 offset:768
	ds_load_u8 v56, v36 offset:512
	ds_load_u8 v57, v36 offset:128
	ds_load_u8 v58, v36 offset:384
	ds_load_u8 v59, v36 offset:256
	ds_load_u8 v60, v36
	ds_load_u8 v61, v36 offset:1664
	ds_load_u8 v62, v36 offset:1920
	ds_load_u8 v63, v36 offset:1792
	ds_load_u8 v64, v36 offset:1536
	ds_load_u8 v65, v36 offset:1152
	ds_load_u8 v66, v36 offset:1280
	ds_load_u8 v67, v36 offset:1408
	ds_load_u8 v68, v36 offset:1024
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v45 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[77:80], v46 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v95, v36 offset:2688
	ds_load_u8 v96, v36 offset:2944
	ds_load_u8 v97, v36 offset:2816
	ds_load_u8 v98, v36 offset:2560
	ds_load_u8 v99, v36 offset:2176
	ds_load_u8 v100, v36 offset:2432
	ds_load_u8 v101, v36 offset:2304
	ds_load_u8 v102, v36 offset:2048
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v53, v56, v53, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v55, v60, v57, 0xc0c0004
	v_perm_b32 v56, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v58, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v57, v64, v61, 0xc0c0004
	v_lshl_or_b32 v82, v54, 16, v53
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v60, v66, v67, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v59, v68, v65, 0xc0c0004
	v_lshl_or_b32 v81, v56, 16, v55
	v_lshl_or_b32 v84, v58, 16, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v83, v60, 16, v59
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[81:82], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[81:82], v[73:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[83:84], v[79:80], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v47 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v79, v36 offset:3712
	ds_load_u8 v80, v36 offset:3968
	ds_load_u8 v81, v36 offset:3840
	ds_load_u8 v82, v36 offset:3584
	v_wmma_i32_16x16x16_iu4 v[53:60], v[83:84], v[77:78], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v77, v98, v95, 0xc0c0004
	v_perm_b32 v78, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v95, v102, v99, 0xc0c0004
	v_perm_b32 v97, v101, v100, 0xc0c0004
	ds_load_u8 v83, v36 offset:3200
	ds_load_u8 v84, v36 offset:3328
	ds_load_u8 v96, v36 offset:3456
	v_lshl_or_b32 v78, v78, 16, v77
	v_lshl_or_b32 v77, v97, 16, v95
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[75:76], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v48 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v95, v36 offset:4736
	ds_load_u8 v97, v36 offset:4992
	ds_load_u8 v99, v36 offset:4864
	ds_load_u8 v100, v36 offset:4608
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v78, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v82, v79, 0xc0c0004
	ds_load_u8 v79, v36 offset:4224
	ds_load_u8 v82, v36 offset:4480
	ds_load_u8 v98, v36 offset:3072
	ds_load_u8 v80, v36 offset:4352
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v81, v98, v83, 0xc0c0004
	v_perm_b32 v83, v84, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[75:76], v[61:68] neg_lo:[1,1,0]
	v_perm_b32 v77, v100, v95, 0xc0c0004
	ds_load_u8 v95, v36 offset:5248
	ds_load_u8 v84, v36 offset:4096
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v49 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v36 offset:5760
	ds_load_u8 v83, v36 offset:6016
	ds_load_u8 v96, v36 offset:5888
	ds_load_u8 v98, v36 offset:5632
	v_perm_b32 v78, v99, v97, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v80, v80, v82, 0xc0c0004
	ds_load_u8 v97, v36 offset:5376
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v84, v79, 0xc0c0004
	ds_load_u8 v84, v36 offset:5504
	v_lshl_or_b32 v77, v80, 16, v79
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[75:76], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v98, v81, 0xc0c0004
	ds_load_u8 v81, v36 offset:6272
	v_perm_b32 v78, v96, v83, 0xc0c0004
	ds_load_u8 v83, v36 offset:6528
	ds_load_u8 v96, v36 offset:6144
	ds_load_u8 v82, v36 offset:5120
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v50 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v79, v36 offset:6784
	ds_load_u8 v80, v36 offset:7040
	ds_load_u8 v99, v36 offset:6912
	ds_load_u8 v100, v36 offset:6656
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v84, v97, v84, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v96, v81, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v82, v82, v95, 0xc0c0004
	ds_load_u8 v95, v36 offset:6400
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v100, v100, v79, 0xc0c0004
	v_perm_b32 v99, v99, v80, 0xc0c0004
	v_lshl_or_b32 v77, v84, 16, v82
	ds_load_u8 v82, v36 offset:7808
	ds_load_u8 v84, v36 offset:8064
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[75:76], v[61:68] neg_lo:[1,1,0]
	ds_load_u8 v77, v36 offset:7936
	ds_load_u8 v78, v36 offset:7680
	ds_load_u8 v97, v36 offset:7296
	ds_load_u8 v98, v36 offset:7424
	ds_load_u8 v101, v36 offset:7552
	ds_load_u8 v102, v36 offset:7168
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v51 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v83, v95, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v77, v84, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v95, v78, v82, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[77:80], v52 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v82, v99, 16, v100
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v96, v102, v97, 0xc0c0004
	v_perm_b32 v97, v98, v101, 0xc0c0004
	v_lshl_or_b32 v84, v84, 16, v95
	v_wmma_i32_16x16x16_iu4 v[53:60], v[81:82], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[81:82], v[75:76], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v83, v97, 16, v96
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(11)
	ds_store_b64 v38, v[10:11] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[69:72]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[53:60], v[83:84], v[77:78], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[83:84], v[79:80], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v74, 16, v86
	v_lshlrev_b32_e32 v73, 16, v85
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_mul_f32_e32 v68, v68, v74
	v_dual_mul_f32 v53, v53, v73 :: v_dual_add_nc_u32 v44, s44, v44
	v_dual_mul_f32 v56, v56, v73 :: v_dual_lshlrev_b32 v75, 16, v87
	v_dual_mul_f32 v55, v55, v73 :: v_dual_add_nc_u32 v42, 2, v42
	v_dual_mul_f32 v54, v54, v73 :: v_dual_add_nc_u32 v43, 2, v43
	v_dual_mul_f32 v59, v59, v73 :: v_dual_lshlrev_b32 v76, 16, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v14, v53, v75 :: v_dual_lshlrev_b32 v77, 16, v89
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v78, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v58, v58, v73 :: v_dual_lshlrev_b32 v79, 16, v91
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v34, v54, v76 :: v_dual_lshlrev_b32 v81, 16, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v57, v57, v73
	v_dual_mul_f32 v66, v66, v74 :: v_dual_add_nc_u32 v41, s43, v41
	v_dual_mul_f32 v63, v63, v74 :: v_dual_lshlrev_b32 v80, 16, v92
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v31, v57, v79 :: v_dual_lshlrev_b32 v82, 16, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v60, v60, v73 :: v_dual_mul_f32 v65, v65, v74
	v_mul_f32_e32 v61, v61, v74
	v_mul_f32_e32 v62, v62, v74
	v_mul_f32_e32 v64, v64, v74
	v_dual_mul_f32 v67, v67, v74 :: v_dual_fmac_f32 v30, v58, v80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v33, v55, v77 :: v_dual_fmac_f32 v32, v56, v78
	v_dual_fmac_f32 v29, v59, v81 :: v_dual_fmac_f32 v28, v60, v82
	v_dual_fmac_f32 v27, v61, v75 :: v_dual_fmac_f32 v26, v62, v76
	v_dual_fmac_f32 v25, v63, v77 :: v_dual_fmac_f32 v24, v64, v78
	v_dual_fmac_f32 v23, v65, v79 :: v_dual_fmac_f32 v22, v66, v80
	v_dual_fmac_f32 v21, v67, v81 :: v_dual_fmac_f32 v20, v68, v82
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %._crit_edge._crit_edge
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v42, 2, v0
	s_mov_b32 s0, 0
	s_branch .LBB0_6
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr42
.LBB0_6:                                ; %Flow
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v41, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 166 26 is_stmt 1              ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v2, v36 offset:640
	ds_load_u8 v3, v36 offset:768
	ds_load_u8 v4, v36 offset:512
	ds_load_u8 v5, v36 offset:896
	ds_load_u8 v6, v36 offset:128
	ds_load_u8 v7, v36 offset:256
	ds_load_u8 v8, v36
	ds_load_u8 v9, v36 offset:384
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v1, 0x438, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v60, v36 offset:2688
	ds_load_u8 v61, v36 offset:2944
	ds_load_u8 v62, v36 offset:2816
	ds_load_u8 v63, v36 offset:2560
	ds_load_u8 v64, v36 offset:2176
	ds_load_u8 v65, v36 offset:2432
	ds_load_u8 v66, v36 offset:2304
	ds_load_u8 v67, v36 offset:2048
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v11, v16, 6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v1, v11, 56, 0
	v_xad_u32 v10, v11, 8, 0
	v_add_nc_u32_e32 v37, 0, v11
	ds_load_2addr_stride64_b64 v[49:52], v10 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[53:56], v37 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[45:48], v1 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v3, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v8, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v4, v7, v9, 0xc0c0004
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_mov_b32_e32 v40, s7
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v36 offset:1664
	ds_load_u8 v2, v36 offset:1920
	ds_load_u8 v5, v36 offset:1792
	ds_load_u8 v6, v36 offset:1536
	ds_load_u8 v7, v36 offset:1152
	ds_load_u8 v8, v36 offset:1408
	ds_load_u8 v58, v36 offset:1280
	ds_load_u8 v59, v36 offset:1024
	v_lshl_or_b32 v9, v4, 16, v3
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v39, s6
	v_mov_b32_e32 v37, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v57, v11, 24, 0
	v_xad_u32 v70, v11, 16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v78, v63, v60, 0xc0c0004
	v_perm_b32 v79, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v67, v67, v64, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v75, v11, 48, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v69, v5, v2, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v6, v1, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v58, v58, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v7, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[53:54], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v69, 16, v68
	ds_load_u8 v53, v36 offset:3712
	ds_load_u8 v54, v36 offset:3968
	ds_load_u8 v68, v36 offset:3840
	ds_load_u8 v69, v36 offset:3584
	ds_load_u8 v71, v36 offset:3200
	ds_load_u8 v72, v36 offset:3456
	ds_load_u8 v76, v36 offset:3328
	ds_load_u8 v77, v36 offset:3072
	v_lshl_or_b32 v73, v58, 16, v59
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[57:60], v57 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[61:64], v70 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[37:44], v[9:10], v[55:56], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v79, 16, v78
	v_lshl_or_b32 v49, v65, 16, v67
	ds_load_u8 v65, v36 offset:4736
	ds_load_u8 v66, v36 offset:4992
	ds_load_u8 v67, v36 offset:4864
	ds_load_u8 v70, v36 offset:4608
	ds_load_u8 v78, v36 offset:4224
	ds_load_u8 v79, v36 offset:4480
	ds_load_u8 v80, v36 offset:4352
	ds_load_u8 v81, v36 offset:4096
	v_wmma_i32_16x16x16_iu4 v[37:44], v[73:74], v[51:52], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v54, v68, v54, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v53, v69, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v69, v76, v72, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v68, v77, v71, 0xc0c0004
	ds_load_u8 v76, v36 offset:5760
	ds_load_u8 v77, v36 offset:5888
	ds_load_u8 v82, v36 offset:5632
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v54, 16, v53
	ds_load_u8 v53, v36 offset:6016
	ds_load_u8 v54, v36 offset:5248
	ds_load_u8 v83, v36 offset:5504
	ds_load_u8 v84, v36 offset:5376
	ds_load_u8 v85, v36 offset:5120
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v71, v11, 40, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v61, v69, 16, v68
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v70, v65, 0xc0c0004
	v_perm_b32 v87, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v11, 32, 0
	ds_load_2addr_stride64_b64 v[65:68], v71 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[69:72], v11 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v87, 16, v86
	v_lshl_or_b32 v57, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[37:44], v[49:50], v[63:64], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v77, v53, 0xc0c0004
	v_perm_b32 v11, v82, v76, 0xc0c0004
	ds_load_u8 v76, v36 offset:6784
	ds_load_u8 v78, v36 offset:7040
	ds_load_u8 v79, v36 offset:6912
	ds_load_u8 v80, v36 offset:6656
	ds_load_u8 v81, v36 offset:6272
	ds_load_u8 v82, v36 offset:6528
	ds_load_u8 v86, v36 offset:6400
	ds_load_u8 v87, v36 offset:6144
	ds_load_u8 v88, v36 offset:7808
	ds_load_u8 v89, v36 offset:8064
	ds_load_u8 v90, v36 offset:7936
	ds_load_u8 v91, v36 offset:7680
	ds_load_u8 v92, v36 offset:7296
	ds_load_u8 v93, v36 offset:7552
	ds_load_u8 v94, v36 offset:7424
	ds_load_u8 v36, v36 offset:7168
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v85, v85, v54, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[53:56], v75 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v9, v84, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[37:44], v[61:62], v[59:60], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v77, 16, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v9, 16, v85
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[37:44], v[57:58], v[71:72], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v11, v80, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v86, v82, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v52, v87, v81, 0xc0c0004
	v_lshl_or_b32 v50, v51, 16, v11
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v91, v88, 0xc0c0004
	v_perm_b32 v51, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v36, v92, 0xc0c0004
	v_lshl_or_b32 v49, v49, 16, v52
	v_perm_b32 v52, v94, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[37:44], v[9:10], v[67:68], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v51, 16, v11
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[53:54], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v52, 16, v36
	v_wmma_i32_16x16x16_iu4 v[37:44], v[49:50], v[55:56], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[10:11], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[37:44], v[10:11], v[47:48], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v37
	v_cvt_f32_i32_e32 v10, v38
	v_cvt_f32_i32_e32 v11, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v39, v42
	v_cvt_f32_i32_e32 v40, v43
	v_cvt_f32_i32_e32 v41, v44
	v_mov_b32_e32 v42, v35
.LBB0_8:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v16, v19, v16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v17, v17, v18
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s14, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v18, s26, v16
	s_add_i32 s0, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v18, s0, v18, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v16, 32, v16
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v17, s1, v17, 1
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s25, s25, 0xffff
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s27, s15
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v16, s26, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v17, s2
	s_mov_b32 s26, s14
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v36, v18, s[12:15], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v52, 1, v13
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v16, s0, v16, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v43, v19, s[24:27], 0 offen
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s34, s34, s35
	s_mov_b32 s0, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 8, v17
	v_add_nc_u32_e32 v18, 4, v17
	v_add_nc_u32_e32 v44, 16, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v36 :: v_dual_add_nc_u32 v45, 20, v17
	v_mul_f32_e32 v2, v2, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v35, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v36 :: v_dual_add_nc_u32 v35, 12, v17
	v_dual_mul_f32 v5, v5, v36 :: v_dual_add_nc_u32 v46, 24, v17
	v_dual_mul_f32 v8, v8, v36 :: v_dual_add_nc_u32 v17, 28, v17
	v_mul_f32_e32 v1, v1, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x6
	buffer_load_u16 v47, v18, s[24:27], 0 offen
	buffer_load_u16 v48, v19, s[24:27], 0 offen
	buffer_load_u16 v49, v35, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v50, v17, s[24:27], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v51, v16, s[12:15], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v16, v0, 0, 1
	v_and_b32_e32 v17, 0x78, v42
	v_and_b32_e32 v42, 14, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v35, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v19, 0x840, v16
	v_lshl_or_b32 v15, v15, 3, v17
	v_lshlrev_b32_e32 v53, 11, v42
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xor_b32_e32 v15, v15, v19
	v_or3_b32 v15, v53, v52, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v52, 0, v15
	v_xad_u32 v53, v15, 8, 0
	v_xad_u32 v54, v15, 16, 0
	v_xad_u32 v55, v15, 24, 0
	v_xad_u32 v56, v15, 32, 0
	v_xad_u32 v57, v15, 40, 0
	v_xad_u32 v58, v15, 48, 0
	v_xad_u32 v59, v15, 56, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v15, 16, v43
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v43, 16, v47
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v48
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v48, 16, v49
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v50
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v51
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v18, 0x7f, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v45, v30
	v_fma_f32 v51, v7, v46, v29
	v_fma_f32 v8, v8, v49, v28
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v50
	.loc	1 192 23 is_stmt 1              ; generate_amdgcn.py:192:23
	v_add3_u32 v16, s34, s33, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v10, v50
	v_mul_f32_e32 v11, v11, v50
	v_mul_f32_e32 v36, v37, v50
	v_mul_f32_e32 v37, v38, v50
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v35, v[16:17]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v39, v50
	v_mul_f32_e32 v39, v40, v50
	v_mul_f32_e32 v40, v41, v50
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v15, v14
	v_fma_f32 v2, v2, v43, v34
	v_fma_f32 v15, v9, v15, v27
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v48, v32
	v_fma_f32 v10, v10, v43, v26
	v_fma_f32 v41, v3, v47, v33
	v_fma_f32 v11, v11, v47, v25
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[18:19], 2, v[17:18]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v50, v5, v44, v31
	v_fma_f32 v36, v36, v48, v24
	v_fma_f32 v37, v37, v44, v23
	v_fma_f32 v38, v38, v45, v22
	v_fma_f32 v39, v39, v46, v21
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v40, v40, v49, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v14, v1, s2
	v_cndmask_b32_e64 v3, v34, v2, s2
	v_cndmask_b32_e64 v2, v27, v15, s2
	v_cndmask_b32_e64 v7, v32, v4, s2
	v_cndmask_b32_e64 v4, v26, v10, s2
	v_cndmask_b32_e64 v5, v33, v41, s2
	v_cndmask_b32_e64 v14, v30, v6, s2
	v_cndmask_b32_e64 v6, v25, v11, s2
	v_cndmask_b32_e64 v9, v31, v50, s2
	v_cndmask_b32_e64 v31, v28, v8, s2
	v_cndmask_b32_e64 v8, v24, v36, s2
	v_cndmask_b32_e64 v10, v23, v37, s2
	v_cndmask_b32_e64 v29, v29, v51, s2
	v_cndmask_b32_e64 v15, v22, v38, s2
	v_cndmask_b32_e64 v30, v21, v39, s2
	v_cndmask_b32_e64 v32, v20, v40, s2
	ds_store_b64 v52, v[1:2]
	ds_store_b64 v53, v[3:4]
	ds_store_b64 v54, v[5:6]
	ds_store_b64 v55, v[7:8]
	ds_store_b64 v56, v[9:10]
	ds_store_b64 v57, v[14:15]
	ds_store_b64 v58, v[29:30]
	ds_store_b64 v59, v[31:32]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v21, v[18:19], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v1, 1, v0
	v_bfe_i32 v0, v0, 7, 1
	v_lshlrev_b32_e32 v2, 4, v12
	v_lshlrev_b32_e32 v3, 2, v42
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v0, 0x840, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v0, v0, v1
	v_cndmask_b32_e64 v1, 0x1008, 0, vcc_lo
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v1
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	v_xad_u32 v0, 0x6030, v0, 0
	ds_load_2addr_b64 v[12:15], v1 offset1:16
	ds_load_2addr_b64 v[8:11], v2 offset1:16
	ds_load_2addr_b64 v[4:7], v3 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_9:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v20, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v21
	v_mov_b32_e32 v21, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v12, 4, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v12, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_11:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v12, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v21
	v_mov_b32_e32 v21, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 3, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_13:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v8, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v21
	v_mov_b32_e32 v21, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 12, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v4, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v20, v21, v0
	global_atomic_cmpswap_b32 v4, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v21
	v_mov_b32_e32 v21, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 4, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 20, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 28, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 5, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 36, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[12:13], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v19, v[12:13], off
.LBB0_27:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s35, 40, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_29:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 44, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[4:5], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_31:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_33:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 52, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_35:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 60, v35
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_39:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 103
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_vgpr, 103
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7524
; TotalNumSgprs: 47
; NumVgprs: 103
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 103
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     103
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
