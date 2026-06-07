	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v9, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v10, 1, v0
	v_mov_b32_e32 v69, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v10, 24, v10
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v24, 0
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
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s6, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s6, s7
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v68, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v76, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v77, v0, 4, 1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s6, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 24, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	v_xor_b32_e32 v8, v8, v10
	v_lshlrev_b32_e32 v78, 1, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s6
	v_mov_b32_e32 v54, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v80, 0, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s6, s10
	s_abs_i32 s10, s2
	s_add_i32 s6, s6, s5
	s_mul_hi_u32 s5, s10, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s17, s5, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s17, s10, s17
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
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
	s_lshl_b32 s7, s3, 5
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
	s_lshr_b32 s3, s3, 26
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
	v_cmp_gt_i32_e64 s3, 32, v4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s40, v7
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v7
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, v6, s40, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s18, 6
.Ltmp21:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s2, s26, s40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
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
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[4:5], v4, s[28:31], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v7
	v_xor_b32_e32 v7, v7, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v79, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v6 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v3, s17, 7, v3
	s_lshl_b32 s1, s6, 8
	s_lshl_b32 s6, s6, 7
	s_lshl_b32 s0, s17, 8
	s_mov_b32 s17, s16
	v_subrev_nc_u32_e32 v3, s6, v3
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 24, v78
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v5, s33, v76
	v_sub_nc_u32_e32 v81, s40, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v76, 5, v4
	v_mad_u64_u32 v[10:11], null, s40, v3, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s34, v5
	v_mov_b32_e32 v75, 0
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add_nc_u32_e32 v83, 0, v4
	v_mad_u64_u32 v[11:12], null, s40, v2, v[9:10]
	v_lshlrev_b32_e32 v82, 1, v5
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s35, 1
	s_sub_i32 s42, s0, s1
	s_lshl_b32 s43, s27, 1
	s_add_i32 s44, s7, 32
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v88, s44, v9
	v_cmp_lt_i32_e64 s0, s44, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v89, 1, v77
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v90, s44, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v87, s44, v11
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s1, s40, v88
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v88, s42, v89
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v89, 0x80000000, v90, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s44, 32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s43
	s_cmp_lg_u32 s41, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v87, v87, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[160:161], v83 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[104:107], v83 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[136:139], v83 offset0:4 offset1:5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[162:163], v84 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[140:143], v84 offset1:1
	ds_load_2addr_stride64_b64 v[144:147], v84 offset0:2 offset1:3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[164:165], v85 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[152:155], v83 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[148:151], v84 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[156:159], v84 offset0:6 offset1:7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[106:107], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[120:121], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[136:137], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[140:141], v[162:163], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[142:143], v[162:163], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[144:145], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[146:147], v[162:163], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[152:153], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[148:149], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[150:151], v[162:163], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[162:163], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[154:157], v85 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v85 offset0:2 offset1:3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[162:163], v86 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[154:155], v[164:165], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[164:165], v[98:105] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[154:157], v85 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[158:159], v[164:165], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[160:161], v[164:165], v[114:121] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[158:161], v85 offset0:6 offset1:7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[164:165], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[156:157], v[164:165], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[164:165], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[164:165], v[146:153] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[154:157], v86 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v86 offset0:2 offset1:3
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[154:155], v[162:163], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[162:163], v[98:105] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[154:157], v86 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[158:159], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[160:161], v[162:163], v[114:121] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[158:161], v86 offset0:6 offset1:7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[156:157], v[162:163], v[130:137] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v154, v82, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v155, v88, s[36:39], 0 offen
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[162:163], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x6
	buffer_load_u16 v157, v88, s[36:39], 0 offen offset:8
	buffer_load_u16 v158, v88, s[36:39], 0 offen offset:12
	buffer_load_u16 v159, v88, s[36:39], 0 offen offset:16
	buffer_load_u16 v160, v88, s[36:39], 0 offen offset:20
	buffer_load_u16 v161, v88, s[36:39], 0 offen offset:24
	buffer_load_u16 v162, v88, s[36:39], 0 offen offset:28
	buffer_load_u16 v163, v88, s[36:39], 0 offen offset:32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
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
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v82, 2, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v154, v92 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v73, v92, v157 :: v_dual_mul_f32 v90, v154, v90
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v93, v154, v93 :: v_dual_lshlrev_b32 v156, 16, v156
	v_dual_mul_f32 v95, v154, v95 :: v_dual_lshlrev_b32 v158, 16, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v90, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v154, v94
	v_dual_mul_f32 v97, v154, v97 :: v_dual_lshlrev_b32 v160, 16, v160
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v93, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v90, v88, s[36:39], 0 offen offset:36
	buffer_load_u16 v155, v88, s[36:39], 0 offen offset:40
	buffer_load_u16 v93, v88, s[36:39], 0 offen offset:60
	buffer_load_u16 v158, v88, s[36:39], 0 offen offset:64
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v72, v95, v160 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v91, v154, v91
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v95, v88, s[36:39], 0 offen offset:76
	buffer_load_u16 v160, v88, s[36:39], 0 offen offset:80
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v99, v154, v99 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v94, v159
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v94, v88, s[36:39], 0 offen offset:68
	buffer_load_u16 v159, v88, s[36:39], 0 offen offset:72
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v91, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v91, v88, s[36:39], 0 offen offset:44
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v96, v154, v96 :: v_dual_fmac_f32 v69, v97, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v92, v88, s[36:39], 0 offen offset:52
	buffer_load_u16 v157, v88, s[36:39], 0 offen offset:56
	buffer_load_u16 v97, v88, s[36:39], 0 offen offset:92
	buffer_load_u16 v162, v88, s[36:39], 0 offen offset:96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v98, v154, v98
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v96, v161
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v96, v88, s[36:39], 0 offen offset:84
	buffer_load_u16 v161, v88, s[36:39], 0 offen offset:88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v105, v154, v105
	v_mul_f32_e32 v106, v154, v106
	v_mul_f32_e32 v100, v154, v100
	v_mul_f32_e32 v102, v154, v102
	v_mul_f32_e32 v110, v154, v110
	v_mul_f32_e32 v113, v154, v113
	v_mul_f32_e32 v119, v154, v119
	v_mul_f32_e32 v101, v154, v101
	v_mul_f32_e32 v109, v154, v109
	v_mul_f32_e32 v103, v154, v103
	v_mul_f32_e32 v111, v154, v111
	v_mul_f32_e32 v107, v154, v107
	v_mul_f32_e32 v108, v154, v108
	v_mul_f32_e32 v115, v154, v115
	v_mul_f32_e32 v117, v154, v117
	v_mul_f32_e32 v116, v154, v116
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v121, v154, v121 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v98, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v98, v88, s[36:39], 0 offen offset:100
	buffer_load_u16 v163, v88, s[36:39], 0 offen offset:104
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v104, v154, v104 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v60, v106, v158 :: v_dual_lshlrev_b32 v91, 16, v91
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v57, v109, v95 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v101, v91
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v64, v102, v156 :: v_dual_lshlrev_b32 v97, 16, v97
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v56, v110, v160 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v162, 16, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v112, v154, v112 :: v_dual_fmac_f32 v53, v113, v97
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v105, v93
	v_fmac_f32_e32 v62, v104, v157
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v52, v112, v161 :: v_dual_fmac_f32 v59, v107, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v114, v154, v114
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v67, v99, v90
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v90, v88, s[36:39], 0 offen offset:108
	buffer_load_u16 v99, v88, s[36:39], 0 offen offset:112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v100, v155 :: v_dual_fmac_f32 v63, v103, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xf
	buffer_load_u16 v100, v88, s[36:39], 0 offen offset:116
	buffer_load_u16 v155, v88, s[36:39], 0 offen offset:120
	buffer_load_u16 v91, v88, s[36:39], 0 offen offset:124
	buffer_load_u16 v101, v88, s[36:39], 0 offen offset:128
	buffer_load_u16 v102, v88, s[36:39], 0 offen offset:132
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:136
	buffer_load_u16 v92, v88, s[36:39], 0 offen offset:140
	buffer_load_u16 v103, v88, s[36:39], 0 offen offset:144
	buffer_load_u16 v104, v88, s[36:39], 0 offen offset:148
	buffer_load_u16 v157, v88, s[36:39], 0 offen offset:152
	buffer_load_u16 v93, v88, s[36:39], 0 offen offset:156
	buffer_load_u16 v105, v88, s[36:39], 0 offen offset:160
	buffer_load_u16 v106, v88, s[36:39], 0 offen offset:164
	buffer_load_u16 v158, v88, s[36:39], 0 offen offset:168
	buffer_load_u16 v94, v88, s[36:39], 0 offen offset:172
	buffer_load_u16 v107, v88, s[36:39], 0 offen offset:176
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v108, v159 :: v_dual_fmac_f32 v55, v111, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xb
	buffer_load_u16 v108, v88, s[36:39], 0 offen offset:180
	buffer_load_u16 v159, v88, s[36:39], 0 offen offset:184
	buffer_load_u16 v95, v88, s[36:39], 0 offen offset:188
	buffer_load_u16 v109, v88, s[36:39], 0 offen offset:192
	buffer_load_u16 v110, v88, s[36:39], 0 offen offset:196
	buffer_load_u16 v160, v88, s[36:39], 0 offen offset:200
	buffer_load_u16 v96, v88, s[36:39], 0 offen offset:204
	buffer_load_u16 v111, v88, s[36:39], 0 offen offset:208
	buffer_load_u16 v112, v88, s[36:39], 0 offen offset:212
	buffer_load_u16 v161, v88, s[36:39], 0 offen offset:216
	buffer_load_u16 v97, v88, s[36:39], 0 offen offset:220
	buffer_load_u16 v113, v88, s[36:39], 0 offen offset:224
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v118, v154, v118
	v_mul_f32_e32 v120, v154, v120
	v_mul_f32_e32 v122, v154, v122
	v_mul_f32_e32 v123, v154, v123
	v_mul_f32_e32 v124, v154, v124
	v_mul_f32_e32 v125, v154, v125
	v_mul_f32_e32 v126, v154, v126
	v_mul_f32_e32 v127, v154, v127
	v_mul_f32_e32 v128, v154, v128
	v_mul_f32_e32 v129, v154, v129
	v_mul_f32_e32 v130, v154, v130
	v_mul_f32_e32 v131, v154, v131
	v_mul_f32_e32 v132, v154, v132
	v_mul_f32_e32 v133, v154, v133
	v_mul_f32_e32 v134, v154, v134
	v_mul_f32_e32 v135, v154, v135
	v_mul_f32_e32 v136, v154, v136
	v_mul_f32_e32 v137, v154, v137
	v_mul_f32_e32 v138, v154, v138
	v_mul_f32_e32 v139, v154, v139
	v_mul_f32_e32 v140, v154, v140
	v_mul_f32_e32 v141, v154, v141
	v_mul_f32_e32 v142, v154, v142
	v_mul_f32_e32 v143, v154, v143
	v_mul_f32_e32 v144, v154, v144
	v_mul_f32_e32 v145, v154, v145
	v_mul_f32_e32 v147, v154, v147
	v_mul_f32_e32 v149, v154, v149
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v151, v154, v151 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v50, v114, v162 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v114, v88, s[36:39], 0 offen offset:228
	buffer_load_u16 v162, v88, s[36:39], 0 offen offset:232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v148, v154, v148 :: v_dual_fmac_f32 v51, v115, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v98, v88, s[36:39], 0 offen offset:236
	buffer_load_u16 v115, v88, s[36:39], 0 offen offset:240
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v116, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v116, v88, s[36:39], 0 offen offset:244
	buffer_load_u16 v163, v88, s[36:39], 0 offen offset:248
	buffer_load_u16 v164, v88, s[36:39], 0 offen offset:252
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[88:89], v89, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v146, v154, v146
	v_mul_f32_e32 v150, v154, v150
	v_mul_f32_e32 v153, v154, v153
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v79, v87 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[88:89]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v90, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v152, v154, v152 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v154, 16, v155
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v101, 16, v101
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v155, 16, v156
	v_lshlrev_b32_e32 v92, 16, v92
	v_lshlrev_b32_e32 v103, 16, v103
	v_lshlrev_b32_e32 v104, 16, v104
	v_lshlrev_b32_e32 v156, 16, v157
	v_lshlrev_b32_e32 v93, 16, v93
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v157, 16, v158
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v158, 16, v159
	v_lshlrev_b32_e32 v95, 16, v95
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v159, 16, v160
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v160, 16, v161
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v161, 16, v162
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v119, v100 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v45, v121, v91 :: v_dual_lshlrev_b32 v116, 16, v116
	v_dual_fmac_f32 v43, v123, v102 :: v_dual_lshlrev_b32 v162, 16, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v163, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v49, v117, v90 :: v_dual_fmac_f32 v46, v118, v99
	v_dual_fmac_f32 v41, v125, v92 :: v_dual_fmac_f32 v44, v120, v154
	v_dual_fmac_f32 v39, v127, v104 :: v_dual_fmac_f32 v42, v122, v101
	v_dual_fmac_f32 v35, v131, v106 :: v_dual_fmac_f32 v40, v124, v155
	v_dual_fmac_f32 v37, v129, v93 :: v_dual_fmac_f32 v38, v126, v103
	v_dual_fmac_f32 v33, v133, v94 :: v_dual_fmac_f32 v36, v128, v156
	v_dual_fmac_f32 v29, v137, v95 :: v_dual_fmac_f32 v34, v130, v105
	v_dual_fmac_f32 v31, v135, v108 :: v_dual_fmac_f32 v32, v132, v157
	v_dual_fmac_f32 v27, v139, v110 :: v_dual_fmac_f32 v30, v134, v107
	v_dual_fmac_f32 v25, v141, v96 :: v_dual_fmac_f32 v28, v136, v158
	v_dual_fmac_f32 v23, v143, v112 :: v_dual_fmac_f32 v26, v138, v109
	v_dual_fmac_f32 v19, v147, v114 :: v_dual_fmac_f32 v24, v140, v159
	v_dual_fmac_f32 v21, v145, v97 :: v_dual_fmac_f32 v22, v142, v111
	v_dual_fmac_f32 v17, v149, v98 :: v_dual_fmac_f32 v20, v144, v160
	v_dual_fmac_f32 v18, v146, v113 :: v_dual_fmac_f32 v15, v151, v116
	v_fmac_f32_e32 v16, v148, v161
	v_dual_fmac_f32 v14, v150, v115 :: v_dual_fmac_f32 v13, v152, v162
	v_fmac_f32_e32 v12, v153, v163
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow518
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
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
	v_dual_mov_b32 v141, s11 :: v_dual_and_b32 v2, 24, v78
	v_dual_mov_b32 v139, s9 :: v_dual_mov_b32 v138, s8
	v_mov_b32_e32 v140, s10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshl_or_b32 v2, v76, 5, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v137, s7 :: v_dual_mov_b32 v136, s6
	v_dual_mov_b32 v135, s5 :: v_dual_mov_b32 v134, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v3, 0, v2
	v_xad_u32 v98, v2, 8, 0
	ds_load_2addr_stride64_b64 v[101:104], v3 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[84:87], v3 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[10:11], v3 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v99, v2, 16, 0
	ds_load_2addr_stride64_b64 v[105:108], v98 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[94:97], v98 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[186:187], v98 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v100, v2, 24, 0
	ds_load_2addr_stride64_b64 v[109:112], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[113:116], v99 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[188:189], v99 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[117:120], v100 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[121:124], v100 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[190:191], v100 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[125:128], v3 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[129:132], v3 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[166:169], v98 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[170:173], v98 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[174:177], v99 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[178:181], v99 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[84:85], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[86:87], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[101:102], v[10:11], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[94:95], v[186:187], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[96:97], v[186:187], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[129:130], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[131:132], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[113:114], v[188:189], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[115:116], v[188:189], v[78:85] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[113:116], v100 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[182:185], v100 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[95:102], v[103:104], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[125:126], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[127:128], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[105:106], v[186:187], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[107:108], v[186:187], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[170:171], v[186:187], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[172:173], v[186:187], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[166:167], v[186:187], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[168:169], v[186:187], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[109:110], v[188:189], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[111:112], v[188:189], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[178:179], v[188:189], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[180:181], v[188:189], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[174:175], v[188:189], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[176:177], v[188:189], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[121:122], v[190:191], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[123:124], v[190:191], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[117:118], v[190:191], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[119:120], v[190:191], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[182:183], v[190:191], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[184:185], v[190:191], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[113:114], v[190:191], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[115:116], v[190:191], v[134:141] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v131, v2
	v_cvt_f32_i32_e32 v133, v3
	v_cvt_f32_i32_e32 v130, v4
	v_cvt_f32_i32_e32 v132, v5
	v_cvt_f32_i32_e32 v128, v6
	v_cvt_f32_i32_e32 v129, v7
	v_cvt_f32_i32_e32 v124, v8
	v_cvt_f32_i32_e32 v126, v9
	v_cvt_f32_i32_e32 v123, v78
	v_cvt_f32_i32_e32 v127, v79
	v_cvt_f32_i32_e32 v122, v80
	v_cvt_f32_i32_e32 v125, v81
	v_cvt_f32_i32_e32 v120, v82
	v_cvt_f32_i32_e32 v121, v83
	v_cvt_f32_i32_e32 v118, v84
	v_cvt_f32_i32_e32 v119, v85
	v_cvt_f32_i32_e32 v116, v86
	v_cvt_f32_i32_e32 v117, v87
	v_cvt_f32_i32_e32 v114, v88
	v_cvt_f32_i32_e32 v115, v89
	v_cvt_f32_i32_e32 v110, v90
	v_cvt_f32_i32_e32 v113, v91
	v_cvt_f32_i32_e32 v109, v92
	v_cvt_f32_i32_e32 v111, v93
	v_cvt_f32_i32_e32 v107, v95
	v_cvt_f32_i32_e32 v108, v96
	v_cvt_f32_i32_e32 v105, v97
	v_cvt_f32_i32_e32 v106, v98
	v_cvt_f32_i32_e32 v103, v99
	v_cvt_f32_i32_e32 v104, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v99, v142
	v_cvt_f32_i32_e32 v100, v143
	v_cvt_f32_i32_e32 v97, v144
	v_cvt_f32_i32_e32 v98, v145
	v_cvt_f32_i32_e32 v95, v146
	v_cvt_f32_i32_e32 v96, v147
	v_cvt_f32_i32_e32 v93, v148
	v_cvt_f32_i32_e32 v94, v149
	v_cvt_f32_i32_e32 v91, v150
	v_cvt_f32_i32_e32 v92, v151
	v_cvt_f32_i32_e32 v89, v152
	v_cvt_f32_i32_e32 v90, v153
	v_cvt_f32_i32_e32 v87, v154
	v_cvt_f32_i32_e32 v88, v155
	v_cvt_f32_i32_e32 v85, v156
	v_cvt_f32_i32_e32 v86, v157
	v_cvt_f32_i32_e32 v83, v158
	v_cvt_f32_i32_e32 v84, v159
	v_cvt_f32_i32_e32 v81, v160
	v_cvt_f32_i32_e32 v82, v161
	v_cvt_f32_i32_e32 v79, v162
	v_cvt_f32_i32_e32 v80, v163
	v_cvt_f32_i32_e32 v10, v164
	v_cvt_f32_i32_e32 v11, v165
	v_cvt_f32_i32_e32 v8, v134
	v_cvt_f32_i32_e32 v9, v135
	v_cvt_f32_i32_e32 v6, v136
	v_cvt_f32_i32_e32 v7, v137
	v_cvt_f32_i32_e32 v4, v138
	v_cvt_f32_i32_e32 v5, v139
	v_cvt_f32_i32_e32 v3, v140
	v_cvt_f32_i32_e32 v2, v141
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v78, s34, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s35, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s26, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v134, s3, v77, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v77, s1, v78, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v134, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v187, 0xa4, v134
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v76, s27, v76
	s_mul_i32 s33, s33, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v112, v77, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	buffer_load_u16 v142, v135, s[20:23], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v76, s33, s26, v76
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 4, v134
	v_add_nc_u32_e32 v136, 12, v134
	v_add_nc_u32_e32 v137, 8, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v130, v112 :: v_dual_add_nc_u32 v77, 24, v134
	v_mul_f32_e32 v131, v131, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v133, v133, v112
	v_mul_f32_e32 v132, v132, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v128, v128, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v143, v78, s[20:23], 0 offen
	v_add_nc_u32_e32 v135, 16, v134
	v_cndmask_b32_e64 v78, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v137, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v126, v126, v112 :: v_dual_add_nc_u32 v137, 20, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	s_clause 0x3
	buffer_load_u16 v145, v78, s[20:23], 0 offen
	buffer_load_u16 v138, v77, s[20:23], 0 offen
	buffer_load_u16 v140, v135, s[20:23], 0 offen
	buffer_load_u16 v146, v136, s[20:23], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v137, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v129, v112 :: v_dual_add_nc_u32 v78, 28, v134
	v_mul_f32_e32 v127, v127, v112
	v_dual_mul_f32 v122, v122, v112 :: v_dual_add_nc_u32 v135, 56, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v144, v77, s[20:23], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	v_add_nc_u32_e32 v78, 36, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v123, v123, v112 :: v_dual_add_nc_u32 v136, 48, v134
	v_dual_mul_f32 v120, v120, v112 :: v_dual_add_nc_u32 v137, 40, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	buffer_load_u16 v139, v77, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v118, v118, v112 :: v_dual_add_nc_u32 v141, 44, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	buffer_load_u16 v151, v78, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v124, v124, v112 :: v_dual_add_nc_u32 v77, 32, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v137, s2
	v_cndmask_b32_e64 v137, 0x80000000, v141, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x4
	buffer_load_u16 v141, v135, s[20:23], 0 offen
	buffer_load_u16 v148, v78, s[20:23], 0 offen
	buffer_load_u16 v149, v136, s[20:23], 0 offen
	buffer_load_u16 v153, v77, s[20:23], 0 offen
	buffer_load_u16 v152, v137, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v116, v116, v112 :: v_dual_add_nc_u32 v77, 52, v134
	v_dual_mul_f32 v125, v125, v112 :: v_dual_add_nc_u32 v78, 60, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v142, 16, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v119, v119, v112 :: v_dual_add_nc_u32 v136, 0x50, v134
	v_mul_f32_e32 v121, v121, v112
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v131, v142, v54
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v150, v77, s[20:23], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	v_add_nc_u32_e32 v78, 64, v134
	v_add_nc_u32_e32 v142, 0xa8, v134
	v_add_nc_u32_e32 v135, 0x58, v134
	v_add_nc_u32_e32 v137, 0x48, v134
	buffer_load_u16 v147, v77, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v114, v114, v112 :: v_dual_add_nc_u32 v77, 0x44, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v154, 0x80000000, v137, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_add_nc_u32_e32 v155, 0x4c, v134
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v117, v117, v112 :: v_dual_add_nc_u32 v168, 0x60, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v169, 0x64, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v115, v112 :: v_dual_add_nc_u32 v172, 0x68, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_add_nc_u32_e32 v173, 0x6c, v134
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	s_clause 0x1
	buffer_load_u16 v168, v168, s[20:23], 0 offen
	buffer_load_u16 v169, v169, s[20:23], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	s_clause 0x1
	buffer_load_u16 v172, v172, s[20:23], 0 offen
	buffer_load_u16 v173, v173, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v113, v113, v112 :: v_dual_add_nc_u32 v174, 0x70, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v175, 0x74, v134
	v_add_nc_u32_e32 v176, 0x78, v134
	v_add_nc_u32_e32 v177, 0x7c, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v109, v112 :: v_dual_add_nc_u32 v178, 0x80, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	s_clause 0x1
	buffer_load_u16 v174, v174, s[20:23], 0 offen
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v112 :: v_dual_add_nc_u32 v179, 0x84, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v180, 0x88, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v8, v8, v112 :: v_dual_add_nc_u32 v181, 0x8c, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v182, 0x90, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v112 :: v_dual_add_nc_u32 v183, 0x94, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v184, 0x98, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v112 :: v_dual_add_nc_u32 v185, 0x9c, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v186, 0xa0, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v54, v131, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	s_clause 0x1
	buffer_load_u16 v178, v178, s[20:23], 0 offen
	buffer_load_u16 v179, v179, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v54, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v2, v112
	v_mul_f32_e32 v9, v9, v112
	v_mul_f32_e32 v7, v7, v112
	v_mul_f32_e32 v3, v3, v112
	v_mul_f32_e32 v5, v5, v112
	v_mul_f32_e32 v11, v11, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v143, 16, v143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v133, v143, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v146, 16, v146
	v_add_nc_u32_e32 v143, 0xac, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v132, v145, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v145, 0xb0, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v140, v128, v140, v74
	v_fma_f32 v146, v130, v146, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v130, 0xb4, v134
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v144, 16, v144
	v_add_nc_u32_e32 v128, 0xbc, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v138, v124, v138, v70
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v124, 0xc4, v134
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v144, v129, v144, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v129, 0xb8, v134
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v139, 16, v139
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_cndmask_b32_e64 v188, 0x80000000, v129, s2
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v139, v126, v139, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v126, 0xc0, v134
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v151, v127, v151, v67
	v_fma_f32 v148, v120, v148, v64
	v_fma_f32 v149, v122, v149, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v122, 0xd4, v134
	v_add_nc_u32_e32 v120, 0xdc, v134
	v_add_nc_u32_e32 v127, 0xc8, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v153, v123, v153, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v123, 0xcc, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v152, v125, v152, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v125, 0xd0, v134
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v150, 16, v150
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v189, 0x80000000, v127, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v150, v121, v150, v63
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v147, 16, v147
	v_add_nc_u32_e32 v121, 0xd8, v134
	v_cndmask_b32_e64 v190, 0x80000000, v123, s2
	v_cndmask_b32_e64 v191, 0x80000000, v125, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v141, v118, v141, v62
	v_fma_f32 v147, v119, v147, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v119, 0xe0, v134
	v_cndmask_b32_e64 v192, 0x80000000, v121, s2
	v_add_nc_u32_e32 v118, 0xe4, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v75, v133, s2
	v_cndmask_b32_e64 v73, v73, v146, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v193, 0x80000000, v119, s2
	s_clause 0xd
	buffer_load_u16 v142, v142, s[20:23], 0 offen
	buffer_load_u16 v143, v143, s[20:23], 0 offen
	buffer_load_u16 v129, v145, s[20:23], 0 offen
	buffer_load_u16 v130, v130, s[20:23], 0 offen
	buffer_load_u16 v127, v188, s[20:23], 0 offen
	buffer_load_u16 v128, v128, s[20:23], 0 offen
	buffer_load_u16 v125, v126, s[20:23], 0 offen
	buffer_load_u16 v126, v124, s[20:23], 0 offen
	buffer_load_u16 v123, v189, s[20:23], 0 offen
	buffer_load_u16 v124, v190, s[20:23], 0 offen
	buffer_load_u16 v121, v191, s[20:23], 0 offen
	buffer_load_u16 v122, v122, s[20:23], 0 offen
	buffer_load_u16 v119, v192, s[20:23], 0 offen
	buffer_load_u16 v120, v120, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v188, v111, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	s_clause 0x4
	buffer_load_u16 v156, v77, s[20:23], 0 offen
	buffer_load_u16 v135, v135, s[20:23], 0 offen
	buffer_load_u16 v137, v136, s[20:23], 0 offen
	buffer_load_u16 v154, v154, s[20:23], 0 offen
	buffer_load_u16 v157, v78, s[20:23], 0 offen
	v_add_nc_u32_e32 v77, 0x54, v134
	v_cndmask_b32_e64 v78, 0x80000000, v155, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v145, v110, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	s_clause 0x1
	buffer_load_u16 v176, v176, s[20:23], 0 offen
	buffer_load_u16 v177, v177, s[20:23], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x1
	buffer_load_u16 v155, v78, s[20:23], 0 offen
	buffer_load_u16 v158, v77, s[20:23], 0 offen
	v_add_nc_u32_e32 v77, 0x5c, v134
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.h, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v71, v132, s2
	v_cndmask_b32_e64 v66, v66, v149, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v141, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v54.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v74, v140, s2
	v_cndmask_b32_e64 v70, v70, v138, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v136, v77, s[20:23], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v153, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v159.h, v78.h
	v_mov_b16_e64 v160.h, v78.h
	v_mov_b16_e64 v164.h, v78.h
	v_mov_b16_e64 v166.h, v78.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v72, v144, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v159.l, v75.h
	v_mov_b16_e64 v160.l, v73.h
	v_mov_b16_e64 v164.l, v66.h
	v_mov_b16_e64 v166.l, v62.h
	v_mov_b16_e64 v161.h, v78.h
	v_mov_b16_e64 v162.h, v78.h
	v_mov_b16_e64 v163.h, v78.h
	v_mov_b16_e64 v161.l, v74.h
	v_mov_b16_e64 v162.l, v70.h
	v_mov_b16_e64 v163.l, v68.h
	v_mov_b16_e64 v167.h, v78.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v139, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v139, 1, v164
	v_and_b32_e32 v141, 1, v166
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v131, v61, v147, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v162
	v_and_b32_e32 v138, 1, v163
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v151, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v73, v73
	v_cmp_o_f32_e64 s11, v66, v66
	v_cmp_o_f32_e64 s15, v62, v62
	v_add3_u32 v66, v66, v139, 0x7fff
	v_add3_u32 v62, v62, v141, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v152, s2
	v_cndmask_b32_e64 v64, v64, v148, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s9, v68, v68
	v_mov_b16_e64 v165.h, v78.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v150, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v74, v74
	v_mov_b16_e64 v165.l, v64.h
	v_cmp_o_f32_e64 s1, v71, v71
	v_cmp_o_f32_e64 s13, v64, v64
	v_cmp_o_f32_e64 s6, v69, v69
	v_cmp_o_f32_e64 s10, v65, v65
	v_and_b32_e32 v140, 1, v165
	v_mov_b16_e64 v170.h, v78.h
	v_cmp_o_f32_e64 s12, v63, v63
	v_cmp_o_f32_e64 s14, v131, v131
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_add3_u32 v64, v64, v140, 0x7fff
	v_cmp_o_f32_e64 s7, v70, v70
	v_cmp_o_f32_e64 s8, v67, v67
	v_mov_b16_e64 v171.h, v78.h
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v77, 1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v62.l, 0x7fff, v64.h, s13
	v_cmp_o_f32_e64 s4, v72, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v156, v117, v156, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v117, 0xe8, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v154, v114, v154, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v157, v116, v157, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v116, 0xec, v134
	v_add_nc_u32_e32 v114, 0xf4, v134
	v_cndmask_b32_e64 v194, 0x80000000, v117, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v132, v59, v156, s2
	v_cndmask_b32_e64 v60, v60, v157, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v167.l, v60.h
	v_and_b32_e32 v59, 1, v161
	v_cmp_o_f32_e64 s17, v60, v60
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v155, v115, v155, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v115, 0xf0, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v158, v113, v158, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v113, 0xf8, v134
	v_add_nc_u32_e32 v134, 0xfc, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v133, v57, v155, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v195, 0x80000000, v115, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v196, 0x80000000, v113, s2
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	s_clause 0x7
	buffer_load_u16 v117, v193, s[20:23], 0 offen
	buffer_load_u16 v118, v118, s[20:23], 0 offen
	buffer_load_u16 v115, v194, s[20:23], 0 offen
	buffer_load_u16 v116, v116, s[20:23], 0 offen
	buffer_load_u16 v113, v195, s[20:23], 0 offen
	buffer_load_u16 v114, v114, s[20:23], 0 offen
	buffer_load_u16 v111, v196, s[20:23], 0 offen
	buffer_load_u16 v110, v134, s[20:23], 0 offen
	v_lshlrev_b32_e32 v134, 16, v135
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v135, v145, v137, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v137, v55, v158, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v55, 1, v159
	v_and_b32_e32 v144, 1, v167
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v135, v56, v135, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v78
	v_mov_b16_e32 v78.l, v71.h
	v_add3_u32 v60, v60, v144, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v154, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v136, v188, v136, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v54, v56, 0x7fff
	v_and_b32_e32 v145, 1, v78
	v_mov_b16_e32 v78.l, v72.h
	v_add3_u32 v54, v75, v55, 0x7fff
	v_add3_u32 v55, v73, v57, 0x7fff
	v_add3_u32 v57, v74, v59, 0x7fff
	v_add3_u32 v59, v70, v61, 0x7fff
	v_and_b32_e32 v73, 1, v78
	v_mov_b16_e32 v78.l, v69.h
	v_add3_u32 v61, v68, v138, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v56.h, s0
	v_add3_u32 v56, v71, v145, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s15
	v_and_b32_e32 v68, 1, v78
	v_mov_b16_e32 v78.l, v67.h
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s17
	v_mov_b16_e64 v170.l, v58.h
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s3
	v_add3_u32 v68, v69, v68, 0x7fff
	v_and_b32_e32 v74, 1, v78
	v_mov_b16_e32 v78.l, v65.h
	v_cndmask_b16 v55.h, 0x7fff, v56.h, s1
	v_cmp_o_f32_e64 s18, v133, v133
	v_and_b32_e32 v146, 1, v170
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v136, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v78
	v_mov_b16_e32 v78.l, v63.h
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v70, v58, v146, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s9
	v_add3_u32 v65, v65, v71, 0x7fff
	v_and_b32_e32 v66, 1, v78
	v_mov_b16_e64 v78.l, v131.h
	v_add3_u32 v67, v67, v74, 0x7fff
	v_cmp_o_f32_e64 s16, v132, v132
	v_cndmask_b16 v56.h, 0x7fff, v65.h, s10
	v_add3_u32 v63, v63, v66, 0x7fff
	v_and_b32_e32 v64, 1, v78
	v_mov_b16_e64 v78.l, v132.h
	v_mov_b16_e64 v171.l, v135.h
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v63.h, s12
	v_add3_u32 v64, v131, v64, 0x7fff
	v_and_b32_e32 v69, 1, v78
	v_mov_b16_e64 v78.l, v133.h
	v_cndmask_b16 v59.l, 0x7fff, v57.h, s5
	v_cndmask_b16 v58.h, 0x7fff, v68.h, s6
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s14
	v_cndmask_b16 v57.h, 0x7fff, v67.h, s8
	v_and_b32_e32 v65, 1, v78
	v_mov_b16_e64 v78.l, v137.h
	v_add3_u32 v66, v132, v69, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v63.l, 0x7fff, v70.h, s19
	v_add3_u32 v65, v133, v65, 0x7fff
	v_and_b32_e32 v64, 1, v78
	v_mov_b16_e32 v78.l, v53.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v67, 16, v168
	v_lshlrev_b32_e32 v68, 16, v169
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v109, v134, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v137, v64, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v69, v108, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v70, v107, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v52, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v180, v180, s[20:23], 0 offen
	buffer_load_u16 v181, v181, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s16
	v_and_b32_e32 v66, 1, v171
	v_cndmask_b16 v52.h, 0x7fff, v64.h, vcc_lo
	v_mov_b16_e32 v64.l, v65.h
	v_mov_b16_e32 v64.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v68, v69, v68, v51
	v_fma_f32 v67, v70, v67, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v53, v71, 0x7fff
	v_cmp_o_f32_e64 s0, v53, v53
	v_add3_u32 v66, v135, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_and_b32_e32 v64, 1, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v68, s2
	v_cndmask_b32_e64 v53, v50, v67, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.h, 0x7fff, v69.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v69, v106, v112 :: v_dual_lshlrev_b32 v68, 16, v173
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.l, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v64, v65, v64, 0x7fff
	v_mov_b16_e32 v78.l, v51.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v69, v68, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v182, v182, s[20:23], 0 offen
	buffer_load_u16 v183, v183, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v66.l, v53.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v67, 16, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v70, v105, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v66.h, v78.h
	v_and_b32_e32 v71, 1, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v51, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v67, v70, v67, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v68, v51, v71, 0x7fff
	v_mov_b16_e32 v78.l, v49.h
	v_cndmask_b16 v50.l, 0x7fff, v64.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v48, v67, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v53, v66, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v68.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v66, 16, v174
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v68, v104, v112 :: v_dual_lshlrev_b32 v67, 16, v175
	v_mul_f32_e32 v69, v103, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v70, 1, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v184, v184, s[20:23], 0 offen
	buffer_load_u16 v185, v185, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.l, v51.h
	v_mov_b16_e32 v65.h, v78.h
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v68, v67, v47
	v_fma_f32 v66, v69, v66, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v49, v70, 0x7fff
	v_cmp_o_f32_e64 s0, v49, v49
	v_and_b32_e32 v65, 1, v65
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v47, v53, s2
	v_cndmask_b32_e64 v49, v46, v66, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v66, 16, v177
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v46.h, 0x7fff, v67.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v102, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.l, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v53, v51, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_mov_b16_e32 v78.l, v47.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v67, v66, v45
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v99, v112
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	s_clause 0x1
	buffer_load_u16 v186, v186, s[20:23], 0 offen
	buffer_load_u16 v187, v187, s[20:23], 0 offen
	v_lshlrev_b32_e32 v65, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v68, v101, v112 :: v_dual_and_b32 v69, 1, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v49.h
	v_mov_b16_e32 v64.h, v78.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v68, v65, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v47, v69, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v51, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v64
	v_cndmask_b16 v46.l, 0x7fff, v53.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v44, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v66.h, s0
	v_mov_b16_e32 v78.l, v45.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v66, v100, v112 :: v_dual_lshlrev_b32 v65, 16, v179
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v49, v64, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v64, 16, v178
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v66, v65, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v47.h
	v_mov_b16_e32 v53.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v67, v64, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v45, v68, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v43, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v42, v64, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v65.h, s0
	v_mov_b16_e32 v78.l, v43.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v98, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v47, v53, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v97, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v67, 1, v78
	v_mov_b16_e32 v51.l, v45.h
	v_mov_b16_e32 v51.h, v78.h
	v_cmp_o_f32_e64 s0, v43, v43
	v_cndmask_b16 v42.l, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_mov_b16_e32 v49.h, v78.h
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v72, v72, v73, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v72.h, s4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v180
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v64, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v66, v53, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, v65, v64, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v43, v67, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v95, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v40, v53, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, v41, v47, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v64.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v96, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v45, v51, 0x7fff
	v_mov_b16_e32 v49.l, v43.h
	v_mov_b16_e32 v78.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, vcc_lo
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_mov_b16_e32 v47.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v51, 16, v182
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v53, 16, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v65, v51, v38
	v_fma_f32 v45, v64, v53, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v41, v66, 0x7fff
	v_add3_u32 v41, v43, v49, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v93, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v38, v51, s2
	v_cndmask_b32_e64 v39, v39, v45, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v94, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v41.h, vcc_lo
	v_mov_b16_e32 v47.l, v38.h
	v_mov_b16_e32 v78.l, v39.h
	v_cmp_o_f32_e64 s0, v39, v39
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v65, 1, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v184
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v64, v49, v36
	v_fma_f32 v43, v53, v51, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v39, v65, 0x7fff
	v_add3_u32 v39, v38, v47, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v91, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v49, s2
	v_cndmask_b32_e64 v37, v37, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v51.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v92, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.h, v78.h
	v_mov_b16_e32 v43.l, v36.h
	v_mov_b16_e32 v78.l, v37.h
	v_cmp_o_f32_e64 s0, v37, v37
	v_cndmask_b16 v41.l, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_and_b32_e32 v43, 1, v43
	v_and_b32_e32 v64, 1, v78
	v_mov_b16_e32 v39.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v186
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v53, v47, v34
	v_fma_f32 v38, v51, v49, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v37, v64, 0x7fff
	v_add3_u32 v37, v36, v43, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v142
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v47, s2
	v_cndmask_b32_e64 v35, v35, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v49.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v143
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v90, v112
	v_mul_f32_e32 v51, v89, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v35.h
	v_mov_b16_e32 v39.l, v34.h
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v49, v47, v33
	v_fma_f32 v43, v51, v43, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v78
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v38.l, 0x7fff, v37.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v33, v36, s2
	v_cndmask_b32_e64 v32, v32, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v35, v53, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v34, v39, 0x7fff
	v_mov_b16_e32 v78.l, v33.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v39, 16, v129
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v47.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v88, v112
	v_mul_f32_e32 v49, v87, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b16_e32 v37.l, v32.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v47, v43, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v37.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v49, v39, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v33, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v33, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v34, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v30, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v39, 16, v128
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s0
	v_mov_b16_e32 v78.l, v31.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v86, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v35.h, vcc_lo
	v_add3_u32 v33, v32, v37, 0x7fff
	v_mov_b16_e32 v35.l, v30.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v37, 16, v127
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v85, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.h, v78.h
	v_and_b32_e32 v49, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v43, v39, v29
	v_fma_f32 v37, v47, v37, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v39, v31, v49, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v32, s2
	v_cndmask_b32_e64 v28, v28, v37, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v30, v35, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v35, 16, v125
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s0
	v_mov_b16_e32 v78.l, v29.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v37, 16, v126
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v84, v112
	v_mul_f32_e32 v43, v83, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.l, 0x7fff, v33.h, vcc_lo
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v78.h
	v_and_b32_e32 v47, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v39, v37, v27
	v_fma_f32 v35, v43, v35, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v37, v29, v47, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v27, v30, s2
	v_cndmask_b32_e64 v26, v26, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v29, v28, v33, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v37.h, s0
	v_mov_b16_e32 v78.l, v27.h
	v_mov_b16_e32 v31.l, v26.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v123
	v_lshlrev_b32_e32 v35, 16, v124
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v82, v112
	v_mul_f32_e32 v39, v81, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v78.h
	v_and_b32_e32 v43, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v37, v35, v25
	v_fma_f32 v33, v39, v33, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v35, v27, v43, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v25, v28, s2
	v_cndmask_b32_e64 v24, v24, v33, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v26, v31, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v31, 16, v121
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v79, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v35.h, s0
	v_mov_b16_e32 v78.l, v25.h
	v_mov_b16_e32 v29.l, v24.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v122
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v35, v80, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v37, v31, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v35, v33, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v22, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v25, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v25, v24, v29, 0x7fff
	v_mov_b16_e32 v27.l, v22.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v29, 16, v119
	v_lshlrev_b32_e32 v31, 16, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v78.h
	v_mov_b16_e32 v78.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v29, v20
	v_fma_f32 v11, v11, v31, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v27
	v_cndmask_b16 v26.h, 0x7fff, v33.h, s0
	v_and_b32_e32 v33, 1, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v20, v10, s2
	v_cndmask_b32_e64 v11, v21, v11, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v20, v22, v24, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v24, 16, v117
	v_lshlrev_b32_e32 v25, 16, v118
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v23, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v23, v23
	v_mov_b16_e32 v78.l, v11.h
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v25, v19
	v_fma_f32 v8, v8, v24, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s0
	v_mov_b16_e32 v23.l, v10.h
	v_mov_b16_e32 v23.h, v78.h
	v_and_b32_e32 v27, 1, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v19, v9, s2
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v20, 16, v115
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v23
	v_add3_u32 v23, v11, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v11, v11
	v_mov_b16_e32 v78.l, v9.h
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v19.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v20, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v10, v22, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v22, 16, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v22, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v9, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v18.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v9, v8, v10, 0x7fff
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v11.h, v78.h
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v8, 16, v114
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v17, 16, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v8, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v7.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v17, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v6, v11, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v11, 16, v111
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v15, 16, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v11, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v15, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v7, v16, 0x7fff
	v_mov_b16_e32 v78.l, v5.h
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v78.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v13, v3, s2
	v_cndmask_b32_e64 v2, v12, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v19.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	v_and_b32_e32 v6, 1, v78
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v11.h, v78.h
	v_mov_b16_e32 v78.l, v2.h
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s0
	v_add3_u32 v7, v4, v7, 0x7fff
	v_and_b32_e32 v8, 1, v11
	v_and_b32_e32 v11, 1, v78
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v4, v3, v8, 0x7fff
	v_add3_u32 v5, v2, v11, 0x7fff
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
	v_dual_cndmask_b32 v30, v34, v30 :: v_dual_cndmask_b32 v33, v21, v28
	v_dual_cndmask_b32 v21, v28, v21 :: v_dual_cndmask_b32 v28, v18, v26
	v_cndmask_b32_e32 v18, v26, v18, vcc_lo
	v_cndmask_b32_e32 v34, v2, v10, vcc_lo
	v_cndmask_b32_e32 v2, v10, v2, vcc_lo
	v_mov_b32_e32 v10, 0x5410
	v_dual_mov_b32 v26, 0x7632 :: v_dual_cndmask_b32 v35, v1, v9
	v_dual_cndmask_b32 v1, v9, v1 :: v_dual_cndmask_b32 v4, v54, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v26, vcc_lo
	v_cndmask_b32_e32 v6, v55, v58, vcc_lo
	v_cndmask_b32_e32 v8, v57, v62, vcc_lo
	v_cndmask_b32_e32 v12, v56, v61, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v14, v60, v52, vcc_lo
	v_dual_cndmask_b32 v16, v63, v50 :: v_dual_cndmask_b32 v19, v48, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v22, v46, v42, vcc_lo
	v_cndmask_b32_e32 v27, v45, v38, vcc_lo
	v_cndmask_b32_e32 v3, v59, v54, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v5, v58, v55, vcc_lo
	v_cndmask_b32_e32 v7, v62, v57, vcc_lo
	v_cndmask_b32_e32 v11, v61, v56, vcc_lo
	v_cndmask_b32_e32 v13, v52, v60, vcc_lo
	v_cndmask_b32_e32 v15, v50, v63, vcc_lo
	v_dual_cndmask_b32 v17, v44, v48 :: v_dual_cndmask_b32 v20, v42, v46
	v_cndmask_b32_e32 v25, v38, v45, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v9
	v_dual_cndmask_b32 v24, v40, v41 :: v_dual_and_b32 v37, 0x7060706, v10
	v_cndmask_b32_e32 v23, v41, v40, vcc_lo
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v36
	v_perm_b32 v2, v4, v3, v37
	v_perm_b32 v3, v6, v5, v36
	v_perm_b32 v4, v6, v5, v37
	v_perm_b32 v5, v8, v7, v36
	v_perm_b32 v6, v8, v7, v37
	v_perm_b32 v7, v12, v11, v36
	v_perm_b32 v8, v12, v11, v37
	v_perm_b32 v9, v14, v13, v36
	v_perm_b32 v10, v14, v13, v37
	v_perm_b32 v11, v16, v15, v36
	v_perm_b32 v12, v16, v15, v37
	v_perm_b32 v13, v19, v17, v36
	v_perm_b32 v14, v19, v17, v37
	v_perm_b32 v15, v22, v20, v36
	v_perm_b32 v16, v22, v20, v37
	v_perm_b32 v19, v26, v25, v36
	v_perm_b32 v20, v26, v25, v37
	v_perm_b32 v25, v31, v33, v36
	v_perm_b32 v26, v31, v33, v37
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v76, v77, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v38, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v0, 32, v33
	v_perm_b32 v17, v24, v23, v36
	v_perm_b32 v18, v24, v23, v37
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 197
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 197
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12148
; TotalNumSgprs: 47
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 197
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
