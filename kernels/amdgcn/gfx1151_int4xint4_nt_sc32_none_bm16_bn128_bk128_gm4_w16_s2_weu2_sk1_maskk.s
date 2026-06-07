	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v2, v0, 4, 4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v9, 15, v0
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v10, 0x7f, v0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
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
	s_lshr_b32 s11, s11, 28
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
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s18
	s_xor_b32 s6, s2, s18
	s_cvt_f32_u32 s17, s7
	s_ashr_i32 s6, s6, 31
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v76, v0, 4, 1
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v78, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 12, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	v_and_b32_e32 v8, 0x77c, v8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_add_i32 s19, s5, 1
	s_sub_i32 s17, s10, s17
	s_mov_b32 s10, 0x7ffffffe
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s17, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s40, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s18
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s7, s3, 4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[5:6], null, s40, v3, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s7, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s7, v1
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v6, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s40, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s40, v7
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v7
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, v6, s40, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s18, 5
.Ltmp21:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s2, s26, s40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 31
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v4, s7, s2, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	s_and_b32 s16, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v6, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b32 v4, v4, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_bfe_i32 v7, v0, 5, 1
	v_mov_b32_e32 v70, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s20, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v6, v6, v10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v79, 0, v6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v80, 0, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v5 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v80, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v3, s17, 7, v3
	s_lshl_b32 s1, s6, 8
	s_lshl_b32 s6, s6, 7
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v4, 0x70, v78
	s_lshl_b32 s0, s17, 8
	v_subrev_nc_u32_e32 v3, s6, v3
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v5, s33, v9
	v_and_or_b32 v4, 0x88, v77, v4
	v_sub_nc_u32_e32 v81, s40, v1
	v_lshlrev_b32_e32 v82, 1, v76
	v_mad_u64_u32 v[10:11], null, s40, v3, v[1:2]
	v_mul_lo_u32 v5, s34, v5
	v_xor_b32_e32 v6, 8, v4
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v84, 0, v4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v72, 0
	v_mad_u64_u32 v[11:12], null, s40, v2, v[9:10]
	v_lshlrev_b32_e32 v83, 1, v5
	v_add_nc_u32_e32 v85, 0, v6
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s35, 1
	s_sub_i32 s42, s0, s1
	s_lshl_b32 s43, s27, 1
	s_add_i32 s44, s7, 16
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v88, s44, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v89, s44, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v87, s42, v82
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s44, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s1, s40, v88
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s43
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v88, 0x80000000, v89, s1
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v163, v83, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v164, v87, s[36:39], 0 offen
	buffer_load_u16 v165, v87, s[36:39], 0 offen offset:4
	buffer_load_u16 v166, v87, s[36:39], 0 offen offset:8
	buffer_load_u16 v167, v87, s[36:39], 0 offen offset:12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[103:106], v84 offset1:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[159:160], v84 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[119:122], v84 offset0:64 offset1:96
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[161:162], v85 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[135:138], v84 offset0:128 offset1:160
	ds_load_2addr_b64 v[129:132], v85 offset1:32
	ds_load_2addr_b64 v[139:142], v85 offset0:64 offset1:96
	ds_load_2addr_b64 v[143:146], v85 offset0:128 offset1:160
	ds_load_2addr_b64 v[151:154], v84 offset0:192 offset1:224
	ds_load_2addr_b64 v[155:158], v85 offset0:192 offset1:224
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v83, 2, v83
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[103:104], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[119:120], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[135:136], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[129:130], v[161:162], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[131:132], v[161:162], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[161:162], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[141:142], v[161:162], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[143:144], v[161:162], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[145:146], v[161:162], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[153:154], v[159:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[161:162], v[137:144] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[145:152], v[157:158], v[161:162], v[145:152] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v164
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v160, 16, v163
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v86, s44, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s44, 16
	s_cmp_lg_u32 s41, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v89, v160, v89
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v89, v161
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v91, v160, v91 :: v_dual_lshlrev_b32 v162, 16, v165
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v92, v160, v92 :: v_dual_lshlrev_b32 v163, 16, v166
	v_mul_f32_e32 v90, v160, v90
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v93, v160, v93 :: v_dual_lshlrev_b32 v164, 16, v167
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v91, v163
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x6
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:16
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:20
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:24
	buffer_load_u16 v156, v87, s[36:39], 0 offen offset:28
	buffer_load_u16 v157, v87, s[36:39], 0 offen offset:32
	buffer_load_u16 v158, v87, s[36:39], 0 offen offset:36
	buffer_load_u16 v159, v87, s[36:39], 0 offen offset:40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v90, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v90, v87, s[36:39], 0 offen offset:52
	buffer_load_u16 v162, v87, s[36:39], 0 offen offset:56
	buffer_load_u16 v91, v87, s[36:39], 0 offen offset:60
	buffer_load_u16 v163, v87, s[36:39], 0 offen offset:64
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v92, v164
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v92, v87, s[36:39], 0 offen offset:68
	buffer_load_u16 v164, v87, s[36:39], 0 offen offset:72
	buffer_load_u16 v89, v87, s[36:39], 0 offen offset:44
	buffer_load_u16 v161, v87, s[36:39], 0 offen offset:48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v160, v94
	v_mul_f32_e32 v95, v160, v95
	v_mul_f32_e32 v97, v160, v97
	v_mul_f32_e32 v99, v160, v99
	v_mul_f32_e32 v103, v160, v103
	v_mul_f32_e32 v105, v160, v105
	v_mul_f32_e32 v101, v160, v101
	v_mul_f32_e32 v114, v160, v114
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b32 v86, v86, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v96, v160, v96
	v_mul_f32_e32 v98, v160, v98
	v_mul_f32_e32 v106, v160, v106
	v_mul_f32_e32 v102, v160, v102
	v_mul_f32_e32 v100, v160, v100
	v_mul_f32_e32 v108, v160, v108
	v_mul_f32_e32 v104, v160, v104
	v_mul_f32_e32 v110, v160, v110
	v_mul_f32_e32 v116, v160, v116
	v_mul_f32_e32 v118, v160, v118
	v_mul_f32_e32 v119, v160, v119
	v_mul_f32_e32 v127, v160, v127
	v_mul_f32_e32 v115, v160, v115
	v_mul_f32_e32 v120, v160, v120
	v_mul_f32_e32 v121, v160, v121
	v_mul_f32_e32 v124, v160, v124
	v_mul_f32_e32 v126, v160, v126
	v_mul_f32_e32 v129, v160, v129
	v_mul_f32_e32 v130, v160, v130
	v_mul_f32_e32 v134, v160, v134
	v_mul_f32_e32 v117, v160, v117
	v_mul_f32_e32 v122, v160, v122
	v_mul_f32_e32 v123, v160, v123
	v_mul_f32_e32 v128, v160, v128
	v_mul_f32_e32 v136, v160, v136
	v_mul_f32_e32 v132, v160, v132
	v_mul_f32_e32 v138, v160, v138
	v_mul_f32_e32 v140, v160, v140
	v_mul_f32_e32 v125, v160, v125
	v_mul_f32_e32 v131, v160, v131
	v_mul_f32_e32 v133, v160, v133
	v_mul_f32_e32 v135, v160, v135
	v_mul_f32_e32 v142, v160, v142
	v_mul_f32_e32 v143, v160, v143
	v_mul_f32_e32 v148, v160, v148
	v_mul_f32_e32 v137, v160, v137
	v_mul_f32_e32 v141, v160, v141
	v_mul_f32_e32 v144, v160, v144
	v_mul_f32_e32 v145, v160, v145
	v_mul_f32_e32 v146, v160, v146
	v_mul_f32_e32 v150, v160, v150
	v_mul_f32_e32 v139, v160, v139
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v152, v160, v152 :: v_dual_lshlrev_b32 v153, 16, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v93, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v93, v87, s[36:39], 0 offen offset:76
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v71, v94, v154 :: v_dual_fmac_f32 v70, v95, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v94, v87, s[36:39], 0 offen offset:84
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:88
	buffer_load_u16 v95, v87, s[36:39], 0 offen offset:92
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:96
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v69, v96, v156 :: v_dual_lshlrev_b32 v158, 16, v158
	v_fmac_f32_e32 v68, v97, v157
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v96, v87, s[36:39], 0 offen offset:100
	buffer_load_u16 v156, v87, s[36:39], 0 offen offset:104
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v90, 16, v90
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v67, v98, v158
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v98, v87, s[36:39], 0 offen offset:116
	buffer_load_u16 v158, v87, s[36:39], 0 offen offset:120
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v92, 16, v92
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v62, v102, v90 :: v_dual_lshlrev_b32 v161, 16, v161
	v_fmac_f32_e32 v58, v106, v92
	v_dual_fmac_f32 v59, v105, v163 :: v_dual_lshlrev_b32 v164, 16, v164
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v63, v101, v161 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v107, v160, v107
	v_mul_f32_e32 v109, v160, v109
	v_mul_f32_e32 v111, v160, v111
	v_mul_f32_e32 v112, v160, v112
	v_mul_f32_e32 v113, v160, v113
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v97, v87, s[36:39], 0 offen offset:108
	buffer_load_u16 v157, v87, s[36:39], 0 offen offset:112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v66, v99, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v99, v87, s[36:39], 0 offen offset:124
	buffer_load_u16 v159, v87, s[36:39], 0 offen offset:128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v100, v89 :: v_dual_fmac_f32 v61, v103, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xb
	buffer_load_u16 v89, v87, s[36:39], 0 offen offset:132
	buffer_load_u16 v100, v87, s[36:39], 0 offen offset:136
	buffer_load_u16 v101, v87, s[36:39], 0 offen offset:140
	buffer_load_u16 v161, v87, s[36:39], 0 offen offset:144
	buffer_load_u16 v90, v87, s[36:39], 0 offen offset:148
	buffer_load_u16 v102, v87, s[36:39], 0 offen offset:152
	buffer_load_u16 v103, v87, s[36:39], 0 offen offset:156
	buffer_load_u16 v162, v87, s[36:39], 0 offen offset:160
	buffer_load_u16 v105, v87, s[36:39], 0 offen offset:172
	buffer_load_u16 v163, v87, s[36:39], 0 offen offset:176
	buffer_load_u16 v92, v87, s[36:39], 0 offen offset:180
	buffer_load_u16 v106, v87, s[36:39], 0 offen offset:184
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v56, v108, v93 :: v_dual_lshlrev_b32 v95, 16, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v104, v91 :: v_dual_fmac_f32 v57, v107, v164
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v91, v87, s[36:39], 0 offen offset:164
	buffer_load_u16 v104, v87, s[36:39], 0 offen offset:168
	buffer_load_u16 v107, v87, s[36:39], 0 offen offset:188
	buffer_load_u16 v164, v87, s[36:39], 0 offen offset:192
	buffer_load_u16 v93, v87, s[36:39], 0 offen offset:196
	buffer_load_u16 v108, v87, s[36:39], 0 offen offset:200
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v54, v110, v94 :: v_dual_fmac_f32 v55, v109, v153
	v_fmac_f32_e32 v52, v111, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v109, v87, s[36:39], 0 offen offset:204
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:208
	buffer_load_u16 v94, v87, s[36:39], 0 offen offset:212
	buffer_load_u16 v110, v87, s[36:39], 0 offen offset:216
	buffer_load_u16 v111, v87, s[36:39], 0 offen offset:220
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:224
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v53, v112, v95 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v95, v87, s[36:39], 0 offen offset:228
	buffer_load_u16 v112, v87, s[36:39], 0 offen offset:232
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v51, v114, v96 :: v_dual_lshlrev_b32 v98, 16, v98
	v_fmac_f32_e32 v50, v113, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x4
	buffer_load_u16 v113, v87, s[36:39], 0 offen offset:236
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:240
	buffer_load_u16 v96, v87, s[36:39], 0 offen offset:244
	buffer_load_u16 v114, v87, s[36:39], 0 offen offset:252
	buffer_load_u16 v87, v87, s[36:39], 0 offen offset:248
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v97, 16, v97
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v99, 16, v99
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v89, 16, v89
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v147, v160, v147 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v117, v157
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v149, v160, v149 :: v_dual_fmac_f32 v44, v119, v158
	v_dual_mul_f32 v151, v160, v151 :: v_dual_fmac_f32 v40, v123, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v48, v115, v156 :: v_dual_fmac_f32 v49, v116, v97
	v_dual_fmac_f32 v42, v121, v159 :: v_dual_fmac_f32 v47, v118, v98
	v_dual_fmac_f32 v38, v125, v161 :: v_dual_fmac_f32 v45, v120, v99
	v_dual_fmac_f32 v36, v127, v102 :: v_dual_fmac_f32 v43, v122, v89
	v_fmac_f32_e32 v34, v129, v162
	v_dual_fmac_f32 v39, v126, v90 :: v_dual_fmac_f32 v30, v133, v163
	v_dual_fmac_f32 v37, v128, v103 :: v_dual_fmac_f32 v28, v135, v106
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v79, v88 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_store_b32 v80, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v41, v124, v101 :: v_dual_lshlrev_b32 v112, 16, v112
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v32, v131, v104 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v130, v91 :: v_dual_fmac_f32 v26, v137, v164
	v_dual_fmac_f32 v33, v132, v105 :: v_dual_fmac_f32 v24, v139, v108
	v_dual_fmac_f32 v31, v134, v92 :: v_dual_fmac_f32 v22, v141, v153
	v_dual_fmac_f32 v29, v136, v107 :: v_dual_fmac_f32 v20, v143, v110
	v_dual_fmac_f32 v27, v138, v93 :: v_dual_fmac_f32 v18, v145, v154
	v_dual_fmac_f32 v25, v140, v109 :: v_dual_fmac_f32 v16, v147, v112
	v_dual_fmac_f32 v23, v142, v94 :: v_dual_fmac_f32 v14, v149, v155
	v_fmac_f32_e32 v21, v144, v111
	v_dual_fmac_f32 v19, v146, v95 :: v_dual_fmac_f32 v12, v152, v114
	v_fmac_f32_e32 v17, v148, v113
	v_fmac_f32_e32 v15, v150, v96
	v_fmac_f32_e32 v13, v151, v87
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow484
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v3, 0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v143, s11 :: v_dual_and_b32 v2, 0x70, v78
	v_dual_mov_b32 v142, s10 :: v_dual_mov_b32 v139, s7
	v_mov_b32_e32 v141, s9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v2, 0x88, v77, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v140, s8 :: v_dual_mov_b32 v137, s5
	v_mov_b32_e32 v138, s6
	v_mov_b32_e32 v136, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v8, 0, v2
	v_xad_u32 v77, v2, 8, 0
	ds_load_2addr_b64 v[2:5], v8 offset1:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[6:7], v8 offset:2048
	ds_load_b64 v[10:11], v77 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[101:104], v8 offset0:64 offset1:96
	ds_load_2addr_b64 v[105:108], v8 offset0:128 offset1:160
	ds_load_2addr_b64 v[109:112], v8 offset0:192 offset1:224
	ds_load_2addr_b64 v[113:116], v77 offset1:32
	ds_load_2addr_b64 v[117:120], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[121:124], v77 offset0:192 offset1:224
	ds_load_2addr_b64 v[125:128], v77 offset0:128 offset1:160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[2:3], v[6:7], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[4:5], v[6:7], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[101:102], v[6:7], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[103:104], v[6:7], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[105:106], v[6:7], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[107:108], v[6:7], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[109:110], v[6:7], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[111:112], v[6:7], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[10:11], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[10:11], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[117:118], v[10:11], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[119:120], v[10:11], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[125:126], v[10:11], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[127:128], v[10:11], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[121:122], v[10:11], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[123:124], v[10:11], v[136:143] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v132, v79
	v_cvt_f32_i32_e32 v133, v80
	v_cvt_f32_i32_e32 v129, v81
	v_cvt_f32_i32_e32 v130, v82
	v_cvt_f32_i32_e32 v125, v83
	v_cvt_f32_i32_e32 v126, v84
	v_cvt_f32_i32_e32 v123, v85
	v_cvt_f32_i32_e32 v127, v86
	v_cvt_f32_i32_e32 v122, v87
	v_cvt_f32_i32_e32 v124, v88
	v_cvt_f32_i32_e32 v118, v89
	v_cvt_f32_i32_e32 v121, v90
	v_cvt_f32_i32_e32 v119, v91
	v_cvt_f32_i32_e32 v120, v92
	v_cvt_f32_i32_e32 v115, v93
	v_cvt_f32_i32_e32 v117, v94
	v_cvt_f32_i32_e32 v114, v95
	v_cvt_f32_i32_e32 v116, v96
	v_cvt_f32_i32_e32 v112, v97
	v_cvt_f32_i32_e32 v113, v98
	v_cvt_f32_i32_e32 v110, v99
	v_cvt_f32_i32_e32 v111, v100
	v_cvt_f32_i32_e32 v108, v144
	v_cvt_f32_i32_e32 v109, v145
	v_cvt_f32_i32_e32 v106, v146
	v_cvt_f32_i32_e32 v107, v147
	v_cvt_f32_i32_e32 v104, v148
	v_cvt_f32_i32_e32 v105, v149
	v_cvt_f32_i32_e32 v102, v150
	v_cvt_f32_i32_e32 v103, v151
	v_cvt_f32_i32_e32 v100, v152
	v_cvt_f32_i32_e32 v101, v153
	v_cvt_f32_i32_e32 v98, v154
	v_cvt_f32_i32_e32 v99, v155
	v_cvt_f32_i32_e32 v96, v156
	v_cvt_f32_i32_e32 v97, v157
	v_cvt_f32_i32_e32 v94, v158
	v_cvt_f32_i32_e32 v95, v159
	v_cvt_f32_i32_e32 v92, v160
	v_cvt_f32_i32_e32 v93, v161
	v_cvt_f32_i32_e32 v90, v162
	v_cvt_f32_i32_e32 v91, v163
	v_cvt_f32_i32_e32 v88, v164
	v_cvt_f32_i32_e32 v89, v165
	v_cvt_f32_i32_e32 v86, v166
	v_cvt_f32_i32_e32 v87, v167
	v_cvt_f32_i32_e32 v84, v168
	v_cvt_f32_i32_e32 v85, v169
	v_cvt_f32_i32_e32 v82, v170
	v_cvt_f32_i32_e32 v83, v171
	v_cvt_f32_i32_e32 v80, v172
	v_cvt_f32_i32_e32 v81, v173
	v_cvt_f32_i32_e32 v11, v174
	v_cvt_f32_i32_e32 v79, v175
	v_cvt_f32_i32_e32 v8, v136
	v_cvt_f32_i32_e32 v10, v137
	v_cvt_f32_i32_e32 v6, v138
	v_cvt_f32_i32_e32 v7, v139
	v_cvt_f32_i32_e32 v4, v140
	v_cvt_f32_i32_e32 v5, v141
	v_cvt_f32_i32_e32 v3, v142
	v_cvt_f32_i32_e32 v2, v143
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v77, s34, v9
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s27
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v77, s0, v77, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s20, s12
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v128, s0, v76, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v159, s27, v9
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v76, 0x80000000, v77, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v128, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v136, v76, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s27, s23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v137, v77, s[20:23], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 4, v128
	v_add_nc_u32_e32 v76, 12, v128
	v_add_nc_u32_e32 v134, 24, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v129, v9 :: v_dual_add_nc_u32 v138, 16, v128
	v_dual_mul_f32 v132, v132, v9 :: v_dual_add_nc_u32 v77, 8, v128
	v_dual_mul_f32 v130, v130, v9 :: v_dual_add_nc_u32 v139, 20, v128
	v_mul_f32_e32 v135, v135, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v131, v131, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v133, v133, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x4
	buffer_load_u16 v78, v78, s[20:23], 0 offen
	buffer_load_u16 v140, v76, s[20:23], 0 offen
	buffer_load_u16 v141, v134, s[20:23], 0 offen
	buffer_load_u16 v138, v138, s[20:23], 0 offen
	buffer_load_u16 v142, v77, s[20:23], 0 offen
	v_cndmask_b32_e64 v76, 0x80000000, v139, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v126, v126, v9 :: v_dual_add_nc_u32 v77, 36, v128
	v_dual_mul_f32 v125, v125, v9 :: v_dual_add_nc_u32 v134, 56, v128
	v_mul_f32_e32 v127, v127, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v139, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 28, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v123, v123, v9 :: v_dual_add_nc_u32 v144, 48, v128
	v_dual_mul_f32 v122, v122, v9 :: v_dual_add_nc_u32 v145, 40, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v124, v124, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v143, v76, s[20:23], 0 offen
	v_cndmask_b32_e64 v76, 0x80000000, v77, s2
	v_add_nc_u32_e32 v77, 32, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v121, v121, v9
	v_dual_mul_f32 v119, v119, v9 :: v_dual_add_nc_u32 v152, 0x50, v128
	v_mul_f32_e32 v111, v111, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v146, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 44, v128
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v117, v117, v9
	v_dual_mul_f32 v120, v120, v9 :: v_dual_add_nc_u32 v153, 0x48, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x4
	buffer_load_u16 v147, v134, s[20:23], 0 offen
	buffer_load_u16 v144, v144, s[20:23], 0 offen
	buffer_load_u16 v145, v145, s[20:23], 0 offen
	buffer_load_u16 v148, v77, s[20:23], 0 offen
	buffer_load_u16 v149, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 52, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v113, v113, v9 :: v_dual_add_nc_u32 v134, 0x58, v128
	v_dual_mul_f32 v118, v118, v9 :: v_dual_add_nc_u32 v77, 64, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v115, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	buffer_load_u16 v150, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 60, v128
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v109, v9 :: v_dual_add_nc_u32 v154, 0x4c, v128
	v_mul_f32_e32 v116, v116, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v105, v105, v9 :: v_dual_add_nc_u32 v136, 0x60, v128
	v_dual_mul_f32 v114, v114, v9 :: v_dual_add_nc_u32 v161, 0x64, v128
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v151, v76, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v107, v107, v9 :: v_dual_add_nc_u32 v76, 0x44, v128
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v137, 16, v137
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x4
	buffer_load_u16 v155, v76, s[20:23], 0 offen
	buffer_load_u16 v134, v134, s[20:23], 0 offen
	buffer_load_u16 v152, v152, s[20:23], 0 offen
	buffer_load_u16 v153, v153, s[20:23], 0 offen
	buffer_load_u16 v156, v77, s[20:23], 0 offen
	v_cndmask_b32_e64 v76, 0x80000000, v154, s2
	v_add_nc_u32_e32 v77, 0x5c, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v137, v135, v137, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v135, v136, s[20:23], 0 offen
	buffer_load_u16 v136, v161, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v10, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v154, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 0x54, v128
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v137, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v137, 0xa8, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v103, v103, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x1
	buffer_load_u16 v157, v76, s[20:23], 0 offen
	buffer_load_u16 v158, v77, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v77.h, 0
	v_mov_b16_e32 v77.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v76, 1, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v101, v101, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v160.h, v77.h
	v_mov_b16_e64 v162.h, v77.h
	v_mov_b16_e64 v164.h, v77.h
	v_mov_b16_e64 v163.h, v77.h
	v_mov_b16_e64 v161.h, v77.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v99, v99, v9
	v_mul_f32_e32 v97, v97, v9
	v_mul_f32_e32 v112, v112, v9
	v_mul_f32_e32 v94, v94, v9
	v_mul_f32_e32 v8, v8, v9
	v_mul_f32_e32 v3, v3, v9
	v_mul_f32_e32 v6, v6, v9
	v_mul_f32_e32 v110, v110, v9
	v_mul_f32_e32 v108, v108, v9
	v_mul_f32_e32 v4, v4, v9
	v_mul_f32_e32 v106, v106, v9
	v_mul_f32_e32 v2, v2, v9
	v_mul_f32_e32 v104, v104, v9
	v_mul_f32_e32 v11, v11, v9
	v_mul_f32_e32 v102, v102, v9
	v_mul_f32_e32 v5, v5, v9
	v_mul_f32_e32 v100, v100, v9
	v_mul_f32_e32 v7, v7, v9
	v_mul_f32_e32 v98, v98, v9
	v_mul_f32_e32 v96, v96, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v131, v78, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 0x68, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v133, v140, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v140, 0x6c, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v132, v142, v74
	v_fma_f32 v129, v129, v138, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_add_nc_u32_e32 v138, 0x70, v128
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x1
	buffer_load_u16 v142, v78, s[20:23], 0 offen
	buffer_load_u16 v140, v140, s[20:23], 0 offen
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v131, v75, v131, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v75, 0xa4, v128
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v78, 16, v143
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v132, v74, v132, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v74, 0xac, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v130, v139, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v126, v126, v78, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 0x74, v128
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v143, 16, v146
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v125, v141, v70
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v147, 16, v147
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v146, 16, v148
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v148, 16, v149
	s_clause 0x1
	buffer_load_u16 v138, v138, s[20:23], 0 offen
	buffer_load_u16 v149, v78, s[20:23], 0 offen
	v_add_nc_u32_e32 v78, 0x78, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v119, v119, v147, v61
	v_fma_f32 v123, v123, v146, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v146, 0x7c, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v124, v124, v148, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_add_nc_u32_e32 v147, 0x84, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v127, v143, v67
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v148, 16, v150
	s_clause 0x1
	buffer_load_u16 v150, v78, s[20:23], 0 offen
	buffer_load_u16 v146, v146, s[20:23], 0 offen
	v_lshlrev_b32_e32 v78, 16, v144
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v122, v122, v145, v66
	v_fma_f32 v121, v121, v148, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v133, v72, v133, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v118, v118, v78, v63
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v78, s33, s26, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v144, 16, v151
	v_add_nc_u32_e32 v72, 0xb0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v129, v73, v129, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v73, 0xb4, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v130, v71, v130, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v120, v144, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v144, 0x80, v128
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v155, 16, v155
	v_add_nc_u32_e32 v71, 0xb8, v128
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v153, 16, v153
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v117, v117, v155, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v155, 0x88, v128
	s_clause 0x1
	buffer_load_u16 v144, v144, s[20:23], 0 offen
	buffer_load_u16 v147, v147, s[20:23], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v115, v156, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v156, 0x8c, v128
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v114, v153, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v153, 0x94, v128
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x1
	buffer_load_u16 v155, v155, s[20:23], 0 offen
	buffer_load_u16 v156, v156, s[20:23], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v116, v116, v154, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v154, 0x90, v128
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v157, 16, v157
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v112, v112, v152, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v152, 0x9c, v128
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v113, v113, v157, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v157, 0x98, v128
	s_clause 0x1
	buffer_load_u16 v154, v154, s[20:23], 0 offen
	buffer_load_u16 v153, v153, s[20:23], 0 offen
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	s_clause 0x1
	buffer_load_u16 v157, v157, s[20:23], 0 offen
	buffer_load_u16 v152, v152, s[20:23], 0 offen
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v167, v55, v112, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v55, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v125, v70, v125, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v70, 0xbc, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v158, v111, v158, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v111, 0xa0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v126, v69, v126, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v69, 0xc0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v123, v68, v123, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v68, 0xc4, v128
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	s_clause 0x1
	buffer_load_u16 v159, v111, s[20:23], 0 offen
	buffer_load_u16 v165, v75, s[20:23], 0 offen
	v_cndmask_b32_e64 v111, 0x80000000, v137, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v127, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v127, 0xc8, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v122, v66, v122, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v66, 0xcc, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v124, v64, v124, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v64, 0xd0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v118, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v118, 0xd4, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v121, v62, v121, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v62, 0xd8, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v119, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v119, 0xdc, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v120, v60, v120, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v60, 0xe0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v115, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v115, 0xe4, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v117, v58, v117, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v58, 0xe8, v128
	v_add_nc_u32_e32 v75, 0xec, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v166, v56, v116, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v56, 0xf0, v128
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v168, v54, v113, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v54, 0xf4, v128
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v169, v65, v55, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v55, 0xf8, v128
	v_add_nc_u32_e32 v65, 0xfc, v128
	s_clause 0x1
	buffer_load_u16 v128, v111, s[20:23], 0 offen
	buffer_load_u16 v137, v74, s[20:23], 0 offen
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v74, 0x80000000, v127, s2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v114, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v60, 0x80000000, v60, s2
	v_cndmask_b32_e64 v127, 0x80000000, v115, s2
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	v_cndmask_b32_e64 v170, 0x80000000, v75, s2
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	v_cndmask_b32_e64 v171, 0x80000000, v65, s2
	s_clause 0x13
	buffer_load_u16 v172, v72, s[20:23], 0 offen
	buffer_load_u16 v173, v73, s[20:23], 0 offen
	buffer_load_u16 v115, v71, s[20:23], 0 offen
	buffer_load_u16 v116, v70, s[20:23], 0 offen
	buffer_load_u16 v113, v69, s[20:23], 0 offen
	buffer_load_u16 v114, v68, s[20:23], 0 offen
	buffer_load_u16 v111, v74, s[20:23], 0 offen
	buffer_load_u16 v112, v66, s[20:23], 0 offen
	buffer_load_u16 v74, v64, s[20:23], 0 offen
	buffer_load_u16 v75, v118, s[20:23], 0 offen
	buffer_load_u16 v72, v62, s[20:23], 0 offen
	buffer_load_u16 v73, v119, s[20:23], 0 offen
	buffer_load_u16 v70, v60, s[20:23], 0 offen
	buffer_load_u16 v71, v127, s[20:23], 0 offen
	buffer_load_u16 v68, v58, s[20:23], 0 offen
	buffer_load_u16 v69, v170, s[20:23], 0 offen
	buffer_load_u16 v65, v56, s[20:23], 0 offen
	buffer_load_u16 v66, v54, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v54, v171, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v160.l, v131.h
	v_mov_b16_e64 v162.l, v132.h
	v_mov_b16_e64 v77.l, v133.h
	v_mov_b16_e64 v139.h, v77.h
	v_cmp_o_f32_e64 s0, v131, v131
	v_and_b32_e32 v56, 1, v160
	v_mov_b16_e64 v139.l, v122.h
	v_and_b32_e32 v58, 1, v162
	v_cmp_o_f32_e64 s3, v132, v132
	v_mov_b16_e64 v164.l, v125.h
	v_add3_u32 v56, v131, v56, 0x7fff
	v_and_b32_e32 v131, 1, v77
	v_mov_b16_e64 v77.l, v130.h
	v_and_b32_e32 v119, 1, v139
	v_add3_u32 v58, v132, v58, 0x7fff
	v_mov_b16_e64 v141.h, v77.h
	v_cmp_o_f32_e64 s11, v122, v122
	v_and_b32_e32 v132, 1, v77
	v_mov_b16_e32 v77.l, v126.h
	v_mov_b16_e64 v141.l, v63.h
	v_and_b32_e32 v62, 1, v164
	v_add3_u32 v119, v122, v119, 0x7fff
	v_cmp_o_f32_e64 s7, v125, v125
	v_and_b32_e32 v122, 1, v77
	v_mov_b16_e32 v77.l, v67.h
	v_and_b32_e32 v127, 1, v141
	v_add3_u32 v62, v125, v62, 0x7fff
	v_mov_b16_e64 v163.l, v129.h
	v_cmp_o_f32_e64 s13, v63, v63
	v_and_b32_e32 v125, 1, v77
	v_mov_b16_e32 v77.l, v124.h
	v_add3_u32 v63, v63, v127, 0x7fff
	v_mov_b16_e64 v145.h, v77.h
	v_mov_b16_e64 v145.l, v59.h
	v_and_b32_e32 v60, 1, v163
	v_and_b32_e32 v127, 1, v77
	v_mov_b16_e32 v77.l, v121.h
	v_cndmask_b16 v58.l, 0x7fff, v119.h, s11
	v_cmp_o_f32_e64 s5, v129, v129
	v_mov_b16_e64 v161.l, v123.h
	v_and_b32_e32 v139, 1, v145
	v_and_b32_e32 v119, 1, v77
	v_mov_b16_e32 v77.l, v120.h
	v_add3_u32 v60, v129, v60, 0x7fff
	v_cmp_o_f32_e64 s8, v67, v67
	v_cmp_o_f32_e64 s17, v59, v59
	v_and_b32_e32 v64, 1, v161
	v_and_b32_e32 v129, 1, v77
	v_mov_b16_e32 v77.l, v117.h
	v_add3_u32 v59, v59, v139, 0x7fff
	v_add3_u32 v67, v67, v125, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v118, 16, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s9, v123, v123
	v_and_b32_e32 v125, 1, v77
	v_mov_b16_e64 v77.l, v166.h
	v_cmp_o_f32_e64 s12, v121, v121
	v_add3_u32 v64, v123, v64, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v59.h, s17
	v_cndmask_b16 v59.h, 0x7fff, v67.h, s8
	v_and_b32_e32 v67, 1, v77
	v_add3_u32 v119, v121, v119, 0x7fff
	v_mov_b16_e64 v77.l, v168.h
	v_cndmask_b16 v59.l, 0x7fff, v64.h, s9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v110, v118, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s14, v120, v120
	v_cndmask_b16 v64.h, 0x7fff, v119.h, s12
	v_and_b32_e32 v119, 1, v77
	v_cndmask_b16 v56.l, 0x7fff, v169.h, vcc_lo
	v_add3_u32 v120, v120, v129, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v158, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v118, v168, v119, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v110, v52, v110, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v151.h, v77.h
	v_cmp_o_f32_e64 s16, v117, v117
	v_mov_b16_e64 v151.l, v167.h
	v_cndmask_b16 v64.l, 0x7fff, v63.h, s13
	v_add3_u32 v117, v117, v125, 0x7fff
	v_cndmask_b16 v63.h, 0x7fff, v120.h, s14
	v_cndmask_b16 v52.h, 0x7fff, v118.h, vcc_lo
	v_mov_b16_e32 v77.l, v53.h
	v_mov_b16_e32 v118.l, v110.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v135
	v_lshlrev_b32_e32 v120, 16, v136
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v118.h, v77.h
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s7
	v_cndmask_b16 v62.h, 0x7fff, v117.h, s16
	v_and_b32_e32 v117, 1, v151
	v_and_b32_e32 v121, 1, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v109, v120, v51
	v_fma_f32 v108, v108, v119, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v118
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s0
	v_add3_u32 v117, v167, v117, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_add3_u32 v119, v53, v121, 0x7fff
	v_cmp_o_f32_e64 s0, v53, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v109, s2
	v_cndmask_b32_e64 v53, v50, v108, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v108, v110, v118, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v117.h, vcc_lo
	v_mov_b16_e32 v109.h, v77.h
	v_mov_b16_e32 v77.l, v51.h
	v_mov_b16_e32 v109.l, v53.h
	v_cndmask_b16 v50.h, 0x7fff, v119.h, s0
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cmp_o_f32_e64 s0, v51, v51
	v_and_b32_e32 v119, 1, v77
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e64 v148.h, v77.h
	v_cndmask_b16 v50.l, 0x7fff, v108.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v110, v51, v119, 0x7fff
	v_mov_b16_e64 v148.l, v57.h
	v_cmp_o_f32_e64 s1, v133, v133
	v_cmp_o_f32_e64 s19, v57, v57
	v_mov_b16_e64 v143.h, v77.h
	v_mov_b16_e64 v143.l, v61.h
	v_and_b32_e32 v141, 1, v148
	v_cmp_o_f32_e64 s4, v130, v130
	v_cmp_o_f32_e64 s6, v126, v126
	v_cmp_o_f32_e64 s10, v124, v124
	v_cmp_o_f32_e64 s15, v61, v61
	v_add3_u32 v123, v57, v141, 0x7fff
	v_add3_u32 v57, v133, v131, 0x7fff
	v_cmp_o_f32_e64 s18, v166, v166
	v_add3_u32 v130, v130, v132, 0x7fff
	v_add3_u32 v122, v126, v122, 0x7fff
	v_add3_u32 v124, v124, v127, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s1
	v_add3_u32 v67, v166, v67, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s3
	v_cndmask_b16 v67.l, 0x7fff, v123.h, s19
	v_cndmask_b16 v58.h, 0x7fff, v124.h, s10
	s_mov_b32 s26, s22
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v117, 16, v142
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v118, 16, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v106, v106, v117, v48
	v_fma_f32 v107, v107, v118, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v48, v106, s2
	v_cndmask_b32_e64 v49, v49, v107, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v106, v53, v109, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v110.h, s0
	v_mov_b16_e32 v107.h, v77.h
	v_mov_b16_e32 v107.l, v51.h
	v_mov_b16_e32 v77.l, v49.h
	v_cmp_o_f32_e64 s0, v49, v49
	v_cndmask_b16 v48.l, 0x7fff, v106.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v108, 16, v138
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v109, 16, v149
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v110, 1, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v104, v104, v108, v46
	v_fma_f32 v53, v105, v109, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v105, 1, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v107, v49, v110, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v46, v104, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v47, v47, v53, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v51, v105, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v105, 16, v150
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v106, 16, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v104.l, v49.h
	v_mov_b16_e32 v77.l, v47.h
	v_mov_b16_e32 v104.h, v77.h
	v_cndmask_b16 v46.h, 0x7fff, v107.h, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v103, v106, v45
	v_fma_f32 v102, v102, v105, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v107, 1, v77
	v_and_b32_e32 v103, 1, v104
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v51, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v46.l, 0x7fff, v53.h, vcc_lo
	v_add3_u32 v104, v47, v107, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v44, v102, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v49, v103, 0x7fff
	v_mov_b16_e32 v77.l, v45.h
	v_mov_b16_e32 v53.h, v77.h
	v_cndmask_b16 v44.h, 0x7fff, v104.h, s0
	v_mov_b16_e32 v53.l, v47.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v104, 1, v77
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v102, 16, v144
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v103, 16, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v53
	v_cndmask_b16 v44.l, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v100, v100, v102, v42
	v_fma_f32 v49, v101, v103, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v45, v104, 0x7fff
	v_mov_b16_e32 v51.h, v77.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v42, v100, s2
	v_cndmask_b32_e64 v43, v43, v49, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v100, 16, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v47, v53, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v101.h, s0
	v_mov_b16_e32 v51.l, v45.h
	v_mov_b16_e32 v77.l, v43.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v99, v100, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v53, 16, v155
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v43, v43
	v_and_b32_e32 v51, 1, v51
	v_and_b32_e32 v101, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v41, v47, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v98, v53, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v47, v45, v51, 0x7fff
	v_add3_u32 v98, v43, v101, 0x7fff
	v_mov_b16_e32 v77.l, v41.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v40, v53, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v51, 16, v154
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v53, 16, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v98.h, s0
	v_and_b32_e32 v98, 1, v77
	v_mov_b16_e32 v49.l, v43.h
	v_mov_b16_e32 v49.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v45, v97, v53, v39
	v_fma_f32 v51, v96, v51, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v41, v98, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v49, 1, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v45, s2
	v_cndmask_b32_e64 v38, v38, v51, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v51, 16, v152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v95, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v47.h, vcc_lo
	v_add3_u32 v41, v43, v49, 0x7fff
	v_mov_b16_e32 v77.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v53, v51, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.l, v38.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v49, 16, v157
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.h, v77.h
	v_and_b32_e32 v95, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v94, v49, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v51, v39, v95, 0x7fff
	v_mov_b16_e32 v77.l, v37.h
	v_cndmask_b16 v45.l, 0x7fff, v41.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v38, v47, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v51.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v47, 16, v159
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v49, 16, v165
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v93, v9
	v_mul_f32_e32 v53, v92, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v92, 1, v77
	v_mov_b16_e32 v43.l, v36.h
	v_mov_b16_e32 v43.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v51, v49, v35
	v_fma_f32 v47, v53, v47, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v37, v92, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	v_and_b32_e32 v43, 1, v43
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v38, s2
	v_cndmask_b32_e64 v34, v34, v47, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v47, 16, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v49.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v91, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v37, v36, v43, 0x7fff
	v_mov_b16_e32 v77.l, v35.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v49, v47, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v34.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v90, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v77.h
	v_and_b32_e32 v53, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v33, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v51, v43, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v47, v35, v53, 0x7fff
	v_mov_b16_e32 v77.l, v33.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v88, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v34, v39, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v47.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v39, 16, v172
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v43, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v89, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v77
	v_cndmask_b16 v38.l, 0x7fff, v37.h, vcc_lo
	v_mov_b16_e32 v37.l, v32.h
	v_mov_b16_e32 v37.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v47, v43, v31
	v_fma_f32 v39, v49, v39, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v33, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v33, v33
	v_and_b32_e32 v37, 1, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v34, s2
	v_cndmask_b32_e64 v30, v30, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v39, 16, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v87, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v35.h, vcc_lo
	v_add3_u32 v33, v32, v37, 0x7fff
	v_mov_b16_e32 v77.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v43, v39, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.l, v30.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v37, 16, v115
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v86, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.h, v77.h
	v_and_b32_e32 v49, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v47, v37, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v39, v31, v49, 0x7fff
	v_mov_b16_e32 v77.l, v29.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v84, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v28, v37, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v30, v35, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v35, 16, v113
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v37, 16, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v85, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v77
	v_cndmask_b16 v34.l, 0x7fff, v33.h, vcc_lo
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v39, v37, v27
	v_fma_f32 v35, v43, v35, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v29, v47, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_and_b32_e32 v33, 1, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v27, v30, s2
	v_cndmask_b32_e64 v26, v26, v35, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v35, 16, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v37.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v83, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v29, v28, v33, 0x7fff
	v_mov_b16_e32 v77.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v37, v35, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v26.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v111
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v82, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v77.h
	v_and_b32_e32 v43, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v25, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v39, v33, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v35, v27, v43, 0x7fff
	v_mov_b16_e32 v77.l, v25.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v80, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v24, v33, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v26, v31, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v35.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v31, 16, v74
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v33, 16, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v35, v81, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v77
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v29.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v35, v33, v23
	v_fma_f32 v31, v37, v31, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v25, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_and_b32_e32 v29, 1, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v26, s2
	v_cndmask_b32_e64 v22, v22, v31, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v31, 16, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v33.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v79, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v25, v24, v29, 0x7fff
	v_mov_b16_e32 v77.l, v23.h
	v_mov_b16_e32 v27.l, v22.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v29, 16, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v33, v31, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v29, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v27
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v21, v24, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v23, v35, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v20, v11, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v20, v22, v27, 0x7fff
	v_mov_b16_e32 v77.l, v21.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v70
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s0
	v_mov_b16_e32 v24.l, v11.h
	v_mov_b16_e32 v24.h, v77.h
	v_and_b32_e32 v29, 1, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v27, v19
	v_fma_f32 v8, v8, v25, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_and_b32_e32 v22, 1, v24
	v_add3_u32 v24, v21, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v19, v10, s2
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v21, 16, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v20.h, v77.h
	v_mov_b16_e32 v77.l, v10.h
	v_mov_b16_e32 v20.l, v8.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v21, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v11, v22, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v77
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v11, 1, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v22, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v10, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_cndmask_b16 v19.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v10, v8, v11, 0x7fff
	v_mov_b16_e32 v16.l, v6.h
	v_mov_b16_e32 v16.h, v77.h
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v8, 16, v66
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v18, 16, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v11.l, 0x7fff, v10.h, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v8, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v77.l, v7.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v18, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v6, v16, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v54
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v15, 16, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v16, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v15, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v7, v17, 0x7fff
	v_mov_b16_e32 v77.l, v5.h
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v77.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v13, v3, s2
	v_cndmask_b32_e64 v2, v12, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.h, 0x7fff, v20.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	v_and_b32_e32 v6, 1, v77
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v77.h
	v_mov_b16_e32 v77.l, v2.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s0
	v_add3_u32 v7, v4, v7, 0x7fff
	v_and_b32_e32 v8, 1, v9
	v_and_b32_e32 v9, 1, v77
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v4, v3, v8, 0x7fff
	v_add3_u32 v5, v2, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e64 s2, v3, v3
	v_cndmask_b16 v2.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v29, v32, v36, vcc_lo
	v_dual_cndmask_b32 v31, v36, v32 :: v_dual_cndmask_b32 v32, v30, v34
	v_dual_cndmask_b32 v30, v34, v30 :: v_dual_cndmask_b32 v33, v23, v28
	v_dual_cndmask_b32 v23, v28, v23 :: v_dual_cndmask_b32 v28, v19, v26
	v_cndmask_b32_e32 v19, v26, v19, vcc_lo
	v_cndmask_b32_e32 v34, v2, v11, vcc_lo
	v_dual_cndmask_b32 v2, v11, v2 :: v_dual_mov_b32 v11, 0x5410
	v_mov_b32_e32 v26, 0x7632
	v_dual_cndmask_b32 v35, v1, v10 :: v_dual_and_b32 v134, 1, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, v10, v1 :: v_dual_cndmask_b32 v10, 0x1054, v11
	v_cndmask_b32_e32 v11, 0x3276, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v61, v61, v134, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v60.h, s5
	v_cndmask_b16 v60.h, 0x7fff, v122.h, s6
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b16 v63.l, 0x7fff, v61.h, s15
	v_cndmask_b16 v61.h, 0x7fff, v130.h, s4
	v_cndmask_b32_e32 v6, v57, v60, vcc_lo
	v_and_b32_e32 v10, 0x540054, v10
	v_dual_cndmask_b32 v8, v59, v64 :: v_dual_and_b32 v11, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, v56, v61, vcc_lo
	v_cndmask_b32_e32 v12, v58, v63, vcc_lo
	v_cndmask_b32_e32 v16, v67, v50, vcc_lo
	v_cndmask_b32_e32 v21, v46, v42, vcc_lo
	v_cndmask_b32_e32 v27, v45, v38, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e32 v3, v61, v56, vcc_lo
	v_cndmask_b32_e32 v5, v60, v57, vcc_lo
	v_cndmask_b32_e32 v7, v64, v59, vcc_lo
	v_cndmask_b32_e32 v9, v63, v58, vcc_lo
	v_cndmask_b32_e32 v15, v50, v67, vcc_lo
	v_cndmask_b32_e32 v20, v42, v46, vcc_lo
	v_cndmask_b32_e32 v25, v38, v45, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v10
	v_dual_cndmask_b32 v14, v62, v52 :: v_dual_and_b32 v37, 0x7060706, v11
	v_cndmask_b32_e32 v18, v48, v44, vcc_lo
	v_cndmask_b32_e32 v24, v40, v41, vcc_lo
	v_cndmask_b32_e32 v22, v41, v40, vcc_lo
	v_permlanex16_b32 v38, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v36
	v_perm_b32 v2, v4, v3, v37
	v_perm_b32 v3, v6, v5, v36
	v_perm_b32 v4, v6, v5, v37
	v_perm_b32 v5, v8, v7, v36
	v_perm_b32 v6, v8, v7, v37
	v_perm_b32 v7, v12, v9, v36
	v_perm_b32 v8, v12, v9, v37
	v_perm_b32 v11, v16, v15, v36
	v_perm_b32 v12, v16, v15, v37
	v_perm_b32 v15, v21, v20, v36
	v_perm_b32 v16, v21, v20, v37
	v_perm_b32 v19, v26, v25, v36
	v_perm_b32 v20, v26, v25, v37
	v_perm_b32 v25, v31, v33, v36
	v_perm_b32 v26, v31, v33, v37
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v78, v76, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v13, v52, v62, vcc_lo
	v_cndmask_b32_e32 v17, v44, v48, vcc_lo
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v33
	v_perm_b32 v9, v14, v13, v36
	v_perm_b32 v10, v14, v13, v37
	v_perm_b32 v13, v18, v17, v36
	v_perm_b32 v14, v18, v17, v37
	v_perm_b32 v17, v24, v22, v36
	v_perm_b32 v18, v24, v22, v37
	v_perm_b32 v23, v30, v32, v36
	v_perm_b32 v24, v30, v32, v37
	v_add_nc_u32_e32 v32, 64, v33
	v_perm_b32 v21, v27, v29, v36
	v_perm_b32 v22, v27, v29, v37
	v_perm_b32 v29, v39, v34, v36
	v_perm_b32 v30, v39, v34, v37
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v27, v38, v28, v36
	v_perm_b32 v31, v40, v35, v36
	v_cndmask_b32_e32 v36, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v34, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v0, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v36, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v28, v38, v28, v37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v32, v40, v35, v37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 176
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 176
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11936
; TotalNumSgprs: 47
; NumVgprs: 176
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 176
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     176
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
