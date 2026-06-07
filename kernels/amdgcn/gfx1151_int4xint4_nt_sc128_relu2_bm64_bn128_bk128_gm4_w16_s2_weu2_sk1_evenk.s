	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v10, 4, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v25, 1, v0
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v27, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, 64, v2
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v29, 16, v10
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v28, 0xe0, v0
	v_bfe_u32 v26, v0, 4, 1
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v30, 6, v27
	v_dual_mov_b32 v19, 0 :: v_dual_lshlrev_b32 v32, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v31, 5, v28
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v18, 0
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s17, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 56, v8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s16, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s16
	s_mul_hi_u32 s6, s16, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s16, s16, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s16, s14, s16
	s_ashr_i32 s13, s6, 31
	s_mul_i32 s19, s16, s15
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	s_load_b64 s[20:21], s[0:1], 0x20
	s_cselect_b32 s15, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s16, s15, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s28, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s16, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s14, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s28, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s15, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s19, s18
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s14, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[4:5], null, s15, v2, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s28, s3
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v5, s15, v3
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s19, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s15, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v6
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s18, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s12, s22, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s28, 0x7f
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s17, s33, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s12, s12, s14
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s14, s17, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v4, s12, v4
	v_add3_u32 v5, v5, v1, s12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v7, 0x80000000, v4, s3
	v_cndmask_b32_e64 v9, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[4:5], v6, s[4:7], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[24:27], 0 offen
	buffer_load_b64 v[34:35], v9, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v9, 56, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s34, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s28, 0x100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v8, v8, v9
	v_mov_b32_e32 v9, 0
	v_add_nc_u32_e32 v33, 0, v8
	s_waitcnt vmcnt(2)
	ds_store_b64 v33, v[4:5] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[6:7], v[34:35] offset1:8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v4, 56, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s3, s16, 7
	v_lshl_or_b32 v9, s16, 8, v28
	v_or_b32_e32 v23, s3, v2
	s_lshl_b32 s16, s13, 8
	v_or3_b32 v11, v31, v4, v30
	v_add3_u32 v4, s33, v29, v27
	v_or_b32_e32 v3, s3, v3
	s_lshl_b32 s3, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v5, 32, v4
	v_add_nc_u32_e32 v35, s33, v2
	v_and_or_b32 v6, 0x438, v32, v30
	v_xor_b32_e32 v16, 8, v11
	v_xor_b32_e32 v17, 16, v11
	v_mul_lo_u32 v24, s34, v5
	v_subrev_nc_u32_e32 v5, s3, v23
	v_mul_lo_u32 v23, s34, v4
	v_subrev_nc_u32_e32 v4, s3, v3
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_mad_u64_u32 v[2:3], null, s15, v5, s[14:15]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[3:4], null, s15, v4, s[14:15]
	v_mad_u64_u32 v[4:5], null, s15, v35, s[14:15]
	v_xor_b32_e32 v10, 24, v6
	v_xor_b32_e32 v12, 32, v6
	v_xor_b32_e32 v13, 40, v6
	v_xor_b32_e32 v14, 48, v6
	v_xor_b32_e32 v15, 56, v6
	v_xor_b32_e32 v18, 24, v11
	v_xor_b32_e32 v19, 32, v11
	v_xor_b32_e32 v20, 40, v11
	v_xor_b32_e32 v21, 48, v11
	v_xor_b32_e32 v22, 56, v11
	v_sub_nc_u32_e32 v34, s15, v1
	v_subrev_nc_u32_e32 v35, s16, v9
	s_add_i32 s40, s14, 64
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_lshlrev_b32_e32 v36, 1, v24
	v_add3_u32 v38, v2, v1, 64
	v_add3_u32 v39, v3, v1, 64
	v_add3_u32 v40, v4, v1, 64
	v_add_nc_u32_e32 v41, 0, v6
	v_add_nc_u32_e32 v42, 0, v7
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v43, 0, v8
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v6, s17 :: v_dual_lshlrev_b32 v37, 1, v23
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v44, 0, v10
	v_mov_b32_e32 v5, s16
	v_add_nc_u32_e32 v45, 0, v12
	v_dual_mov_b32 v7, s18 :: v_dual_add_nc_u32 v46, 0, v13
	v_add_nc_u32_e32 v47, 0, v14
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v48, 0, v15
	v_add_nc_u32_e32 v49, 0, v11
	v_add_nc_u32_e32 v50, 0, v16
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v51, 0, v17
	v_add_nc_u32_e32 v52, 0, v18
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v53, 0, v19
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v54, 0, v20
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v55, 0, v21
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v56, 0, v22
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v4, s15
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	s_max_i32 s0, s1, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s3, s23, 1
	s_lshl_b32 s35, s0, 6
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	s_add_i32 s0, s40, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v57, s12, v40
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s0, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v60, 1, v26
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v58, s12, v38
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v59, s12, v39
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_add_i32 s12, s12, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v93, v60, v35
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v94, 0x80000000, v58, s0
	v_cndmask_b32_e64 v95, 0x80000000, v59, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s35, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[83:84], v57, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v96, v37, s[28:31], 0 offen
	buffer_load_u16 v97, v36, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v98, v93, s[36:39], 0 offen
	buffer_load_u16 v99, v93, s[36:39], 0 offen offset:4
	buffer_load_u16 v100, v93, s[36:39], 0 offen offset:8
	buffer_load_u16 v101, v93, s[36:39], 0 offen offset:12
	buffer_load_u16 v102, v93, s[36:39], 0 offen offset:16
	buffer_load_u16 v103, v93, s[36:39], 0 offen offset:20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[71:74], v41 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[85:86], v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[75:78], v42 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[87:88], v50
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[79:82], v43 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[89:90], v51
	ds_load_b64 v[91:92], v52
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[85:86], v[73:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[75:76], v[57:64] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v44 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[65:72], v[87:88], v[77:78], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[79:80], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[89:90], v[81:82], v[65:72] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[77:80], v45 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[81:82], v53
	ds_load_b64 v[85:86], v54
	ds_load_b64 v[87:88], v55
	ds_load_b64 v[89:90], v56
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[91:92], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v46 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[91:92], v94, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[81:82], v[79:80], v[65:72] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[77:78], v95, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[85:86], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v47 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[87:88], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v48 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[89:90], v[75:76], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v76, 16, v99
	v_lshlrev_b32_e32 v75, 16, v98
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v74, 16, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v68, v68, v74 :: v_dual_lshlrev_b32 v73, 16, v96
	v_mul_f32_e32 v62, v62, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v104, v93, s[36:39], 0 offen offset:24
	buffer_load_u16 v93, v93, s[36:39], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v57, v57, v73
	v_dual_mul_f32 v58, v58, v73 :: v_dual_add_nc_u32 v35, s3, v35
	v_mul_f32_e32 v64, v64, v73
	v_dual_mul_f32 v61, v61, v73 :: v_dual_add_nc_u32 v36, 2, v36
	v_mul_f32_e32 v59, v59, v73
	v_mul_f32_e32 v60, v60, v73
	v_dual_mul_f32 v63, v63, v73 :: v_dual_fmac_f32 v24, v58, v76
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v9, v57, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v66, v66, v74 :: v_dual_add_nc_u32 v37, 2, v37
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v70, v70, v74 :: v_dual_lshlrev_b32 v79, 16, v100
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v65, v65, v74 :: v_dual_lshlrev_b32 v80, 16, v101
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v81, 16, v102
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v67, v67, v74 :: v_dual_lshlrev_b32 v82, 16, v103
	v_dual_mul_f32 v71, v71, v74 :: v_dual_fmac_f32 v16, v66, v76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v23, v59, v79 :: v_dual_fmac_f32 v20, v62, v82
	v_dual_fmac_f32 v22, v60, v80 :: v_dual_fmac_f32 v17, v65, v75
	v_fmac_f32_e32 v12, v70, v82
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v33, v[83:84] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v33, v[91:92], v[77:78] offset1:8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v72, v72, v74
	v_dual_mul_f32 v69, v69, v74 :: v_dual_fmac_f32 v14, v68, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v13, v69, v81
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v85, 16, v104
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v86, 16, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v21, v61, v81
	v_fmac_f32_e32 v15, v67, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v19, v63, v85 :: v_dual_fmac_f32 v18, v64, v86
	v_dual_fmac_f32 v11, v71, v85 :: v_dual_fmac_f32 v10, v72, v86
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
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
	s_mov_b32 s12, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v39, 0x438, v32, v30
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v1, 56, v32
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v47, s19 :: v_dual_mov_b32 v42, s14
	v_mov_b32_e32 v46, s18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v7, v39, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_or3_b32 v30, v31, v1, v30
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v44, s16 :: v_dual_add_nc_u32 v1, 0, v39
	v_mov_b32_e32 v45, s17
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v33, v39, 16, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v5, v30, 8, 0
	v_add_nc_u32_e32 v6, 0, v30
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[1:4], v1 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[64:65], v5
	ds_load_b64 v[60:61], v6
	v_xad_u32 v31, v30, 24, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[5:8], v7 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v32, v30, 16, 0
	ds_load_b64 v[66:67], v31
	ds_load_b64 v[68:69], v32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[48:51], v33 offset0:16 offset1:20
	v_xad_u32 v31, v39, 24, 0
	v_xad_u32 v32, v39, 32, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v43, s15 :: v_dual_mov_b32 v40, s12
	v_mov_b32_e32 v41, s13
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v63, v30, 40, 0
	v_xad_u32 v72, v30, 32, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[52:55], v31 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[56:59], v32 offset0:16 offset1:20
	v_xad_u32 v62, v39, 40, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[70:71], v63
	ds_load_b64 v[72:73], v72
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[60:61], v[1:2], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[60:61], v[3:4], v[40:47] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v74, v39, 56, 0
	v_xad_u32 v39, v39, 48, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[64:65], v[5:6], v[31:38] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[1:4], v62 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[40:47], v[64:65], v[7:8], v[40:47] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v75, v30, 48, 0
	v_xad_u32 v5, v30, 56, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[60:63], v39 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[68:69], v[48:49], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[50:51], v[40:47] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[48:49], v75
	ds_load_b64 v[64:65], v5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[5:8], v74 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[66:67], v[52:53], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[66:67], v[54:55], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[72:73], v[56:57], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[72:73], v[58:59], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[70:71], v[1:2], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[70:71], v[3:4], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[48:49], v[60:61], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[62:63], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[64:65], v[5:6], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[64:65], v[7:8], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v2, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v33
	v_cvt_f32_i32_e32 v6, v34
	v_cvt_f32_i32_e32 v33, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v38
	v_cvt_f32_i32_e32 v3, v40
	v_cvt_f32_i32_e32 v5, v41
	v_cvt_f32_i32_e32 v7, v42
	v_cvt_f32_i32_e32 v8, v43
	v_cvt_f32_i32_e32 v34, v44
	v_cvt_f32_i32_e32 v36, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v40, v47
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v27, v29, v27
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v28, 1, v28
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s5, s9, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v29, 32, v27
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v26, v26, v28
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v28, s34, v27
	s_add_i32 s0, s0, s1
	s_mov_b32 s7, 0x31027000
	v_mul_lo_u32 v30, s34, v29
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_mov_b32 s4, s8
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v28, s0, v28, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s22, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v48, 0x7632
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v30, s0, v30, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v26, s3, v26, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v47, 0x5410
	v_mov_b16_e32 v49.h, v46.h
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 4, v26
	v_add_nc_u32_e32 v32, 8, v26
	v_cndmask_b32_e64 v41, 0x80000000, v26, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s5, s11, 0xffff
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	s_mov_b32 s4, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v46.h
	v_mov_b16_e32 v51.h, v46.h
	v_mov_b16_e32 v52.h, v46.h
	v_mov_b16_e32 v53.h, v46.h
	v_mov_b16_e32 v54.h, v46.h
	v_mov_b16_e32 v55.h, v46.h
	v_mov_b16_e32 v56.h, v46.h
	s_mov_b32 s0, 0x76543210
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v27, s23, v27
	s_mul_i32 s33, s33, s23
	v_mul_lo_u32 v29, s23, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, s7
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v30 :: v_dual_lshlrev_b32 v28, 16, v28
	v_dual_mul_f32 v1, v1, v28 :: v_dual_add_nc_u32 v42, 12, v26
	v_dual_mul_f32 v2, v2, v28 :: v_dual_add_nc_u32 v43, 16, v26
	v_dual_mul_f32 v33, v33, v28 :: v_dual_add_nc_u32 v44, 20, v26
	v_dual_mul_f32 v4, v4, v28 :: v_dual_add_nc_u32 v45, 24, v26
	v_dual_mul_f32 v35, v35, v28 :: v_dual_add_nc_u32 v26, 28, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x7
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v28 :: v_dual_and_b32 v25, 0x78, v25
	v_mul_f32_e32 v37, v37, v28
	v_mul_f32_e32 v28, v39, v28
	v_dual_mul_f32 v3, v3, v30 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v25, s33, s22, v25
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s22, s6
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v27, v25, v27, 1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v34, v34, v30 :: v_dual_lshlrev_b32 v39, 16, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v39, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, v2, v31, v24
	v_fma_f32 v4, v4, v32, v23
	v_fma_f32 v5, v5, v31, v16
	v_fma_f32 v3, v3, v39, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v9, v1, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v32, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v41, 16, v42
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(3)
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v42, 16, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v24, v2, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v34, v42, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v16, v5, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v38, v30
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v37, v44, v19
	v_fma_f32 v35, v35, v43, v20
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v4, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v41, v22
	v_fma_f32 v33, v33, v42, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v19, v37, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v41, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v20, v35, s2
	v_cndmask_b32_e64 v6, v22, v6, s2
	v_cndmask_b32_e64 v3, v17, v3, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v36, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v15, v7, s2
	v_cndmask_b32_e64 v13, v13, v31, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v15, v19, v19
	v_max_f32_e32 v5, v5, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v38, v44, v11
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v30, v40, v30 :: v_dual_max_f32 v7, v7, v7
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v21, v33, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v14, v8, s2
	v_cndmask_b32_e64 v11, v11, v34, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v14, v20, v20 :: v_dual_max_f32 v1, 0, v1
	v_max_f32_e32 v3, v3, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v36, v43, v12
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v7, 0, v7
	v_max_f32_e32 v9, v9, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v28, v26, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v12, v32, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v28, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v1.h
	v_mov_b16_e32 v49.l, v2.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v30, v26, v10
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v16, v18, v18 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v13, v13, v13
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v17, 1, v49
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v18, 1, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v10, v26, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v4.h
	v_add3_u32 v2, v2, v17, 0x7fff
	v_and_b32_e32 v17, 1, v46
	v_mov_b16_e32 v46.l, v14.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v19, 1, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v9.h
	v_add3_u32 v1, v1, v18, 0x7fff
	v_and_b32_e32 v18, 1, v46
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v15.h
	v_add3_u32 v4, v4, v19, 0x7fff
	v_mov_b16_e32 v46.l, v16.h
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v1, v6, v17, 0x7fff
	v_add3_u32 v6, v14, v18, 0x7fff
	v_and_b32_e32 v20, 1, v51
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v21, 1, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v3.h
	v_mov_b16_e32 v54.l, v7.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v9, v20, 0x7fff
	v_mov_b16_e32 v1.l, v4.h
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v5.h
	v_and_b32_e32 v22, 1, v53
	v_and_b32_e32 v23, 1, v54
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_add3_u32 v0, v16, v4, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v8.h
	v_add3_u32 v3, v3, v22, 0x7fff
	v_mov_b16_e32 v0.l, v15.h
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x1054, v47, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v48, vcc_lo
	v_add3_u32 v4, v5, v4, 0x7fff
	v_and_b32_e32 v5, 1, v46
	v_mov_b16_e32 v46.l, v12.h
	v_mov_b16_e32 v55.l, v13.h
	v_mov_b16_e32 v56.l, v11.h
	v_add3_u32 v7, v7, v23, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_dual_cndmask_b32 v3, v0, v1 :: v_dual_cndmask_b32 v0, v1, v0
	v_permlanex16_b32 v1, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v6, 8, v6
	v_lshl_or_b32 v6, v14, 8, v14
	v_add3_u32 v5, v8, v5, 0x7fff
	v_and_b32_e32 v8, 1, v46
	v_mov_b16_e32 v46.l, v10.h
	v_and_b32_e32 v24, 1, v55
	v_and_b32_e32 v26, 1, v56
	v_mov_b16_e32 v5.l, v7.h
	v_permlanex16_b32 v7, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v2
	v_and_b32_e32 v2, 0x760076, v6
	v_and_b32_e32 v6, 1, v46
	v_add3_u32 v13, v13, v24, 0x7fff
	v_add3_u32 v11, v11, v26, 0x7fff
	v_add3_u32 v8, v12, v8, 0x7fff
	v_lshl_or_b32 v0, v0, 4, v0
	v_add3_u32 v6, v10, v6, 0x7fff
	v_mov_b16_e32 v8.l, v13.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v6.l, v11.h
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v10, v8, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_and_b32_e32 v8, 0x5040504, v0
	v_and_b32_e32 v11, 0x7060706, v2
	v_cndmask_b32_e32 v2, v5, v6, vcc_lo
	v_cndmask_b32_e32 v12, v6, v5, vcc_lo
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v9, v8
	v_perm_b32 v1, v1, v9, v11
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v7, v3, v8
	v_perm_b32 v3, v7, v3, v11
	v_perm_b32 v4, v5, v10, v8
	v_perm_b32 v5, v5, v10, v11
	v_perm_b32 v6, v9, v12, v8
	v_perm_b32 v7, v9, v12, v11
	v_add_lshl_u32 v8, v25, v29, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v27, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 105
		.amdhsa_next_free_sgpr 41
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
		.amdhsa_inst_pref_size 35
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 105
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4460
; TotalNumSgprs: 43
; NumVgprs: 105
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 105
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     105
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
