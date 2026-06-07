	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v8, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_lshlrev_b32 v9, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 24, v9
	s_load_b64 s[24:25], s[0:1], 0x20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v27, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v29, 15, v0
	v_lshrrev_b32_e32 v33, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v30, 0xe0, v0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v31, 24, v27
	v_mov_b32_e32 v19, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 63
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
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v9, v9, v31
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v26, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v28, v0, 4, 1
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v31, 16, v33
	v_lshlrev_b32_e32 v33, 5, v29
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v36, 0, v9
	v_lshlrev_b32_e32 v34, 4, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v16, 0
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
	s_sub_i32 s10, 0, s7
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 28, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s17, s5, s7
	s_add_i32 s18, s5, 1
	s_sub_i32 s17, s10, s17
	s_mov_b32 s10, 0x7ffffffe
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s17
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s18, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s7, s3, 5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s7, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s17, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v11, s7, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[6:7], null, s17, v4, v[2:3]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s17, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v10
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s17, v11
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v11
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s21, 6
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s33, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s16, s26, s17
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s7, s2, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v6, s7, s16, v6
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v7, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[5:6], v6, s[28:31], 0 offen
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v10, 24, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v8, v8, v10
	v_add_nc_u32_e32 v35, 0, v8
	s_waitcnt vmcnt(1)
	ds_store_b32 v35, v7 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[5:6]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v7, s33, v31, v29
	v_lshl_or_b32 v10, s18, 8, v30
	v_lshl_or_b32 v4, s18, 7, v4
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v9, 32, v7
	s_lshl_b32 s0, s6, 8
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v3, s33, v3
	v_subrev_nc_u32_e32 v40, s0, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v9, s34, v9
	s_lshl_b32 s0, s6, 7
	v_sub_nc_u32_e32 v37, s17, v1
	v_subrev_nc_u32_e32 v4, s0, v4
	v_sub_nc_u32_e32 v38, s17, v2
	v_and_or_b32 v6, 0x218, v32, v33
	v_mul_lo_u32 v7, s34, v7
	v_mov_b32_e32 v25, 0
	v_lshlrev_b32_e32 v41, 1, v9
	v_mad_u64_u32 v[9:10], null, s17, v4, v[2:3]
	v_mad_u64_u32 v[10:11], null, s17, v3, v[1:2]
	s_mov_b32 s17, s16
	v_and_b32_e32 v5, 24, v32
	v_xor_b32_e32 v8, 8, v6
	v_xor_b32_e32 v12, 16, v6
	v_xor_b32_e32 v13, 24, v6
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v42, 1, v7
	v_or3_b32 v5, v34, v5, v33
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v43, 0, v6
	v_add_nc_u32_e32 v44, 0, v8
	v_lshlrev_b32_e32 v39, 1, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v14, 8, v5
	v_xor_b32_e32 v15, 16, v5
	v_xor_b32_e32 v16, 24, v5
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v47, 0, v5
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v45, 0, v12
	v_dual_mov_b32 v3, s18 :: v_dual_add_nc_u32 v46, 0, v13
	v_dual_mov_b32 v5, s20 :: v_dual_add_nc_u32 v48, 0, v14
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v49, 0, v15
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v50, 0, v16
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v13, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s40, s35, 1
	s_lshl_b32 s41, s27, 1
	s_add_i32 s42, s7, 32
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s42, v37
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v51, s42, v10
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s42, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_and_b32 s1, s1, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	buffer_load_b32 v91, v51, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v43 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[69:72], v44 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[73:76], v45 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[77:80], v46 offset0:8 offset1:10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[83:84], v47
	ds_load_b64 v[85:86], v48
	ds_load_b64 v[87:88], v49
	ds_load_b64 v[89:90], v50
	v_add_nc_u32_e32 v51, s42, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, 32
	s_cmp_lg_u32 s40, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_load_b64 v[81:82], v51, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[83:84], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[67:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v67, v42, s[4:7], 0 offen
	buffer_load_u16 v68, v41, s[4:7], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[85:86], v[69:70], v[51:58] neg_lo:[1,1,0]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v41, 2, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[85:86], v[71:72], v[59:66] neg_lo:[1,1,0]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v42, 2, v42
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[87:88], v[73:74], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[75:76], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[89:90], v[77:78], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[89:90], v[79:80], v[59:66] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v60, v68, v60 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v56, v56, v67 :: v_dual_add_nc_u32 v69, v39, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v70, v69, s[36:39], 0 offen
	buffer_load_u16 v71, v69, s[36:39], 0 offen offset:4
	buffer_load_u16 v72, v69, s[36:39], 0 offen offset:8
	buffer_load_u16 v73, v69, s[36:39], 0 offen offset:12
	buffer_load_u16 v74, v69, s[36:39], 0 offen offset:16
	buffer_load_u16 v75, v69, s[36:39], 0 offen offset:20
	buffer_load_u16 v76, v69, s[36:39], 0 offen offset:24
	buffer_load_u16 v69, v69, s[36:39], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v51, v67
	v_mul_f32_e32 v52, v52, v67
	v_mul_f32_e32 v53, v53, v67
	v_mul_f32_e32 v54, v54, v67
	v_mul_f32_e32 v55, v55, v67
	v_dual_mul_f32 v57, v57, v67 :: v_dual_mul_f32 v62, v68, v62
	v_mul_f32_e32 v58, v58, v67
	v_mul_f32_e32 v59, v68, v59
	v_mul_f32_e32 v64, v68, v64
	v_mul_f32_e32 v66, v68, v66
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v35, v91 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_store_b64 v36, v[81:82]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v40, s41, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v67, 16, v71
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v72, 16, v72
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v71, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v68, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v73, 16, v75
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v26, v52, v67 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v68, v63
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v22, v56, v73 :: v_dual_lshlrev_b32 v75, 16, v76
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v65, v68, v65 :: v_dual_fmac_f32 v16, v62, v71
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v11, v51, v70 :: v_dual_fmac_f32 v18, v60, v67
	v_dual_fmac_f32 v25, v53, v72 :: v_dual_fmac_f32 v14, v64, v73
	v_dual_fmac_f32 v24, v54, v71 :: v_dual_fmac_f32 v23, v55, v74
	v_dual_fmac_f32 v12, v66, v69 :: v_dual_fmac_f32 v21, v57, v75
	v_dual_fmac_f32 v20, v58, v69 :: v_dual_fmac_f32 v19, v59, v70
	v_fmac_f32_e32 v17, v61, v72
	v_fmac_f32_e32 v15, v63, v74
	v_fmac_f32_e32 v13, v65, v75
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v40, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v1, 24, v32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v32, 0x218, v32, v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v47, s11 :: v_dual_mov_b32 v40, s4
	v_mov_b32_e32 v46, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_or3_b32 v33, v34, v1, v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v44, s8 :: v_dual_add_nc_u32 v1, 0, v32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v8, v32, 8, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v42, s6 :: v_dual_add_nc_u32 v7, 0, v33
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v5, v33, 16, 0
	v_xad_u32 v6, v33, 8, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[1:4], v1 offset0:8 offset1:10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[9:10], v5
	ds_load_b64 v[56:57], v6
	ds_load_b64 v[58:59], v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v34, v32, 16, 0
	ds_load_2addr_stride64_b64 v[5:8], v8 offset0:8 offset1:10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v33, v33, 24, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v32, v32, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v45, s9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[48:51], v34 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v43, s7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[60:61], v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v41, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[52:55], v32 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[58:59], v[1:2], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[58:59], v[3:4], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[56:57], v[5:6], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[56:57], v[7:8], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[48:49], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[9:10], v[50:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[60:61], v[52:53], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[60:61], v[54:55], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v32
	v_cvt_f32_i32_e32 v2, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v34
	v_cvt_f32_i32_e32 v6, v35
	v_cvt_f32_i32_e32 v9, v36
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v3, v40
	v_cvt_f32_i32_e32 v5, v41
	v_cvt_f32_i32_e32 v10, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v7, v44
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v40, v47
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v29, v31, v29
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v30, 1, v30
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v31, 32, v29
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v28, v28, v30
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v30, s34, v29
	s_add_i32 s0, s0, s1
	s_mov_b32 s19, 0x31027000
	v_mul_lo_u32 v32, s34, v31
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_mov_b32 s16, s12
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v30, s0, v30, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s26, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v48, 0x7632
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v32, s0, v32, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v28, s3, v28, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v47, 0x5410
	v_mov_b16_e32 v50.h, v46.h
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v33, 4, v28
	v_add_nc_u32_e32 v34, 8, v28
	v_cndmask_b32_e64 v41, 0x80000000, v28, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s17, s15, 0xffff
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	s_mov_b32 s16, s14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v46.h
	v_mov_b16_e32 v51.h, v46.h
	v_mov_b16_e32 v52.h, v46.h
	s_mov_b32 s15, 0x76543210
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v29, s27, v29
	s_mul_i32 s33, s33, s27
	v_mul_lo_u32 v31, s27, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v32 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v1, v1, v30 :: v_dual_add_nc_u32 v42, 12, v28
	v_dual_mul_f32 v2, v2, v30 :: v_dual_add_nc_u32 v43, 16, v28
	v_dual_mul_f32 v9, v9, v30 :: v_dual_add_nc_u32 v44, 20, v28
	v_dual_mul_f32 v4, v4, v30 :: v_dual_add_nc_u32 v45, 24, v28
	v_dual_mul_f32 v35, v35, v30 :: v_dual_add_nc_u32 v28, 28, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x7
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v41, v41, s[16:19], 0 offen
	buffer_load_u16 v42, v42, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	buffer_load_u16 v44, v44, s[16:19], 0 offen
	buffer_load_u16 v43, v43, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v45, v45, s[16:19], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v30 :: v_dual_and_b32 v27, 0x78, v27
	v_dual_mul_f32 v37, v37, v30 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v30, v39, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v27, s33, s26, v27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s18
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v10, v32
	v_mul_f32_e32 v8, v8, v32
	v_mul_f32_e32 v7, v7, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v29, v27, v29, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v39, 16, v41
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v41, 16, v42
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v42, 16, v44
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v39, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v33, v26
	v_fma_f32 v4, v4, v34, v25
	v_fma_f32 v9, v9, v43, v23
	v_fma_f32 v35, v35, v42, v22
	v_fma_f32 v3, v3, v39, v19
	v_fma_f32 v10, v10, v34, v17
	v_fma_f32 v8, v8, v42, v14
	v_fma_f32 v7, v7, v43, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v11, v1, s2
	v_cndmask_b32_e64 v2, v26, v2, s2
	v_cndmask_b32_e64 v4, v25, v4, s2
	v_cndmask_b32_e64 v9, v23, v9, s2
	v_cndmask_b32_e64 v11, v22, v35, s2
	v_cndmask_b32_e64 v3, v19, v3, s2
	v_cndmask_b32_e64 v10, v17, v10, s2
	v_cndmask_b32_e64 v7, v15, v7, s2
	v_cndmask_b32_e64 v8, v14, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v14, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	v_bfe_u32 v17, v4, 16, 1
	v_bfe_u32 v19, v9, 16, 1
	v_bfe_u32 v22, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v4, v4
	v_cmp_o_f32_e64 s3, v9, v9
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v1, v1, v14, 0x7fff
	v_add3_u32 v2, v2, v15, 0x7fff
	v_add3_u32 v4, v4, v17, 0x7fff
	v_add3_u32 v9, v9, v19, 0x7fff
	v_add3_u32 v11, v11, v22, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v11.h, s4
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v37, v44, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v10.h
	v_mov_b16_e32 v49.l, v3.h
	v_cndmask_b32_e32 v11, v4, v1, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v32
	v_mul_f32_e32 v36, v36, v32
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v41, v24
	v_fma_f32 v30, v30, v28, v20
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v21, v37, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v33, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v24, v6, s2
	v_cndmask_b32_e64 v20, v20, v30, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v36, v41, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v18, v5, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v23, v21, 16, 1
	v_bfe_u32 v18, v6, 16, 1
	v_bfe_u32 v24, v20, 16, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v33, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v5.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v38, v32
	v_mul_f32_e32 v32, v40, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v20, v20
	v_and_b32_e32 v17, 1, v46
	v_mov_b16_e32 v51.l, v7.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v32, v28, v12
	v_fma_f32 v32, v38, v44, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v21, v23, 0x7fff
	v_add3_u32 v15, v20, v24, 0x7fff
	v_mov_b16_e32 v46.l, v16.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v12, v28, s2
	v_cndmask_b32_e64 v13, v13, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v6, v6
	v_add3_u32 v6, v6, v18, 0x7fff
	v_dual_cndmask_b32 v1, v1, v4 :: v_dual_and_b32 v18, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v13.h
	v_and_b32_e32 v20, 1, v51
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.l, 0x7fff, v14.h, s5
	v_cndmask_b16 v6.h, 0x7fff, v15.h, s6
	v_and_b32_e32 v21, 1, v52
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s12, v7, v7
	v_cmp_o_f32_e64 s14, v13, v13
	v_add3_u32 v0, v3, v18, 0x7fff
	v_add3_u32 v3, v5, v17, 0x7fff
	v_and_b32_e32 v5, 1, v46
	v_add3_u32 v9, v10, v19, 0x7fff
	v_mov_b16_e32 v46.l, v8.h
	v_cndmask_b32_e32 v4, v6, v2, vcc_lo
	v_add3_u32 v10, v13, v21, 0x7fff
	v_cndmask_b32_e32 v13, 0x3276, v48, vcc_lo
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cmp_o_f32_e64 s9, v16, v16
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s8
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s14
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x1054, v47, vcc_lo
	v_add3_u32 v0, v16, v5, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s12
	v_and_b32_e32 v5, 1, v46
	v_mov_b16_e32 v46.l, v12.h
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s10
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v10, v13, 8, v13
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s9
	v_and_b32_e32 v13, 1, v46
	v_cmp_o_f32_e64 s11, v8, v8
	v_cmp_o_f32_e64 s13, v12, v12
	v_add3_u32 v5, v8, v5, 0x7fff
	v_permlanex16_b32 v8, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x540054, v6
	v_and_b32_e32 v6, 0x760076, v10
	v_add3_u32 v10, v12, v13, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v5.h, s11
	v_permlanex16_b32 v1, v1, s15, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v5, v6, 4, v6
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s13
	v_cndmask_b32_e32 v6, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_and_b32_e32 v7, 0x5040504, v2
	v_and_b32_e32 v10, 0x7060706, v5
	v_dual_cndmask_b32 v2, v0, v9 :: v_dual_cndmask_b32 v9, v9, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v5, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v11, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v1, v1, v11, v10
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v8, v4, v7
	v_perm_b32 v3, v8, v4, v10
	v_perm_b32 v4, v5, v6, v7
	v_perm_b32 v5, v5, v6, v10
	v_perm_b32 v6, v11, v9, v7
	v_perm_b32 v7, v11, v9, v10
	v_add_lshl_u32 v8, v27, v31, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v29, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v8, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 43
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
		.amdhsa_inst_pref_size 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 92
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4064
; TotalNumSgprs: 45
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 92
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
