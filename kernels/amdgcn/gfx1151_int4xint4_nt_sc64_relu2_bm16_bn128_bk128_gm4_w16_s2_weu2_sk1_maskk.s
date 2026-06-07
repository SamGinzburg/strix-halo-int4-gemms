	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v9, 31, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v10, 24, v10
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v1
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_mul_i32 s11, s11, s9
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_mul_hi_u32 s11, s9, s11
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	s_cselect_b32 s8, s12, s9
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_xor_b32 s8, s8, s11
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s20, s16, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s16, s16, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s20
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s16
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 4
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	s_xor_b32 s16, s2, s6
	s_cvt_f32_u32 s17, s18
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v70, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v48, 0 :: v_dual_and_b32 v13, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s10, 0, s18
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s17, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 24, v8
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s11
	v_xor_b32_e32 v8, v8, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v77, v0, 4, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	v_lshlrev_b32_e32 v78, 1, v0
	v_mov_b32_e32 v74, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v80, 0, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s17
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_ashr_i32 s17, s16, 31
	s_mul_i32 s19, s5, s18
	s_sub_i32 s16, s10, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s21, s16, s18
	s_cmp_ge_u32 s16, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s16, s21, s16
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s16, s18
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s19, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s40, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[5:6], null, s40, v3, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s18, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s18, v1
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v6, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s21, s3
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
	s_ashr_i32 s34, s16, 6
.Ltmp21:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s2, s6, s40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v4, s18, s2, v5
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
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[4:5], v4, s[24:27], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s21, 0x80
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
	v_lshl_or_b32 v3, s19, 7, v3
	s_lshl_b32 s1, s17, 8
	s_lshl_b32 s17, s17, 7
	s_lshl_b32 s0, s19, 8
	s_add_i32 s44, s18, 32
	v_subrev_nc_u32_e32 v3, s17, v3
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 24, v78
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v5, s33, v13
	v_sub_nc_u32_e32 v81, s40, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v13, 5, v4
	v_mad_u64_u32 v[10:11], null, s40, v3, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s34, v5
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_mad_u64_u32 v[11:12], null, s40, v2, v[9:10]
	v_lshlrev_b32_e32 v82, 1, v5
	v_add_nc_u32_e32 v83, 0, v4
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v86, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s35, 1
	s_sub_i32 s42, s0, s1
	s_lshl_b32 s43, s7, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
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
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[156:157], v[162:163], v[130:137] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v154, v82, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v155, v88, s[36:39], 0 offen
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[162:163], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
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
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v154, 16, v154
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v93, v93, v154
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
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v94, v94, v154 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v94, v159
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v90, v90, v154
	v_dual_mul_f32 v95, v95, v154 :: v_dual_lshlrev_b32 v156, 16, v156
	v_mul_f32_e32 v91, v91, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v97, v97, v154 :: v_dual_lshlrev_b32 v160, 16, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v94, v88, s[36:39], 0 offen offset:68
	buffer_load_u16 v159, v88, s[36:39], 0 offen offset:72
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v91, v156
	v_fmac_f32_e32 v48, v90, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v90, v88, s[36:39], 0 offen offset:36
	buffer_load_u16 v155, v88, s[36:39], 0 offen offset:40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v95, v160
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v98, v98, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v91, v88, s[36:39], 0 offen offset:44
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v92, v92, v154 :: v_dual_lshlrev_b32 v157, 16, v157
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v95, v88, s[36:39], 0 offen offset:76
	buffer_load_u16 v160, v88, s[36:39], 0 offen offset:80
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v101, v101, v154
	v_mul_f32_e32 v104, v104, v154
	v_mul_f32_e32 v103, v103, v154
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v92, v157
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v92, v88, s[36:39], 0 offen offset:52
	buffer_load_u16 v157, v88, s[36:39], 0 offen offset:56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v105, v105, v154
	v_mul_f32_e32 v106, v106, v154
	v_mul_f32_e32 v109, v109, v154
	v_mul_f32_e32 v140, v140, v154
	v_mul_f32_e32 v111, v111, v154
	v_mul_f32_e32 v113, v113, v154
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v102, v102, v154 :: v_dual_lshlrev_b32 v159, 16, v159
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v96, v96, v154 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v98, v163 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v98, v88, s[36:39], 0 offen offset:100
	buffer_load_u16 v163, v88, s[36:39], 0 offen offset:104
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v96, v161
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v96, v88, s[36:39], 0 offen offset:84
	buffer_load_u16 v161, v88, s[36:39], 0 offen offset:88
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v93, v158
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v93, v88, s[36:39], 0 offen offset:60
	buffer_load_u16 v158, v88, s[36:39], 0 offen offset:64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v100, v100, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v156, 16, v156
	v_lshlrev_b32_e32 v90, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v99, v99, v154 :: v_dual_fmac_f32 v66, v101, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v91, v88, s[36:39], 0 offen offset:124
	buffer_load_u16 v101, v88, s[36:39], 0 offen offset:128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v102, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v68, v99, v90 :: v_dual_lshlrev_b32 v157, 16, v157
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v90, v88, s[36:39], 0 offen offset:108
	buffer_load_u16 v99, v88, s[36:39], 0 offen offset:112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v103, v92 :: v_dual_lshlrev_b32 v95, 16, v95
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v107, v107, v154 :: v_dual_lshlrev_b32 v160, 16, v160
	v_mul_f32_e32 v112, v112, v154
	v_mul_f32_e32 v116, v116, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v102, v88, s[36:39], 0 offen offset:132
	buffer_load_u16 v156, v88, s[36:39], 0 offen offset:136
	buffer_load_u16 v92, v88, s[36:39], 0 offen offset:140
	buffer_load_u16 v103, v88, s[36:39], 0 offen offset:144
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v58, v109, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v95, v88, s[36:39], 0 offen offset:188
	buffer_load_u16 v109, v88, s[36:39], 0 offen offset:192
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v114, v114, v154
	v_mul_f32_e32 v118, v118, v154
	v_mul_f32_e32 v119, v119, v154
	v_mul_f32_e32 v120, v120, v154
	v_mul_f32_e32 v128, v128, v154
	v_dual_mul_f32 v130, v130, v154 :: v_dual_fmac_f32 v63, v104, v157
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v104, v88, s[36:39], 0 offen offset:148
	buffer_load_u16 v157, v88, s[36:39], 0 offen offset:152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v121, v121, v154
	v_mul_f32_e32 v123, v123, v154
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v110, v110, v154 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v100, v155 :: v_dual_lshlrev_b32 v162, 16, v162
	v_fmac_f32_e32 v56, v111, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v100, v88, s[36:39], 0 offen offset:116
	buffer_load_u16 v155, v88, s[36:39], 0 offen offset:120
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v57, v110, v160 :: v_dual_fmac_f32 v70, v97, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v97, v88, s[36:39], 0 offen offset:92
	buffer_load_u16 v162, v88, s[36:39], 0 offen offset:96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v108, v108, v154
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v107, v94 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v94, v88, s[36:39], 0 offen offset:172
	buffer_load_u16 v107, v88, s[36:39], 0 offen offset:176
	buffer_load_u16 v96, v88, s[36:39], 0 offen offset:204
	buffer_load_u16 v111, v88, s[36:39], 0 offen offset:208
	buffer_load_u16 v110, v88, s[36:39], 0 offen offset:196
	buffer_load_u16 v160, v88, s[36:39], 0 offen offset:200
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v115, v154
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v112, v161
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v112, v88, s[36:39], 0 offen offset:212
	buffer_load_u16 v161, v88, s[36:39], 0 offen offset:216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v117, v117, v154
	v_mul_f32_e32 v126, v126, v154
	v_mul_f32_e32 v129, v129, v154
	v_mul_f32_e32 v131, v131, v154
	v_mul_f32_e32 v132, v132, v154
	v_mul_f32_e32 v133, v133, v154
	v_mul_f32_e32 v134, v134, v154
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v149, v149, v154 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v145, v145, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v51, v116, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v116, v88, s[36:39], 0 offen offset:244
	buffer_load_u16 v163, v88, s[36:39], 0 offen offset:248
	buffer_load_u16 v164, v88, s[36:39], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v135, v135, v154
	v_mul_f32_e32 v137, v137, v154
	v_mul_f32_e32 v142, v142, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v146, v146, v154 :: v_dual_lshlrev_b32 v91, 16, v91
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(14)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v45, v121, v91 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v144, v144, v154 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v108, v159 :: v_dual_lshlrev_b32 v158, 16, v158
	v_fmac_f32_e32 v62, v105, v93
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v93, v88, s[36:39], 0 offen offset:156
	buffer_load_u16 v105, v88, s[36:39], 0 offen offset:160
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v113, v97
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v97, v88, s[36:39], 0 offen offset:220
	buffer_load_u16 v113, v88, s[36:39], 0 offen offset:224
	buffer_load_u16 v108, v88, s[36:39], 0 offen offset:180
	buffer_load_u16 v159, v88, s[36:39], 0 offen offset:184
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v122, v122, v154
	v_mul_f32_e32 v124, v124, v154
	v_mul_f32_e32 v125, v125, v154
	v_mul_f32_e32 v127, v127, v154
	v_mul_f32_e32 v136, v136, v154
	v_mul_f32_e32 v138, v138, v154
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v150, v150, v154 :: v_dual_lshlrev_b32 v107, 16, v107
	v_dual_mul_f32 v143, v143, v154 :: v_dual_fmac_f32 v40, v126, v103
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v151, v151, v154 :: v_dual_fmac_f32 v32, v134, v107
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v106, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v106, v88, s[36:39], 0 offen offset:164
	buffer_load_u16 v158, v88, s[36:39], 0 offen offset:168
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v114, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v114, v88, s[36:39], 0 offen offset:228
	buffer_load_u16 v162, v88, s[36:39], 0 offen offset:232
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v119, v100 :: v_dual_lshlrev_b32 v110, 16, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v143, v112
	v_fmac_f32_e32 v15, v151, v116
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v139, v139, v154 :: v_dual_fmac_f32 v44, v122, v101
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v152, v152, v154 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v141, v141, v154
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v147, v147, v154 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_mul_f32 v148, v148, v154 :: v_dual_fmac_f32 v41, v125, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v153, v153, v154 :: v_dual_fmac_f32 v28, v138, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v154, 16, v155
	v_lshlrev_b32_e32 v155, 16, v156
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v49, v118, v99 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v156, 16, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v42, v124, v155 :: v_dual_lshlrev_b32 v97, 16, v97
	v_fmac_f32_e32 v52, v115, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v98, v88, s[36:39], 0 offen offset:236
	buffer_load_u16 v115, v88, s[36:39], 0 offen offset:240
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[88:89], v89, s[24:27], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v25, v141, v96 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v128, v156
	v_dual_fmac_f32 v21, v145, v97 :: v_dual_lshlrev_b32 v94, 16, v94
	v_dual_fmac_f32 v31, v135, v108 :: v_dual_add_nc_u32 v82, 2, v82
	v_dual_fmac_f32 v46, v120, v154 :: v_dual_fmac_f32 v37, v129, v93
	v_dual_fmac_f32 v36, v130, v105 :: v_dual_fmac_f32 v35, v131, v106
	v_fmac_f32_e32 v20, v146, v113
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v79, v87 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[88:89]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v157, 16, v158
	v_lshlrev_b32_e32 v158, 16, v159
	v_lshlrev_b32_e32 v159, 16, v160
	v_lshlrev_b32_e32 v160, 16, v161
	v_lshlrev_b32_e32 v161, 16, v162
	v_lshlrev_b32_e32 v162, 16, v163
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v29, v137, v95 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v163, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v123, v102 :: v_dual_fmac_f32 v22, v144, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v50, v117, v90 :: v_dual_fmac_f32 v39, v127, v104
	v_fmac_f32_e32 v30, v136, v158
	v_dual_fmac_f32 v27, v139, v110 :: v_dual_fmac_f32 v16, v150, v115
	v_fmac_f32_e32 v26, v140, v159
	v_fmac_f32_e32 v34, v132, v157
	v_dual_fmac_f32 v24, v142, v111 :: v_dual_fmac_f32 v33, v133, v94
	v_dual_fmac_f32 v18, v148, v161 :: v_dual_fmac_f32 v19, v147, v114
	v_fmac_f32_e32 v12, v153, v163
	v_fmac_f32_e32 v17, v149, v98
	v_fmac_f32_e32 v14, v152, v162
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow140
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v131, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v2, 24, v78
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v132, s23 :: v_dual_mov_b32 v129, s20
	v_dual_mov_b32 v131, s22 :: v_dual_mov_b32 v130, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshl_or_b32 v2, v13, 5, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v128, s19 :: v_dual_mov_b32 v127, s18
	v_dual_mov_b32 v126, s17 :: v_dual_mov_b32 v125, s16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v3, 0, v2
	v_xad_u32 v98, v2, 8, 0
	ds_load_2addr_stride64_b64 v[100:103], v3 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[84:87], v3 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[10:11], v3 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v99, v2, 16, 0
	ds_load_2addr_stride64_b64 v[116:119], v98 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[94:97], v98 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[171:172], v98 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v112, v2, 24, 0
	ds_load_2addr_stride64_b64 v[120:123], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[104:107], v99 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[173:174], v99 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[139:142], v112 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[108:111], v112 offset1:1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[175:176], v112 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[143:146], v3 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[133:136], v3 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[147:150], v98 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[151:154], v98 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[155:158], v99 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[159:162], v99 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[163:166], v112 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[167:170], v112 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[84:85], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[86:87], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[100:101], v[10:11], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[94:95], v[171:172], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[96:97], v[171:172], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[102:103], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[116:117], v[171:172], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[104:105], v[173:174], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[106:107], v[173:174], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[118:119], v[171:172], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[120:121], v[173:174], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[108:109], v[175:176], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[110:111], v[175:176], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[133:134], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[139:140], v[175:176], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[135:136], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[143:144], v[10:11], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[145:146], v[10:11], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[151:152], v[171:172], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[153:154], v[171:172], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[147:148], v[171:172], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[122:123], v[173:174], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[149:150], v[171:172], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[159:160], v[173:174], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[161:162], v[173:174], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[155:156], v[173:174], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[141:142], v[175:176], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[157:158], v[173:174], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[167:168], v[175:176], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[169:170], v[175:176], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[163:164], v[175:176], v[133:140] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[125:132], v[165:166], v[175:176], v[125:132] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v78
	v_cvt_f32_i32_e32 v11, v79
	v_cvt_f32_i32_e32 v79, v80
	v_cvt_f32_i32_e32 v80, v81
	v_cvt_f32_i32_e32 v81, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v84
	v_cvt_f32_i32_e32 v84, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	v_cvt_f32_i32_e32 v91, v92
	v_cvt_f32_i32_e32 v92, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v133
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v119, v135
	v_cvt_f32_i32_e32 v120, v136
	v_cvt_f32_i32_e32 v121, v137
	v_cvt_f32_i32_e32 v122, v138
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v124, v140
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v78, s34, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s35, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s3, s33, s34
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s3, s3, s0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	v_add_lshl_u32 v78, s3, v78, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s0, s7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s7
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s6, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v77, s1, v77, 1
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s5, s5, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v78, v78, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v77, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v133, 4, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v78 :: v_dual_add_nc_u32 v136, 12, v77
	v_mul_f32_e32 v2, v2, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	s_clause 0x2
	buffer_load_u16 v134, v134, s[8:11], 0 offen
	buffer_load_u16 v133, v133, s[8:11], 0 offen
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v133, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v133, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v133, 0xe4, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v76, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v3, v3, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v78 :: v_dual_add_nc_u32 v135, 8, v77
	v_dual_mul_f32 v6, v6, v78 :: v_dual_add_nc_u32 v137, 16, v77
	v_dual_mul_f32 v5, v5, v78 :: v_dual_add_nc_u32 v138, 20, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v8, v8, v78 :: v_dual_add_nc_u32 v139, 24, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	buffer_load_u16 v135, v135, s[8:11], 0 offen
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	s_clause 0x2
	buffer_load_u16 v137, v137, s[8:11], 0 offen
	buffer_load_u16 v138, v138, s[8:11], 0 offen
	buffer_load_u16 v139, v139, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v78 :: v_dual_add_nc_u32 v140, 28, v77
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_lshlrev_b32 v134, 16, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v78 :: v_dual_add_nc_u32 v141, 32, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v134, v2, v134, v48
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v9, v78 :: v_dual_add_nc_u32 v142, 36, v77
	v_dual_mul_f32 v80, v80, v78 :: v_dual_add_nc_u32 v143, 40, v77
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v140, v140, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v125, v125, v78 :: v_dual_lshlrev_b32 v136, 16, v136
	v_mul_f32_e32 v128, v128, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v134, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v78 :: v_dual_add_nc_u32 v144, 44, v77
	v_dual_mul_f32 v82, v82, v78 :: v_dual_add_nc_u32 v145, 48, v77
	v_dual_mul_f32 v79, v79, v78 :: v_dual_add_nc_u32 v146, 52, v77
	v_dual_mul_f32 v84, v84, v78 :: v_dual_add_nc_u32 v147, 56, v77
	v_dual_mul_f32 v81, v81, v78 :: v_dual_add_nc_u32 v148, 60, v77
	v_dual_mul_f32 v86, v86, v78 :: v_dual_add_nc_u32 v149, 64, v77
	v_dual_mul_f32 v83, v83, v78 :: v_dual_add_nc_u32 v150, 0x44, v77
	v_dual_mul_f32 v88, v88, v78 :: v_dual_add_nc_u32 v151, 0x48, v77
	v_dual_mul_f32 v85, v85, v78 :: v_dual_add_nc_u32 v152, 0x4c, v77
	v_dual_mul_f32 v90, v90, v78 :: v_dual_add_nc_u32 v153, 0x50, v77
	v_dual_mul_f32 v87, v87, v78 :: v_dual_add_nc_u32 v154, 0x54, v77
	v_dual_mul_f32 v92, v92, v78 :: v_dual_add_nc_u32 v155, 0x58, v77
	v_dual_mul_f32 v89, v89, v78 :: v_dual_add_nc_u32 v156, 0x5c, v77
	v_dual_mul_f32 v94, v94, v78 :: v_dual_add_nc_u32 v157, 0x60, v77
	v_dual_mul_f32 v91, v91, v78 :: v_dual_add_nc_u32 v158, 0x64, v77
	v_dual_mul_f32 v96, v96, v78 :: v_dual_add_nc_u32 v159, 0x68, v77
	v_dual_mul_f32 v93, v93, v78 :: v_dual_add_nc_u32 v160, 0x6c, v77
	v_dual_mul_f32 v98, v98, v78 :: v_dual_add_nc_u32 v161, 0x70, v77
	v_dual_mul_f32 v95, v95, v78 :: v_dual_add_nc_u32 v162, 0x74, v77
	v_dual_mul_f32 v100, v100, v78 :: v_dual_add_nc_u32 v163, 0x78, v77
	v_dual_mul_f32 v97, v97, v78 :: v_dual_add_nc_u32 v164, 0x7c, v77
	v_dual_mul_f32 v102, v102, v78 :: v_dual_add_nc_u32 v165, 0x80, v77
	v_dual_mul_f32 v99, v99, v78 :: v_dual_add_nc_u32 v166, 0x84, v77
	v_dual_mul_f32 v104, v104, v78 :: v_dual_add_nc_u32 v167, 0x88, v77
	v_dual_mul_f32 v101, v101, v78 :: v_dual_add_nc_u32 v168, 0x8c, v77
	v_dual_mul_f32 v106, v106, v78 :: v_dual_add_nc_u32 v169, 0x90, v77
	v_dual_mul_f32 v103, v103, v78 :: v_dual_add_nc_u32 v170, 0x94, v77
	v_dual_mul_f32 v108, v108, v78 :: v_dual_add_nc_u32 v171, 0x98, v77
	v_dual_mul_f32 v105, v105, v78 :: v_dual_add_nc_u32 v172, 0x9c, v77
	v_dual_mul_f32 v110, v110, v78 :: v_dual_add_nc_u32 v173, 0xa0, v77
	v_dual_mul_f32 v107, v107, v78 :: v_dual_add_nc_u32 v174, 0xa4, v77
	v_dual_mul_f32 v112, v112, v78 :: v_dual_add_nc_u32 v175, 0xa8, v77
	v_dual_mul_f32 v109, v109, v78 :: v_dual_add_nc_u32 v176, 0xac, v77
	v_dual_mul_f32 v114, v114, v78 :: v_dual_add_nc_u32 v177, 0xb0, v77
	v_dual_mul_f32 v111, v111, v78 :: v_dual_add_nc_u32 v178, 0xb4, v77
	v_dual_mul_f32 v116, v116, v78 :: v_dual_add_nc_u32 v179, 0xb8, v77
	v_dual_mul_f32 v113, v113, v78 :: v_dual_add_nc_u32 v180, 0xbc, v77
	v_dual_mul_f32 v118, v118, v78 :: v_dual_add_nc_u32 v181, 0xc0, v77
	v_dual_mul_f32 v115, v115, v78 :: v_dual_add_nc_u32 v182, 0xc4, v77
	v_dual_mul_f32 v120, v120, v78 :: v_dual_add_nc_u32 v183, 0xc8, v77
	v_dual_mul_f32 v117, v117, v78 :: v_dual_add_nc_u32 v184, 0xcc, v77
	v_dual_mul_f32 v122, v122, v78 :: v_dual_add_nc_u32 v185, 0xd0, v77
	v_dual_mul_f32 v119, v119, v78 :: v_dual_add_nc_u32 v186, 0xd4, v77
	v_dual_mul_f32 v124, v124, v78 :: v_dual_add_nc_u32 v187, 0xd8, v77
	v_mul_f32_e32 v121, v121, v78
	v_dual_mul_f32 v123, v123, v78 :: v_dual_add_nc_u32 v2, 0xe0, v77
	v_mul_f32_e32 v126, v126, v78
	v_mul_f32_e32 v127, v127, v78
	v_mul_f32_e32 v129, v129, v78
	v_mul_f32_e32 v130, v130, v78
	v_mul_f32_e32 v131, v131, v78
	v_mul_f32_e32 v78, v132, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v132, 0xdc, v77
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v136, v74
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v136, 0xec, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v74, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v5, v5
	s_waitcnt vmcnt(4)
	v_dual_max_f32 v76, 0, v5 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v135, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v135, 0xe8, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v137, v73
	v_fma_f32 v7, v7, v138, v72
	v_fma_f32 v8, v8, v139, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v138, 0xf4, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v75, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v137, 0xf0, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v73, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v139, 0xf8, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v71, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v77, 0xfc, v77
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v4, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x1f
	buffer_load_u16 v141, v141, s[8:11], 0 offen
	buffer_load_u16 v142, v142, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v144, v144, s[8:11], 0 offen
	buffer_load_u16 v145, v145, s[8:11], 0 offen
	buffer_load_u16 v146, v146, s[8:11], 0 offen
	buffer_load_u16 v147, v147, s[8:11], 0 offen
	buffer_load_u16 v148, v148, s[8:11], 0 offen
	buffer_load_u16 v149, v149, s[8:11], 0 offen
	buffer_load_u16 v150, v150, s[8:11], 0 offen
	buffer_load_u16 v151, v151, s[8:11], 0 offen
	buffer_load_u16 v152, v152, s[8:11], 0 offen
	buffer_load_u16 v153, v153, s[8:11], 0 offen
	buffer_load_u16 v154, v154, s[8:11], 0 offen
	buffer_load_u16 v155, v155, s[8:11], 0 offen
	buffer_load_u16 v156, v156, s[8:11], 0 offen
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	buffer_load_u16 v165, v165, s[8:11], 0 offen
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	buffer_load_u16 v167, v167, s[8:11], 0 offen
	buffer_load_u16 v168, v168, s[8:11], 0 offen
	buffer_load_u16 v169, v169, s[8:11], 0 offen
	buffer_load_u16 v170, v170, s[8:11], 0 offen
	buffer_load_u16 v171, v171, s[8:11], 0 offen
	buffer_load_u16 v172, v172, s[8:11], 0 offen
	s_clause 0x17
	buffer_load_u16 v173, v173, s[8:11], 0 offen
	buffer_load_u16 v174, v174, s[8:11], 0 offen
	buffer_load_u16 v175, v175, s[8:11], 0 offen
	buffer_load_u16 v176, v176, s[8:11], 0 offen
	buffer_load_u16 v177, v177, s[8:11], 0 offen
	buffer_load_u16 v178, v178, s[8:11], 0 offen
	buffer_load_u16 v179, v179, s[8:11], 0 offen
	buffer_load_u16 v180, v180, s[8:11], 0 offen
	buffer_load_u16 v181, v181, s[8:11], 0 offen
	buffer_load_u16 v182, v182, s[8:11], 0 offen
	buffer_load_u16 v183, v183, s[8:11], 0 offen
	buffer_load_u16 v184, v184, s[8:11], 0 offen
	buffer_load_u16 v185, v185, s[8:11], 0 offen
	buffer_load_u16 v186, v186, s[8:11], 0 offen
	buffer_load_u16 v187, v187, s[8:11], 0 offen
	buffer_load_u16 v132, v132, s[8:11], 0 offen
	buffer_load_u16 v188, v2, s[8:11], 0 offen
	buffer_load_u16 v133, v133, s[8:11], 0 offen
	buffer_load_u16 v135, v135, s[8:11], 0 offen
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	buffer_load_u16 v137, v137, s[8:11], 0 offen
	buffer_load_u16 v138, v138, s[8:11], 0 offen
	buffer_load_u16 v139, v139, s[8:11], 0 offen
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v72, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v2, 16, v140
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v75, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v7, v7, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v2, v70
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v70, v9, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v140, 16, v141
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v141, 16, v142
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v142, 16, v143
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v143, 16, v144
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v144, 16, v145
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v140, v69
	v_fma_f32 v11, v11, v141, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v145, 16, v146
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v146, 16, v147
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v79, v79, v142, v67
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v69, v10, s2
	v_cndmask_b32_e64 v11, v68, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v147, 16, v148
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v148, 16, v149
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v149, 16, v150
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v82, v82, v145, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v79, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v79, 0, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v83, v83, v146, v63
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(45)
	v_dual_max_f32 v5, v10, v10 :: v_dual_lshlrev_b32 v150, 16, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v85, v85, v148, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v82, s2
	v_cndmask_b32_e64 v63, v63, v83, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v61, v61, v85, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v77, v78, v77, v12
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v78, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v80, v143, v66
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v67, v67
	v_max_f32_e32 v67, 0, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v12, v77, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v77, 0, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v80, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v151, 16, v152
	v_lshlrev_b32_e32 v152, 16, v153
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v81, v81, v144, v65
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v11, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v84, v84, v147, v62
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v66, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v153, 16, v154
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v5, v64, v64 :: v_dual_lshlrev_b32 v154, 16, v155
	v_dual_max_f32 v80, 0, v6 :: v_dual_lshlrev_b32 v155, 16, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v156, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v87, v87, v150, v59
	v_fma_f32 v88, v88, v151, v58
	v_fma_f32 v89, v89, v152, v57
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v81, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v157, 16, v158
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v84, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v158, 16, v159
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v66, 0, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v86, v86, v149, v60
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v82, 0, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v90, v90, v153, v56
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v63, v63 :: v_dual_lshlrev_b32 v159, 16, v160
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v91, v91, v154, v55
	v_fma_f32 v92, v92, v155, v54
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v86, s2
	v_cndmask_b32_e64 v59, v59, v87, s2
	v_cndmask_b32_e64 v58, v58, v88, s2
	v_cndmask_b32_e64 v57, v57, v89, s2
	v_cndmask_b32_e64 v56, v56, v90, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v81, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v93, v93, v156, v53
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v65, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v160, 16, v161
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v61, v61 :: v_dual_lshlrev_b32 v161, 16, v162
	v_dual_max_f32 v63, 0, v6 :: v_dual_lshlrev_b32 v162, 16, v163
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v163, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v94, v157, v52
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v62, v62
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v95, v95, v158, v51
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v65, 0, v8 :: v_dual_lshlrev_b32 v164, 16, v165
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v64, 0, v7 :: v_dual_lshlrev_b32 v165, 16, v166
	v_dual_max_f32 v7, v57, v57 :: v_dual_lshlrev_b32 v166, 16, v167
	v_dual_max_f32 v6, v58, v58 :: v_dual_lshlrev_b32 v167, 16, v168
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v168, 16, v169
	v_lshlrev_b32_e32 v169, 16, v170
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v96, v96, v159, v50
	v_fma_f32 v98, v98, v161, v47
	v_fma_f32 v99, v99, v162, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v91, s2
	v_cndmask_b32_e64 v54, v54, v92, s2
	v_cndmask_b32_e64 v53, v53, v93, s2
	v_cndmask_b32_e64 v52, v52, v94, s2
	v_cndmask_b32_e64 v51, v51, v95, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v61, 0, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v97, v97, v160, v49
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v62, 0, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v100, v100, v163, v45
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v4, v60, v60 :: v_dual_max_f32 v5, v59, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v170, 16, v171
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v58, 0, v6 :: v_dual_lshlrev_b32 v171, 16, v172
	v_dual_max_f32 v59, 0, v7 :: v_dual_lshlrev_b32 v172, 16, v173
	v_dual_max_f32 v8, v56, v56 :: v_dual_lshlrev_b32 v173, 16, v174
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v174, 16, v175
	v_lshlrev_b32_e32 v175, 16, v176
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v52, v52 :: v_dual_lshlrev_b32 v176, 16, v177
	v_dual_max_f32 v56, 0, v4 :: v_dual_lshlrev_b32 v177, 16, v178
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v101, v101, v164, v44
	v_fma_f32 v102, v102, v165, v43
	v_fma_f32 v103, v103, v166, v42
	v_fma_f32 v104, v104, v167, v41
	v_fma_f32 v105, v105, v168, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v96, s2
	v_cndmask_b32_e64 v49, v49, v97, s2
	v_cndmask_b32_e64 v47, v47, v98, s2
	v_cndmask_b32_e64 v46, v46, v99, s2
	v_cndmask_b32_e64 v45, v45, v100, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v57, 0, v5 :: v_dual_max_f32 v60, 0, v8
	v_max_f32_e32 v4, v55, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v179
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v53, v53 :: v_dual_lshlrev_b32 v179, 16, v180
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v180, 16, v181
	v_lshlrev_b32_e32 v181, 16, v182
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v5, v54, v54 :: v_dual_max_f32 v8, v51, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v182, 16, v183
	v_lshlrev_b32_e32 v183, 16, v184
	v_lshlrev_b32_e32 v184, 16, v185
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v54, 0, v7 :: v_dual_lshlrev_b32 v185, 16, v186
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v186, 16, v187
	v_lshlrev_b32_e32 v187, 16, v188
	v_lshlrev_b32_e32 v135, 16, v135
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v106, v106, v169, v39
	v_fma_f32 v107, v107, v170, v38
	v_fma_f32 v108, v108, v171, v37
	v_fma_f32 v109, v109, v172, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v101, s2
	v_cndmask_b32_e64 v43, v43, v102, s2
	v_cndmask_b32_e64 v42, v42, v103, s2
	v_cndmask_b32_e64 v41, v41, v104, s2
	v_cndmask_b32_e64 v40, v40, v105, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v51, 0, v4 :: v_dual_max_f32 v52, 0, v5
	v_max_f32_e32 v53, 0, v6
	v_dual_max_f32 v55, 0, v8 :: v_dual_max_f32 v4, v50, v50
	v_dual_max_f32 v5, v49, v49 :: v_dual_max_f32 v6, v47, v47
	v_dual_max_f32 v7, v46, v46 :: v_dual_max_f32 v8, v45, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v132, 16, v132
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v45, 0, v4 :: v_dual_lshlrev_b32 v138, 16, v138
	v_dual_max_f32 v46, 0, v5 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v110, v173, v35
	v_fma_f32 v111, v111, v174, v34
	v_fma_f32 v112, v112, v175, v33
	v_fma_f32 v113, v113, v176, v32
	v_fma_f32 v114, v114, v177, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v106, s2
	v_cndmask_b32_e64 v38, v38, v107, s2
	v_cndmask_b32_e64 v37, v37, v108, s2
	v_cndmask_b32_e64 v36, v36, v109, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v47, 0, v6
	v_dual_max_f32 v49, 0, v7 :: v_dual_max_f32 v50, 0, v8
	v_dual_max_f32 v4, v44, v44 :: v_dual_max_f32 v5, v43, v43
	v_dual_max_f32 v6, v42, v42 :: v_dual_max_f32 v7, v41, v41
	v_max_f32_e32 v8, v40, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v115, v178, v30
	v_fma_f32 v117, v117, v180, v28
	v_fma_f32 v118, v118, v181, v27
	v_fma_f32 v119, v119, v182, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v110, s2
	v_cndmask_b32_e64 v34, v34, v111, s2
	v_cndmask_b32_e64 v33, v33, v112, s2
	v_cndmask_b32_e64 v32, v32, v113, s2
	v_cndmask_b32_e64 v31, v31, v114, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v40, 0, v4 :: v_dual_max_f32 v43, 0, v7
	v_dual_max_f32 v41, 0, v5 :: v_dual_max_f32 v42, 0, v6
	v_max_f32_e32 v7, v36, v36
	v_dual_max_f32 v44, 0, v8 :: v_dual_max_f32 v5, v38, v38
	v_max_f32_e32 v6, v37, v37
	v_max_f32_e32 v4, v39, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v116, v116, v179, v29
	v_fma_f32 v120, v120, v183, v25
	v_fma_f32 v122, v122, v185, v23
	v_fma_f32 v123, v123, v186, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v30, v115, s2
	v_cndmask_b32_e64 v28, v28, v117, s2
	v_cndmask_b32_e64 v68, v27, v118, s2
	v_cndmask_b32_e64 v26, v26, v119, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v35, v35
	v_dual_max_f32 v36, 0, v5 :: v_dual_max_f32 v37, 0, v6
	v_dual_max_f32 v35, 0, v4 :: v_dual_max_f32 v4, v34, v34
	v_dual_max_f32 v5, v33, v33 :: v_dual_max_f32 v38, 0, v7
	v_dual_max_f32 v7, v31, v31 :: v_dual_max_f32 v6, v32, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v121, v184, v24
	v_fma_f32 v124, v124, v132, v21
	v_fma_f32 v127, v127, v135, v18
	v_fma_f32 v128, v128, v136, v17
	v_fma_f32 v129, v129, v137, v16
	v_fma_f32 v130, v130, v138, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v116, s2
	v_cndmask_b32_e64 v25, v25, v120, s2
	v_cndmask_b32_e64 v23, v23, v122, s2
	v_cndmask_b32_e64 v69, v22, v123, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v39, 0, v8 :: v_dual_max_f32 v8, v30, v30
	v_dual_max_f32 v30, 0, v4 :: v_dual_max_f32 v31, 0, v5
	v_max_f32_e32 v33, 0, v7
	v_dual_max_f32 v5, v28, v28 :: v_dual_max_f32 v32, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v27, 0, v8
	v_dual_max_f32 v7, v26, v26 :: v_dual_max_f32 v6, v68, v68
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v125, v187, v20
	v_fma_f32 v126, v126, v133, v19
	v_fma_f32 v131, v131, v139, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v24, v121, s2
	v_cndmask_b32_e64 v70, v21, v124, s2
	v_cndmask_b32_e64 v72, v18, v127, s2
	v_cndmask_b32_e64 v17, v17, v128, s2
	v_cndmask_b32_e64 v73, v16, v129, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v16, v48, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v15, v130, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v25, v25
	v_dual_max_f32 v26, 0, v5 :: v_dual_max_f32 v21, 0, v7
	v_dual_max_f32 v4, v29, v29 :: v_dual_max_f32 v25, 0, v6
	v_dual_max_f32 v5, v23, v23 :: v_dual_max_f32 v6, v69, v69
	v_max_f32_e32 v9, v15, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v20, v125, s2
	v_cndmask_b32_e64 v71, v19, v126, s2
	v_cndmask_b32_e64 v48, v14, v131, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v74, 0, v16
	v_dual_max_f32 v28, 0, v4 :: v_dual_max_f32 v7, v70, v70
	v_dual_max_f32 v22, 0, v8 :: v_dual_max_f32 v19, 0, v5
	v_max_f32_e32 v4, v24, v24
	v_dual_max_f32 v16, 0, v6 :: v_dual_max_f32 v5, v72, v72
	v_max_f32_e32 v6, v17, v17
	v_max_f32_e32 v8, v20, v20
	v_dual_max_f32 v18, 0, v7 :: v_dual_max_f32 v7, v73, v73
	v_dual_max_f32 v20, 0, v4 :: v_dual_max_f32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_max_f32 v11, 0, v6 :: v_dual_max_f32 v6, v12, v12
	v_dual_max_f32 v10, 0, v5 :: v_dual_max_f32 v5, v48, v48
	v_max_f32_e32 v4, v71, v71
	v_dual_max_f32 v14, 0, v8 :: v_dual_mul_f32 v17, v74, v74
	v_dual_max_f32 v8, 0, v7 :: v_dual_mul_f32 v29, v76, v76
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v12, v3, v3 :: v_dual_max_f32 v7, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v15, 0, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v3.l, v12.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v61, v61, v61
	v_mul_f32_e32 v63, v63, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, v4.h
	v_and_b32_e32 v24, 1, v4
	v_mov_b16_e32 v34.h, v4.h
	v_mov_b16_e32 v4.l, v29.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v62, v62, v62 :: v_dual_and_b32 v23, 1, v3
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, 0, v6
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, s7, v13
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v75, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v17, v24, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v24, v77, v77
	v_mul_f32_e32 v57, v57, v57
	v_mul_f32_e32 v53, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v13.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v59, v59, v59
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v3, s33, s6, v6
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v12, v23, 0x7fff
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v23, v78, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v34
	v_mov_b16_e32 v6.l, v17.h
	v_and_b32_e32 v17, 1, v4
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v4.l, v23.h
	v_add3_u32 v13, v13, v12, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v48, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v29, v17, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v17, v66, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v4
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v66.l, v48.h
	v_mov_b16_e32 v66.h, v4.h
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v12.l, v13.h
	v_add3_u32 v24, v24, v34, 0x7fff
	v_add3_u32 v13, v23, v29, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v34, v67, v67 :: v_dual_and_b32 v23, 1, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v24.h
	v_mov_b16_e32 v67.h, v4.h
	v_add3_u32 v23, v48, v23, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v48, v82, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v17, v29, 0x7fff
	v_mov_b16_e32 v29.l, v34.h
	v_mov_b16_e32 v29.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v24, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v23.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v51, v51, v51
	v_mul_f32_e32 v55, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v29
	v_mov_b16_e32 v4.l, v24.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v66, v81, v81
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v34, v23, 0x7fff
	v_and_b32_e32 v29, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v67.l, v66.h
	v_mov_b16_e32 v4.l, v48.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v47, v47, v47 :: v_dual_mul_f32 v50, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v24, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v29, 1, v67
	v_mov_b16_e32 v67.l, v61.h
	v_and_b32_e32 v24, 1, v4
	v_mov_b16_e32 v23.l, v34.h
	v_mov_b16_e32 v4.l, v62.h
	v_add3_u32 v29, v66, v29, 0x7fff
	v_and_b32_e32 v34, 1, v67
	v_add3_u32 v24, v48, v24, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v42, v42
	v_mul_f32_e32 v40, v40, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v29.h
	v_add3_u32 v34, v61, v34, 0x7fff
	v_mov_b16_e32 v61.l, v63.h
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v48, v64, v64
	v_dual_mul_f32 v64, v65, v65 :: v_dual_and_b32 v29, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v61, 1, v61
	v_mov_b16_e32 v4.l, v48.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v29, v62, v29, 0x7fff
	v_mov_b16_e32 v65.l, v64.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v56, v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v34.h
	v_and_b32_e32 v62, 1, v4
	v_add3_u32 v34, v63, v61, 0x7fff
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v4.l, v56.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v41, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v48, v62, 0x7fff
	v_mov_b16_e32 v48.l, v34.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v34, v58, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v62, 1, v4
	v_add3_u32 v58, v64, v61, 0x7fff
	v_mov_b16_e32 v61.l, v57.h
	v_mov_b16_e32 v61.h, v4.h
	v_mov_b16_e32 v4.l, v34.h
	v_add3_u32 v56, v56, v62, 0x7fff
	v_mov_b16_e32 v56.l, v58.h
	v_mov_b16_e32 v62.l, v59.h
	v_and_b32_e32 v58, 1, v61
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v60, v60, v60
	v_mul_f32_e32 v38, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v57, v58, 0x7fff
	v_add3_u32 v34, v34, v61, 0x7fff
	v_and_b32_e32 v61, 1, v62
	v_mov_b16_e32 v4.l, v60.h
	v_mov_b16_e32 v62.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v52, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v57.h
	v_add3_u32 v57, v59, v61, 0x7fff
	v_and_b32_e32 v58, 1, v4
	v_and_b32_e32 v59, 1, v62
	v_mov_b16_e32 v4.l, v52.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v54, v54, v54
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v60, v58, 0x7fff
	v_mov_b16_e32 v58.l, v57.h
	v_and_b32_e32 v57, 1, v4
	v_add3_u32 v51, v51, v59, 0x7fff
	v_mov_b16_e32 v4.l, v54.h
	v_mov_b16_e32 v59.l, v53.h
	v_mov_b16_e32 v59.h, v4.h
	v_add3_u32 v52, v52, v57, 0x7fff
	v_mov_b16_e32 v60.l, v55.h
	v_and_b32_e32 v57, 1, v4
	v_mov_b16_e32 v60.h, v4.h
	v_and_b32_e32 v59, 1, v59
	v_mov_b16_e32 v4.l, v45.h
	v_mov_b16_e32 v52.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v37, v37, v37 :: v_dual_mul_f32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v53, v59, 0x7fff
	v_add3_u32 v53, v54, v57, 0x7fff
	v_and_b32_e32 v54, 1, v60
	v_and_b32_e32 v57, 1, v4
	v_mov_b16_e32 v4.l, v47.h
	v_mov_b16_e32 v53.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v49, v49, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v55, v54, 0x7fff
	v_mov_b16_e32 v54.l, v46.h
	v_mov_b16_e32 v54.h, v4.h
	v_add3_u32 v45, v45, v57, 0x7fff
	v_mov_b16_e32 v55.h, v4.h
	v_mov_b16_e32 v45.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v39, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v54
	v_and_b32_e32 v54, 1, v4
	v_mov_b16_e32 v4.l, v50.h
	v_mov_b16_e32 v55.l, v49.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v46, v46, v51, 0x7fff
	v_add3_u32 v47, v47, v54, 0x7fff
	v_and_b32_e32 v51, 1, v4
	v_and_b32_e32 v54, 1, v55
	v_mov_b16_e32 v55.l, v40.h
	v_mov_b16_e32 v47.l, v46.h
	v_mov_b16_e32 v4.l, v41.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v43, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v46, v49, v54, 0x7fff
	v_add3_u32 v49, v50, v51, 0x7fff
	v_and_b32_e32 v50, 1, v55
	v_mov_b16_e32 v51.l, v44.h
	v_mov_b16_e32 v51.h, v4.h
	v_mov_b16_e32 v49.l, v46.h
	v_and_b32_e32 v46, 1, v4
	v_add3_u32 v40, v40, v50, 0x7fff
	v_mov_b16_e32 v4.l, v43.h
	v_mov_b16_e32 v50.l, v42.h
	v_mov_b16_e32 v50.h, v4.h
	v_add3_u32 v41, v41, v46, 0x7fff
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v46, 1, v4
	v_mov_b16_e32 v4.l, v35.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_and_b32 v50, 1, v50
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v25, v25, v25
	v_mul_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v42, v50, 0x7fff
	v_add3_u32 v42, v43, v46, 0x7fff
	v_and_b32_e32 v43, 1, v51
	v_and_b32_e32 v46, 1, v4
	v_mov_b16_e32 v4.l, v37.h
	v_mov_b16_e32 v42.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v44, v43, 0x7fff
	v_mov_b16_e32 v43.l, v36.h
	v_mov_b16_e32 v43.h, v4.h
	v_add3_u32 v35, v35, v46, 0x7fff
	v_mov_b16_e32 v44.l, v38.h
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v44.h, v4.h
	v_and_b32_e32 v40, 1, v43
	v_and_b32_e32 v43, 1, v4
	v_mov_b16_e32 v4.l, v39.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v22, v22, v22 :: v_dual_mul_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v36, v40, 0x7fff
	v_add3_u32 v37, v37, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v4
	v_and_b32_e32 v43, 1, v44
	v_mov_b16_e32 v44.l, v30.h
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e32 v4.l, v31.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v38, v43, 0x7fff
	v_add3_u32 v38, v39, v40, 0x7fff
	v_and_b32_e32 v39, 1, v44
	v_mov_b16_e32 v40.l, v27.h
	v_mov_b16_e32 v40.h, v4.h
	v_mov_b16_e32 v38.l, v36.h
	v_and_b32_e32 v36, 1, v4
	v_add3_u32 v30, v30, v39, 0x7fff
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v33.h
	v_add3_u32 v31, v31, v36, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v18, v18, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v32.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v36, 1, v4
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v11, v11, v11
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v16, v16, v16
	v_mul_f32_e32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v32, v39, 0x7fff
	v_add3_u32 v32, v33, v36, 0x7fff
	v_mov_b16_e32 v30.l, v26.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v33, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v30.h
	v_mov_b16_e32 v30.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v28, v28, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v27, v33, 0x7fff
	v_mov_b16_e32 v33.l, v21.h
	v_mov_b16_e32 v33.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v28.h
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v4.l, v25.h
	v_add3_u32 v28, v28, v36, 0x7fff
	v_mov_b16_e32 v28.l, v27.h
	v_and_b32_e32 v27, 1, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v30, 1, v4
	v_mov_b16_e32 v4.l, v22.h
	v_add3_u32 v26, v26, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v25, v30, 0x7fff
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v33.l, v20.h
	v_and_b32_e32 v27, 1, v4
	v_mov_b16_e32 v4.l, v19.h
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v21, v21, v30, 0x7fff
	v_and_b32_e32 v26, 1, v33
	v_add3_u32 v22, v22, v27, 0x7fff
	v_mov_b16_e32 v27.l, v14.h
	v_mov_b16_e32 v27.h, v4.h
	v_mov_b16_e32 v22.l, v21.h
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v4.h
	v_add3_u32 v19, v19, v21, 0x7fff
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v15.h
	v_mov_b16_e32 v19.l, v20.h
	v_and_b32_e32 v26, 1, v26
	v_and_b32_e32 v20, 1, v27
	v_add3_u32 v18, v18, v21, 0x7fff
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v11.h
	v_add3_u32 v16, v16, v26, 0x7fff
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v16.h, v4.h
	v_mov_b16_e32 v20.h, v4.h
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v15.l, v14.h
	v_and_b32_e32 v14, 1, v4
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v4.l, v9.h
	v_dual_cndmask_b32 v27, v35, v41 :: v_dual_and_b32 v20, 1, v20
	v_add3_u32 v7, v7, v21, 0x7fff
	v_cndmask_b32_e32 v21, v47, v53, vcc_lo
	v_add3_u32 v10, v10, v16, 0x7fff
	v_and_b32_e32 v16, 1, v4
	v_mov_b16_e32 v4.l, v5.h
	v_add3_u32 v8, v8, v20, 0x7fff
	v_cndmask_b32_e32 v33, v42, v37, vcc_lo
	v_cndmask_b32_e32 v36, v18, v22, vcc_lo
	v_add3_u32 v9, v9, v16, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v9.l, v8.h
	v_cndmask_b32_e32 v16, v56, v58, vcc_lo
	v_cndmask_b32_e32 v20, v34, v52, vcc_lo
	v_cndmask_b32_e32 v18, v22, v18, vcc_lo
	v_add3_u32 v1, v5, v4, 0x7fff
	v_mov_b16_e32 v1.l, v7.h
	v_dual_cndmask_b32 v5, v13, v6 :: v_dual_cndmask_b32 v4, v6, v13
	v_dual_cndmask_b32 v7, v17, v12 :: v_dual_cndmask_b32 v6, v12, v17
	v_cndmask_b32_e32 v17, v52, v34, vcc_lo
	v_add3_u32 v11, v11, v14, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_cndmask_b32_e32 v10, v29, v23, vcc_lo
	v_cndmask_b32_e32 v12, v48, v24, vcc_lo
	v_dual_cndmask_b32 v13, v24, v48 :: v_dual_cndmask_b32 v24, v49, v45
	v_cndmask_b32_e32 v30, v37, v42, vcc_lo
	v_cndmask_b32_e32 v37, v9, v15, vcc_lo
	v_cndmask_b32_e32 v9, v15, v9, vcc_lo
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e32 v26, v45, v49, vcc_lo
	v_cndmask_b32_e32 v34, v32, v38, vcc_lo
	v_cndmask_b32_e32 v32, v38, v32, vcc_lo
	v_dual_cndmask_b32 v38, v1, v11 :: v_dual_cndmask_b32 v1, v11, v1
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v8, v23, v29, vcc_lo
	v_cndmask_b32_e32 v14, v58, v56, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_cndmask_b32_e32 v23, v53, v47, vcc_lo
	v_cndmask_b32_e32 v29, v41, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v35, v28, v31 :: v_dual_and_b32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e32 v28, v31, v28, vcc_lo
	v_cndmask_b32_e32 v31, v19, v25, vcc_lo
	v_cndmask_b32_e32 v19, v25, v19, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_permlanex16_b32 v25, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v4
	v_and_b32_e32 v40, 0x7060706, v6
	v_permlanex16_b32 v41, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v11, v5, v39
	v_perm_b32 v5, v11, v5, v40
	v_perm_b32 v6, v22, v7, v39
	v_perm_b32 v7, v22, v7, v40
	v_perm_b32 v8, v25, v10, v39
	v_perm_b32 v9, v25, v10, v40
	v_perm_b32 v10, v13, v12, v39
	v_perm_b32 v11, v13, v12, v40
	v_perm_b32 v12, v15, v14, v39
	v_perm_b32 v13, v15, v14, v40
	v_perm_b32 v14, v16, v17, v39
	v_perm_b32 v15, v16, v17, v40
	v_perm_b32 v16, v20, v21, v39
	v_perm_b32 v17, v20, v21, v40
	v_perm_b32 v18, v23, v24, v39
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v20, v26, v27, v39
	v_perm_b32 v21, v26, v27, v40
	v_perm_b32 v22, v29, v30, v39
	v_perm_b32 v23, v29, v30, v40
	v_perm_b32 v26, v28, v35, v39
	v_perm_b32 v27, v28, v35, v40
	v_perm_b32 v28, v33, v31, v39
	v_perm_b32 v29, v33, v31, v40
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v3, v2, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v1, v42, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v3, 32, v33
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v24, v32, v34, v39
	v_perm_b32 v25, v32, v34, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v0, v42, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_add_nc_u32_e32 v32, 64, v33
	v_dual_cndmask_b32 v34, 0x80000000, v33 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[4:7], 0 offen
	buffer_store_b128 v[8:11], v35, s[4:7], 0 offen
	buffer_store_b128 v[12:15], v32, s[4:7], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v2, v43, v38, v39
	v_perm_b32 v3, v43, v38, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[4:7], 0 offen
	buffer_store_b128 v[20:23], v5, s[4:7], 0 offen
	buffer_store_b128 v[24:27], v6, s[4:7], 0 offen
	buffer_store_b128 v[28:31], v7, s[4:7], 0 offen
	buffer_store_b128 v[0:3], v8, s[4:7], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 189
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 189
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11792
; TotalNumSgprs: 47
; NumVgprs: 189
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 189
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     189
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
