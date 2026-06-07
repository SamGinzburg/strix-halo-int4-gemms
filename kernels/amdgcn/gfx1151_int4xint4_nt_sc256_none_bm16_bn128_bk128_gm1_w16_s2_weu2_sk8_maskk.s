	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v14, 31, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v12, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v17, 4, v0
	v_dual_mov_b32 v19, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_lshrrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v12, 56, v12
	v_or_b32_e32 v80, 62, v17
	v_or_b32_e32 v79, 0x7e, v17
	v_mov_b32_e32 v17, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 5, v0
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v2, 56, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, 64, v3
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v10, v10, v12
	s_load_b64 s[40:41], s[0:1], 0x20
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 15
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
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v13, 1, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v16, 56, v3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v15, 15, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v16, v13, v16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v81, v0, 4, 1
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v84, 0, v10
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v82, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v83, 0, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v33, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v43, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v45, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v51, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v53, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s6, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s19
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s6, s7
	s_abs_i32 s17, s2
	v_mov_b32_e32 v12, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v61, 0
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v71, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v1, 1, v14
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	s_mul_i32 s10, s10, s6
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v39, 0
	s_mul_hi_u32 s5, s6, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s6, s6, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s17, s6
	s_xor_b32 s6, s2, s19
	s_mul_i32 s18, s5, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	v_mov_b32_e32 v70, 0
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s7
	v_mov_b32_e32 v72, 0
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 0xff
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s17
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s18, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s7, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s7, v1
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s17, v4, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s7, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v7, s17, v3
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v11, s17, v5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s17, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v8
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s26, s21, 8
.Ltmp21:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s17, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 0x80, v9
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	s_mul_i32 s16, s33, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s19, s34, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s16, s16, s7
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s7, s19, v6
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v7, v7, v2, s16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v8, v11, v2, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v11, v6, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[28:31], 0 offen
	buffer_load_b64 v[8:9], v8, s[28:31], 0 offen
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v78, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s26, -1
	s_mov_b64 s[24:25], s[14:15]
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x200
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v83, v11 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v84, v[6:7], v[8:9] offset1:8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v10, s34, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s15, s18, 8
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v6, 56, v82
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v9, 1, v79
	v_or_b32_e32 v5, s18, v5
	v_or_b32_e32 v3, s18, v3
	v_mul_lo_u32 v10, s26, v10
	s_lshl_b32 s0, s6, 8
	s_lshl_b32 s6, s6, 7
	v_lshl_or_b32 v6, v15, 6, v6
	v_subrev_nc_u32_e32 v87, s0, v9
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v9, 1, v81
	v_subrev_nc_u32_e32 v5, s6, v5
	v_subrev_nc_u32_e32 v3, s6, v3
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v11, 1, v80
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v4, s34, v4
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v18, 40, v6
	v_xor_b32_e32 v16, 24, v6
	v_xor_b32_e32 v17, 32, v6
	v_xor_b32_e32 v19, 48, v6
	v_xor_b32_e32 v20, 56, v6
	v_subrev_nc_u32_e32 v88, s0, v9
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v90, 1, v10
	v_mad_u64_u32 v[9:10], null, s17, v5, v[2:3]
	v_subrev_nc_u32_e32 v89, s0, v11
	v_mad_u64_u32 v[10:11], null, s17, v3, v[2:3]
	v_mad_u64_u32 v[11:12], null, s17, v4, v[1:2]
	v_sub_nc_u32_e32 v85, s17, v1
	v_sub_nc_u32_e32 v86, s17, v2
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v91, 0, v6
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v92, 0, v7
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v93, 0, v8
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v96, 0, v18
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v94, 0, v16
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v95, 0, v17
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v97, 0, v19
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v98, 0, v20
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_max_i32 s14, s1, 1
	s_lshl_b32 s27, s35, 1
	s_add_i32 s42, s7, 0x80
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s42, v85
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v99, s42, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s14, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s42, v86
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v99, v99, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[197:198], v91 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset1:2
	ds_load_2addr_stride64_b64 v[112:115], v92 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[199:200], v92 offset:8192
	ds_load_b64 v[201:202], v93 offset:8192
	ds_load_b64 v[203:204], v94 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset1:2
	ds_load_2addr_stride64_b64 v[120:123], v94 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[205:206], v95 offset:8192
	ds_load_b64 v[207:208], v96 offset:8192
	ds_load_b64 v[209:210], v97 offset:8192
	ds_load_b64 v[211:212], v98 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[124:127], v95 offset1:2
	ds_load_2addr_stride64_b64 v[128:131], v96 offset1:2
	ds_load_2addr_stride64_b64 v[132:135], v97 offset1:2
	ds_load_2addr_stride64_b64 v[136:139], v98 offset1:2
	ds_load_2addr_stride64_b64 v[165:168], v95 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[169:172], v96 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[173:176], v97 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[177:180], v98 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[181:184], v95 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[185:188], v96 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[189:192], v97 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[193:196], v98 offset0:12 offset1:14
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(22)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[199:200], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[120:121], v[203:204], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[124:125], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[128:129], v[207:208], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[132:133], v[209:210], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[136:137], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v164, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v163, v101
	v_cvt_f32_i32_e32 v162, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v161, v103
	v_cvt_f32_i32_e32 v160, v104
	v_cvt_f32_i32_e32 v159, v105
	v_cvt_f32_i32_e32 v158, v106
	v_cvt_f32_i32_e32 v157, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[199:200], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[112:115], v92 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[201:202], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[203:204], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[120:123], v94 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[126:127], v[205:206], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[124:127], v95 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[130:131], v[207:208], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[128:131], v96 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[134:135], v[209:210], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[132:135], v97 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[138:139], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[136:139], v98 offset0:4 offset1:6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v156, v100
	v_cvt_f32_i32_e32 v155, v101
	v_cvt_f32_i32_e32 v154, v102
	v_cvt_f32_i32_e32 v153, v103
	v_cvt_f32_i32_e32 v151, v104
	v_cvt_f32_i32_e32 v149, v105
	v_cvt_f32_i32_e32 v147, v106
	v_cvt_f32_i32_e32 v145, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[199:200], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[120:121], v[203:204], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[124:125], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[128:129], v[207:208], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[132:133], v[209:210], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[136:137], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v152, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v150, v101
	v_cvt_f32_i32_e32 v148, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v103
	v_cvt_f32_i32_e32 v144, v104
	v_cvt_f32_i32_e32 v143, v105
	v_cvt_f32_i32_e32 v142, v106
	v_cvt_f32_i32_e32 v141, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[199:200], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[112:115], v92 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[201:202], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[203:204], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[120:123], v94 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[126:127], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[130:131], v[207:208], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[134:135], v[209:210], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[138:139], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v101
	v_cvt_f32_i32_e32 v138, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v103
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v135, v105
	v_cvt_f32_i32_e32 v134, v106
	v_cvt_f32_i32_e32 v129, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[197:198], v[1:8] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v108, v90, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v90, 2, v90
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[199:200], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[120:121], v[203:204], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[165:166], v[205:206], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[169:170], v[207:208], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[173:174], v[209:210], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[177:178], v[211:212], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v133, v100
	v_cvt_f32_i32_e32 v132, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v131, v102
	v_cvt_f32_i32_e32 v130, v103
	v_cvt_f32_i32_e32 v127, v104
	v_cvt_f32_i32_e32 v126, v105
	v_cvt_f32_i32_e32 v125, v106
	v_cvt_f32_i32_e32 v124, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[199:200], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[203:204], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[167:168], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[171:172], v[207:208], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[165:168], v91 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[169:172], v92 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[175:176], v[209:210], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[173:176], v93 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[179:180], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[177:180], v94 offset0:12 offset1:14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v128, v100
	v_cvt_f32_i32_e32 v122, v101
	v_cvt_f32_i32_e32 v121, v102
	v_cvt_f32_i32_e32 v120, v103
	v_cvt_f32_i32_e32 v119, v104
	v_cvt_f32_i32_e32 v117, v105
	v_cvt_f32_i32_e32 v115, v106
	v_cvt_f32_i32_e32 v113, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[165:166], v[197:198], v[1:8] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v165, s15, v88
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v88, s27, v88
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[169:170], v[199:200], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[173:174], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[177:178], v[203:204], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[181:182], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[185:186], v[207:208], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[189:190], v[209:210], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[193:194], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v123, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v118, v101
	v_cvt_f32_i32_e32 v116, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v103
	v_cvt_f32_i32_e32 v112, v104
	v_cvt_f32_i32_e32 v111, v105
	v_cvt_f32_i32_e32 v110, v106
	v_cvt_f32_i32_e32 v109, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[167:168], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[171:172], v[199:200], v[100:107] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v166, v165, s[36:39], 0 offen
	buffer_load_u16 v167, v165, s[36:39], 0 offen offset:4
	buffer_load_u16 v168, v165, s[36:39], 0 offen offset:8
	buffer_load_u16 v169, v165, s[36:39], 0 offen offset:12
	buffer_load_u16 v170, v165, s[36:39], 0 offen offset:16
	buffer_load_u16 v171, v165, s[36:39], 0 offen offset:20
	buffer_load_u16 v172, v165, s[36:39], 0 offen offset:24
	buffer_load_u16 v173, v165, s[36:39], 0 offen offset:28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[175:176], v[201:202], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[179:180], v[203:204], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[183:184], v[205:206], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[187:188], v[207:208], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[191:192], v[209:210], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[195:196], v[211:212], v[100:107] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v164, v164, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v39, v164, v166 :: v_dual_lshlrev_b32 v164, 16, v167
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v161, v161, v108
	v_mul_f32_e32 v163, v163, v108
	v_mul_f32_e32 v162, v162, v108
	v_mul_f32_e32 v157, v157, v108
	v_mul_f32_e32 v159, v159, v108
	v_mul_f32_e32 v156, v156, v108
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v78, v163, v164
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v163, 16, v168
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v158, v158, v108
	v_mul_f32_e32 v160, v160, v108
	v_mul_f32_e32 v153, v153, v108
	v_mul_f32_e32 v155, v155, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v77, v162, v163 :: v_dual_lshlrev_b32 v162, 16, v169
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v145, v145, v108
	v_mul_f32_e32 v151, v151, v108
	v_mul_f32_e32 v146, v146, v108
	v_mul_f32_e32 v149, v149, v108
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v161, v162
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v170
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v147, v108
	v_mul_f32_e32 v152, v152, v108
	v_mul_f32_e32 v144, v144, v108
	v_mul_f32_e32 v141, v141, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v75, v160, v161 :: v_dual_lshlrev_b32 v160, 16, v171
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v143, v143, v108
	v_mul_f32_e32 v130, v130, v108
	v_mul_f32_e32 v137, v137, v108
	v_mul_f32_e32 v140, v140, v108
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v159, v160
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v159, 16, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v132, v132, v108
	v_mul_f32_e32 v139, v139, v108
	v_mul_f32_e32 v138, v138, v108
	v_mul_f32_e32 v142, v142, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v73, v158, v159 :: v_dual_lshlrev_b32 v158, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v136, v136, v108
	v_mul_f32_e32 v135, v135, v108
	v_mul_f32_e32 v134, v134, v108
	v_mul_f32_e32 v129, v129, v108
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v157, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v157, v165, s[36:39], 0 offen offset:32
	buffer_load_u16 v158, v165, s[36:39], 0 offen offset:36
	buffer_load_u16 v159, v165, s[36:39], 0 offen offset:40
	buffer_load_u16 v160, v165, s[36:39], 0 offen offset:44
	buffer_load_u16 v161, v165, s[36:39], 0 offen offset:48
	buffer_load_u16 v162, v165, s[36:39], 0 offen offset:52
	buffer_load_u16 v163, v165, s[36:39], 0 offen offset:56
	buffer_load_u16 v164, v165, s[36:39], 0 offen offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v154, v154, v108
	v_mul_f32_e32 v126, v126, v108
	v_mul_f32_e32 v124, v124, v108
	v_mul_f32_e32 v133, v133, v108
	v_mul_f32_e32 v121, v121, v108
	v_mul_f32_e32 v112, v112, v108
	v_mul_f32_e32 v131, v131, v108
	v_mul_f32_e32 v127, v127, v108
	v_mul_f32_e32 v119, v119, v108
	v_mul_f32_e32 v125, v125, v108
	v_mul_f32_e32 v110, v110, v108
	v_mul_f32_e32 v122, v122, v108
	v_mul_f32_e32 v120, v120, v108
	v_mul_f32_e32 v114, v114, v108
	v_mul_f32_e32 v117, v117, v108
	v_mul_f32_e32 v100, v100, v108
	v_mul_f32_e32 v102, v102, v108
	v_mul_f32_e32 v113, v113, v108
	v_mul_f32_e32 v118, v118, v108
	v_mul_f32_e32 v107, v107, v108
	v_mul_f32_e32 v111, v111, v108
	v_mul_f32_e32 v109, v109, v108
	v_mul_f32_e32 v101, v101, v108
	v_mul_f32_e32 v103, v103, v108
	v_mul_f32_e32 v105, v105, v108
	v_mul_f32_e32 v104, v104, v108
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v106, v106, v108 :: v_dual_lshlrev_b32 v157, 16, v157
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v71, v156, v157 :: v_dual_lshlrev_b32 v156, 16, v158
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v70, v155, v156 :: v_dual_lshlrev_b32 v155, 16, v159
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v69, v154, v155 :: v_dual_lshlrev_b32 v154, 16, v160
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v68, v153, v154 :: v_dual_lshlrev_b32 v153, 16, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v151, v153
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v162
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v66, v149, v151
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v149, 16, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v147, v149
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v147, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v145, v147
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v145, v165, s[36:39], 0 offen offset:64
	buffer_load_u16 v147, v165, s[36:39], 0 offen offset:68
	buffer_load_u16 v149, v165, s[36:39], 0 offen offset:72
	buffer_load_u16 v151, v165, s[36:39], 0 offen offset:76
	buffer_load_u16 v153, v165, s[36:39], 0 offen offset:80
	buffer_load_u16 v154, v165, s[36:39], 0 offen offset:84
	buffer_load_u16 v155, v165, s[36:39], 0 offen offset:88
	buffer_load_u16 v156, v165, s[36:39], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v145, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v63, v152, v145
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v145, 16, v147
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v150, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v62, v147, v145
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v145, 16, v149
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v148, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v147, v145
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v145, 16, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v146, v145
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v145, 16, v153
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v59, v144, v145 :: v_dual_lshlrev_b32 v144, 16, v154
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v58, v143, v144 :: v_dual_lshlrev_b32 v143, 16, v155
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, v142, v143 :: v_dual_lshlrev_b32 v142, 16, v156
	v_fmac_f32_e32 v56, v141, v142
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v141, v165, s[36:39], 0 offen offset:96
	buffer_load_u16 v142, v165, s[36:39], 0 offen offset:100
	buffer_load_u16 v143, v165, s[36:39], 0 offen offset:104
	buffer_load_u16 v144, v165, s[36:39], 0 offen offset:108
	buffer_load_u16 v145, v165, s[36:39], 0 offen offset:112
	buffer_load_u16 v146, v165, s[36:39], 0 offen offset:116
	buffer_load_u16 v147, v165, s[36:39], 0 offen offset:120
	buffer_load_u16 v148, v165, s[36:39], 0 offen offset:128
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v55, v140, v141 :: v_dual_lshlrev_b32 v140, 16, v142
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v54, v139, v140 :: v_dual_lshlrev_b32 v139, 16, v143
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v53, v138, v139 :: v_dual_lshlrev_b32 v138, 16, v144
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v52, v137, v138 :: v_dual_lshlrev_b32 v137, 16, v145
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v136, v137 :: v_dual_lshlrev_b32 v136, 16, v146
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v50, v135, v136 :: v_dual_lshlrev_b32 v135, 16, v147
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v49, v134, v135 :: v_dual_add_nc_u32 v134, s15, v89
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v89, s27, v89
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v136, v134, s[36:39], 0 offen
	v_add_nc_u32_e32 v134, s15, v87
	s_clause 0x1
	buffer_load_u16 v134, v134, s[36:39], 0 offen
	buffer_load_u16 v135, v165, s[36:39], 0 offen offset:248
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v115, v108
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v87, s27, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v129, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v148
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v47, v133, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v129, v165, s[36:39], 0 offen offset:132
	buffer_load_u16 v133, v165, s[36:39], 0 offen offset:136
	buffer_load_u16 v136, v165, s[36:39], 0 offen offset:140
	buffer_load_u16 v137, v165, s[36:39], 0 offen offset:144
	buffer_load_u16 v138, v165, s[36:39], 0 offen offset:148
	buffer_load_u16 v139, v165, s[36:39], 0 offen offset:152
	buffer_load_u16 v140, v165, s[36:39], 0 offen offset:156
	buffer_load_u16 v141, v165, s[36:39], 0 offen offset:160
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v129, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v132, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v129, 16, v133
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v131, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v129, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v130, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v129, 16, v137
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v43, v127, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v126, v127
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v126, 16, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v125, v126
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v125, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v124, v125
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v125, v128, v108 :: v_dual_lshlrev_b32 v124, 16, v141
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v125, v124
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v124, v165, s[36:39], 0 offen offset:164
	buffer_load_u16 v125, v165, s[36:39], 0 offen offset:168
	buffer_load_u16 v126, v165, s[36:39], 0 offen offset:172
	buffer_load_u16 v127, v165, s[36:39], 0 offen offset:176
	buffer_load_u16 v128, v165, s[36:39], 0 offen offset:180
	buffer_load_u16 v129, v165, s[36:39], 0 offen offset:184
	buffer_load_u16 v130, v165, s[36:39], 0 offen offset:188
	buffer_load_u16 v131, v165, s[36:39], 0 offen offset:192
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v122, v124 :: v_dual_lshlrev_b32 v122, 16, v125
	v_fmac_f32_e32 v36, v121, v122
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v121, 16, v126
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v35, v120, v121 :: v_dual_lshlrev_b32 v120, 16, v127
	v_fmac_f32_e32 v34, v119, v120
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v119, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v33, v117, v119
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v117, 16, v129
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v32, v115, v117 :: v_dual_lshlrev_b32 v115, 16, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v113, v115
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v113, 16, v131
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v123, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v30, v115, v113
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v113, v165, s[36:39], 0 offen offset:196
	buffer_load_u16 v115, v165, s[36:39], 0 offen offset:200
	buffer_load_u16 v117, v165, s[36:39], 0 offen offset:204
	buffer_load_u16 v119, v165, s[36:39], 0 offen offset:208
	buffer_load_u16 v120, v165, s[36:39], 0 offen offset:212
	buffer_load_u16 v121, v165, s[36:39], 0 offen offset:216
	buffer_load_u16 v122, v165, s[36:39], 0 offen offset:220
	buffer_load_u16 v123, v165, s[36:39], 0 offen offset:224
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v113, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v118, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v113, 16, v115
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v116, v108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v115, v113
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v113, 16, v117
	s_clause 0x2
	buffer_load_u16 v116, v165, s[36:39], 0 offen offset:236
	buffer_load_u16 v117, v165, s[36:39], 0 offen offset:240
	buffer_load_u16 v118, v165, s[36:39], 0 offen offset:244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v27, v114, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v113, 16, v119
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v114, 16, v120
	v_lshlrev_b32_e32 v119, 16, v135
	v_lshlrev_b32_e32 v120, 16, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v26, v112, v113
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v112, s42, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v25, v111, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v114, v165, s[36:39], 0 offen offset:228
	buffer_load_u16 v115, v165, s[36:39], 0 offen offset:232
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v111, 16, v121
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v113, s42, v9
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v16, v106, v119
	v_fmac_f32_e32 v12, v107, v120
	v_fmac_f32_e32 v24, v110, v111
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v110, 16, v122
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s42, 0x80
	s_cmp_lg_u32 s14, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v23, v109, v110
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[109:110], v112, s[28:31], 0 offen
	buffer_load_b64 v[111:112], v113, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v113, 16, v123
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v83, v99 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v84, v[109:110], v[111:112] offset1:8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v22, v100, v113 :: v_dual_fmac_f32 v21, v101, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v102, v115 :: v_dual_fmac_f32 v19, v103, v116
	v_dual_fmac_f32 v18, v104, v117 :: v_dual_fmac_f32 v17, v105, v118
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow232
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0x1e0, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v84, 0
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
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v135, 0
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
	v_dual_mov_b32 v136, s11 :: v_dual_and_b32 v1, 56, v82
	v_dual_mov_b32 v135, s10 :: v_dual_mov_b32 v132, s7
	v_mov_b32_e32 v134, s9
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshl_or_b32 v1, v15, 6, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v133, s8 :: v_dual_mov_b32 v130, s5
	v_mov_b32_e32 v131, s6
	v_mov_b32_e32 v129, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v150, v1, 24, 0
	v_add_nc_u32_e32 v215, 0, v1
	v_xad_u32 v227, v1, 16, 0
	v_xad_u32 v219, v1, 8, 0
	v_xad_u32 v3, v1, 56, 0
	v_xad_u32 v11, v1, 48, 0
	v_xad_u32 v128, v1, 40, 0
	v_xad_u32 v149, v1, 32, 0
	ds_load_2addr_stride64_b64 v[171:174], v150 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[96:99], v215 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[1:2], v150 offset:8192
	ds_load_b64 v[9:10], v227 offset:8192
	ds_load_b64 v[126:127], v219 offset:8192
	ds_load_b64 v[231:232], v215 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[118:121], v150 offset1:2
	ds_load_2addr_stride64_b64 v[137:140], v227 offset1:2
	ds_load_2addr_stride64_b64 v[175:178], v219 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[141:144], v215 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[145:148], v219 offset1:2
	ds_load_2addr_stride64_b64 v[179:182], v227 offset0:4 offset1:6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[233:234], v3 offset:8192
	ds_load_b64 v[235:236], v11 offset:8192
	ds_load_b64 v[237:238], v128 offset:8192
	ds_load_b64 v[239:240], v149 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[122:125], v3 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[151:154], v3 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[106:109], v3 offset1:2
	ds_load_2addr_stride64_b64 v[155:158], v11 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[159:162], v11 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[163:166], v11 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[110:113], v11 offset1:2
	ds_load_2addr_stride64_b64 v[167:170], v149 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[114:117], v149 offset1:2
	ds_load_2addr_stride64_b64 v[183:186], v128 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[187:190], v128 offset1:2
	ds_load_2addr_stride64_b64 v[223:226], v227 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[227:230], v227 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[199:202], v149 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[203:206], v149 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[191:194], v128 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[195:198], v128 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(28)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[96:97], v[231:232], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[231:232], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(24)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[141:142], v[231:232], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(23)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[145:146], v[126:127], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[147:148], v[126:127], v[90:97] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[207:210], v150 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[145:148], v215 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[98:105], v[175:176], v[126:127], v[98:105] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[211:214], v150 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[215:218], v215 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[82:89], v[137:138], v[9:10], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[139:140], v[9:10], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[179:180], v[9:10], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[118:119], v[1:2], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[120:121], v[1:2], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[171:172], v[1:2], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[114:115], v[239:240], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[116:117], v[239:240], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[167:168], v[239:240], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[187:188], v[237:238], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[189:190], v[237:238], v[90:97] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[187:190], v219 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[219:222], v219 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[98:105], v[183:184], v[237:238], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[145:146], v[231:232], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[110:111], v[235:236], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[112:113], v[235:236], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[163:164], v[235:236], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[106:107], v[233:234], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[233:234], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[151:152], v[233:234], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[143:144], v[231:232], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[231:232], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[215:216], v[231:232], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[217:218], v[231:232], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[177:178], v[126:127], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[187:188], v[126:127], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[189:190], v[126:127], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[219:220], v[126:127], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[221:222], v[126:127], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[181:182], v[9:10], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[223:224], v[9:10], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[225:226], v[9:10], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[227:228], v[9:10], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[229:230], v[9:10], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[173:174], v[1:2], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[211:212], v[1:2], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[213:214], v[1:2], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[207:208], v[1:2], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[209:210], v[1:2], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[169:170], v[239:240], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[203:204], v[239:240], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[205:206], v[239:240], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[199:200], v[239:240], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[201:202], v[239:240], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[185:186], v[237:238], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[195:196], v[237:238], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[197:198], v[237:238], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[191:192], v[237:238], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[193:194], v[237:238], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[165:166], v[235:236], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[159:160], v[235:236], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[161:162], v[235:236], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[155:156], v[235:236], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[157:158], v[235:236], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[153:154], v[233:234], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[233:234], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[124:125], v[233:234], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[5:6], v[233:234], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[7:8], v[233:234], v[129:136] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v82
	v_cvt_f32_i32_e32 v2, v83
	v_cvt_f32_i32_e32 v3, v84
	v_cvt_f32_i32_e32 v5, v85
	v_cvt_f32_i32_e32 v6, v86
	v_cvt_f32_i32_e32 v7, v87
	v_cvt_f32_i32_e32 v8, v88
	v_cvt_f32_i32_e32 v9, v89
	v_cvt_f32_i32_e32 v10, v90
	v_cvt_f32_i32_e32 v11, v91
	v_cvt_f32_i32_e32 v83, v92
	v_cvt_f32_i32_e32 v84, v93
	v_cvt_f32_i32_e32 v85, v94
	v_cvt_f32_i32_e32 v86, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v88, v97
	v_cvt_f32_i32_e32 v89, v98
	v_cvt_f32_i32_e32 v90, v99
	v_cvt_f32_i32_e32 v91, v100
	v_cvt_f32_i32_e32 v92, v101
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v94, v103
	v_cvt_f32_i32_e32 v95, v104
	v_cvt_f32_i32_e32 v96, v105
	v_cvt_f32_i32_e32 v97, v106
	v_cvt_f32_i32_e32 v98, v107
	v_cvt_f32_i32_e32 v99, v108
	v_cvt_f32_i32_e32 v100, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v103, v112
	v_cvt_f32_i32_e32 v104, v113
	v_cvt_f32_i32_e32 v105, v114
	v_cvt_f32_i32_e32 v106, v115
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v112, v121
	v_cvt_f32_i32_e32 v113, v137
	v_cvt_f32_i32_e32 v114, v138
	v_cvt_f32_i32_e32 v115, v139
	v_cvt_f32_i32_e32 v116, v140
	v_cvt_f32_i32_e32 v117, v141
	v_cvt_f32_i32_e32 v118, v142
	v_cvt_f32_i32_e32 v119, v143
	v_cvt_f32_i32_e32 v120, v144
	v_cvt_f32_i32_e32 v121, v145
	v_cvt_f32_i32_e32 v122, v146
	v_cvt_f32_i32_e32 v123, v147
	v_cvt_f32_i32_e32 v124, v148
	v_cvt_f32_i32_e32 v125, v149
	v_cvt_f32_i32_e32 v126, v150
	v_cvt_f32_i32_e32 v127, v151
	v_cvt_f32_i32_e32 v128, v152
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v82, s26, v15
	s_mul_i32 s0, s34, s26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s15, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v82, s0, v82, 1
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s25, s25, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v81, s0, v81, 1
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v80, s0, v80, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v139, 0x80000000, v81, s2
	v_add_lshl_u32 v79, s0, v79, 1
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v14, 2, v14
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v199, 7, v0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s34, s35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v14, v15, 9, v14
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v145, 32, v81
	v_add_nc_u32_e32 v153, 64, v81
	v_add_nc_u32_e32 v161, 0x60, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v101, v101, v82 :: v_dual_add_nc_u32 v168, 0x80, v81
	v_dual_mul_f32 v109, v109, v82 :: v_dual_add_nc_u32 v176, 0xa0, v81
	v_dual_mul_f32 v117, v117, v82 :: v_dual_add_nc_u32 v184, 0xc0, v81
	v_dual_mul_f32 v2, v2, v82 :: v_dual_add_nc_u32 v137, 4, v81
	v_dual_mul_f32 v9, v9, v82 :: v_dual_add_nc_u32 v146, 36, v81
	v_dual_mul_f32 v87, v87, v82 :: v_dual_add_nc_u32 v154, 0x44, v81
	v_dual_mul_f32 v95, v95, v82 :: v_dual_add_nc_u32 v162, 0x64, v81
	v_dual_mul_f32 v106, v106, v82 :: v_dual_add_nc_u32 v169, 0x84, v81
	v_dual_mul_f32 v114, v114, v82 :: v_dual_add_nc_u32 v177, 0xa4, v81
	v_dual_mul_f32 v122, v122, v82 :: v_dual_add_nc_u32 v185, 0xc4, v81
	v_dual_mul_f32 v1, v1, v82 :: v_dual_add_nc_u32 v138, 8, v81
	v_dual_mul_f32 v84, v84, v82 :: v_dual_add_nc_u32 v147, 40, v81
	v_dual_mul_f32 v92, v92, v82 :: v_dual_add_nc_u32 v155, 0x48, v81
	v_dual_mul_f32 v100, v100, v82 :: v_dual_add_nc_u32 v163, 0x68, v81
	v_dual_mul_f32 v103, v103, v82 :: v_dual_add_nc_u32 v170, 0x88, v81
	v_dual_mul_f32 v111, v111, v82 :: v_dual_add_nc_u32 v178, 0xa8, v81
	v_dual_mul_f32 v119, v119, v82 :: v_dual_add_nc_u32 v186, 0xc8, v81
	v_dual_mul_f32 v3, v3, v82 :: v_dual_add_nc_u32 v140, 12, v81
	v_dual_mul_f32 v11, v11, v82 :: v_dual_add_nc_u32 v148, 44, v81
	v_dual_mul_f32 v89, v89, v82 :: v_dual_add_nc_u32 v156, 0x4c, v81
	v_dual_mul_f32 v97, v97, v82 :: v_dual_add_nc_u32 v164, 0x6c, v81
	v_dual_mul_f32 v108, v108, v82 :: v_dual_add_nc_u32 v171, 0x8c, v81
	v_dual_mul_f32 v116, v116, v82 :: v_dual_add_nc_u32 v179, 0xac, v81
	v_dual_mul_f32 v124, v124, v82 :: v_dual_add_nc_u32 v187, 0xcc, v81
	v_dual_mul_f32 v6, v6, v82 :: v_dual_add_nc_u32 v141, 16, v81
	v_dual_mul_f32 v5, v5, v82 :: v_dual_add_nc_u32 v142, 20, v81
	v_dual_mul_f32 v8, v8, v82 :: v_dual_add_nc_u32 v143, 24, v81
	v_dual_mul_f32 v7, v7, v82 :: v_dual_add_nc_u32 v144, 28, v81
	v_dual_mul_f32 v86, v86, v82 :: v_dual_add_nc_u32 v149, 48, v81
	v_dual_mul_f32 v83, v83, v82 :: v_dual_add_nc_u32 v150, 52, v81
	v_dual_mul_f32 v88, v88, v82 :: v_dual_add_nc_u32 v151, 56, v81
	v_dual_mul_f32 v85, v85, v82 :: v_dual_add_nc_u32 v152, 60, v81
	v_dual_mul_f32 v94, v94, v82 :: v_dual_add_nc_u32 v157, 0x50, v81
	v_dual_mul_f32 v91, v91, v82 :: v_dual_add_nc_u32 v158, 0x54, v81
	v_dual_mul_f32 v96, v96, v82 :: v_dual_add_nc_u32 v159, 0x58, v81
	v_dual_mul_f32 v93, v93, v82 :: v_dual_add_nc_u32 v160, 0x5c, v81
	v_dual_mul_f32 v102, v102, v82 :: v_dual_add_nc_u32 v165, 0x70, v81
	v_dual_mul_f32 v99, v99, v82 :: v_dual_add_nc_u32 v166, 0x74, v81
	v_dual_mul_f32 v104, v104, v82 :: v_dual_add_nc_u32 v167, 0x78, v81
	v_dual_mul_f32 v105, v105, v82 :: v_dual_add_nc_u32 v172, 0x90, v81
	v_dual_mul_f32 v110, v110, v82 :: v_dual_add_nc_u32 v173, 0x94, v81
	v_dual_mul_f32 v107, v107, v82 :: v_dual_add_nc_u32 v174, 0x98, v81
	v_dual_mul_f32 v112, v112, v82 :: v_dual_add_nc_u32 v175, 0x9c, v81
	v_dual_mul_f32 v113, v113, v82 :: v_dual_add_nc_u32 v180, 0xb0, v81
	v_dual_mul_f32 v118, v118, v82 :: v_dual_add_nc_u32 v181, 0xb4, v81
	v_dual_mul_f32 v115, v115, v82 :: v_dual_add_nc_u32 v182, 0xb8, v81
	v_dual_mul_f32 v120, v120, v82 :: v_dual_add_nc_u32 v183, 0xbc, v81
	v_dual_mul_f32 v121, v121, v82 :: v_dual_add_nc_u32 v188, 0xd0, v81
	v_dual_mul_f32 v126, v126, v82 :: v_dual_add_nc_u32 v189, 0xd4, v81
	v_dual_mul_f32 v123, v123, v82 :: v_dual_add_nc_u32 v190, 0xd8, v81
	v_dual_mul_f32 v128, v128, v82 :: v_dual_add_nc_u32 v191, 0xdc, v81
	v_dual_mul_f32 v125, v125, v82 :: v_dual_add_nc_u32 v192, 0xe0, v81
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v130, v82 :: v_dual_add_nc_u32 v193, 0xe4, v81
	v_mul_f32_e32 v10, v10, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v90, v90, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v98, v98, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v127, v127, v82 :: v_dual_add_nc_u32 v194, 0xe8, v81
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v132, v132, v82 :: v_dual_add_nc_u32 v195, 0xec, v81
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v129, v82 :: v_dual_add_nc_u32 v196, 0xf0, v81
	v_dual_mul_f32 v134, v134, v82 :: v_dual_add_nc_u32 v197, 0xf4, v81
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v81, 0xf8, v81
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	s_clause 0x1f
	buffer_load_u16 v139, v139, s[24:27], 0 offen
	buffer_load_u16 v137, v137, s[24:27], 0 offen
	buffer_load_u16 v138, v138, s[24:27], 0 offen
	buffer_load_u16 v140, v140, s[24:27], 0 offen
	buffer_load_u16 v141, v141, s[24:27], 0 offen
	buffer_load_u16 v142, v142, s[24:27], 0 offen
	buffer_load_u16 v143, v143, s[24:27], 0 offen
	buffer_load_u16 v144, v144, s[24:27], 0 offen
	buffer_load_u16 v145, v145, s[24:27], 0 offen
	buffer_load_u16 v146, v146, s[24:27], 0 offen
	buffer_load_u16 v147, v147, s[24:27], 0 offen
	buffer_load_u16 v148, v148, s[24:27], 0 offen
	buffer_load_u16 v149, v149, s[24:27], 0 offen
	buffer_load_u16 v150, v150, s[24:27], 0 offen
	buffer_load_u16 v151, v151, s[24:27], 0 offen
	buffer_load_u16 v152, v152, s[24:27], 0 offen
	buffer_load_u16 v153, v153, s[24:27], 0 offen
	buffer_load_u16 v154, v154, s[24:27], 0 offen
	buffer_load_u16 v155, v155, s[24:27], 0 offen
	buffer_load_u16 v156, v156, s[24:27], 0 offen
	buffer_load_u16 v157, v157, s[24:27], 0 offen
	buffer_load_u16 v158, v158, s[24:27], 0 offen
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v160, v160, s[24:27], 0 offen
	buffer_load_u16 v161, v161, s[24:27], 0 offen
	buffer_load_u16 v162, v162, s[24:27], 0 offen
	buffer_load_u16 v163, v163, s[24:27], 0 offen
	buffer_load_u16 v164, v164, s[24:27], 0 offen
	buffer_load_u16 v165, v165, s[24:27], 0 offen
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v80, v80, s[24:27], 0 offen
	s_clause 0x17
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v169, v169, s[24:27], 0 offen
	buffer_load_u16 v170, v170, s[24:27], 0 offen
	buffer_load_u16 v171, v171, s[24:27], 0 offen
	buffer_load_u16 v172, v172, s[24:27], 0 offen
	buffer_load_u16 v173, v173, s[24:27], 0 offen
	buffer_load_u16 v174, v174, s[24:27], 0 offen
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	buffer_load_u16 v176, v176, s[24:27], 0 offen
	buffer_load_u16 v177, v177, s[24:27], 0 offen
	buffer_load_u16 v178, v178, s[24:27], 0 offen
	buffer_load_u16 v179, v179, s[24:27], 0 offen
	buffer_load_u16 v180, v180, s[24:27], 0 offen
	buffer_load_u16 v181, v181, s[24:27], 0 offen
	buffer_load_u16 v182, v182, s[24:27], 0 offen
	buffer_load_u16 v183, v183, s[24:27], 0 offen
	buffer_load_u16 v184, v184, s[24:27], 0 offen
	buffer_load_u16 v185, v185, s[24:27], 0 offen
	buffer_load_u16 v186, v186, s[24:27], 0 offen
	buffer_load_u16 v187, v187, s[24:27], 0 offen
	buffer_load_u16 v188, v188, s[24:27], 0 offen
	buffer_load_u16 v189, v189, s[24:27], 0 offen
	buffer_load_u16 v190, v190, s[24:27], 0 offen
	buffer_load_u16 v191, v191, s[24:27], 0 offen
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v131, v131, v82 :: v_dual_and_b32 v198, 0x7f, v0
	v_mul_f32_e32 v133, v133, v82
	v_mul_f32_e32 v135, v135, v82
	v_mul_f32_e32 v82, v136, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	s_clause 0x7
	buffer_load_u16 v192, v192, s[24:27], 0 offen
	buffer_load_u16 v193, v193, s[24:27], 0 offen
	buffer_load_u16 v194, v194, s[24:27], 0 offen
	buffer_load_u16 v195, v195, s[24:27], 0 offen
	buffer_load_u16 v196, v196, s[24:27], 0 offen
	buffer_load_u16 v197, v197, s[24:27], 0 offen
	buffer_load_u16 v81, v81, s[24:27], 0 offen
	buffer_load_u16 v79, v79, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v136, 16, v137
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v137, 16, v138
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v138, 16, v140
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v140, 16, v141
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v141, 16, v142
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v142, 16, v143
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v143, 16, v144
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v144, 16, v145
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v145, 16, v146
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v146, 16, v147
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v147, 16, v148
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v148, 16, v149
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v149, 16, v150
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v150, 16, v151
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v151, 16, v152
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v152, 16, v153
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v153, 16, v154
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v154, 16, v155
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v155, 16, v156
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v156, 16, v157
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v157, 16, v158
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v158, 16, v159
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v159, 16, v160
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v160, 16, v161
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v161, 16, v162
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v162, 16, v163
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v163, 16, v164
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v164, 16, v165
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v165, 16, v166
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v166, 16, v167
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v167, 16, v168
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v168, 16, v169
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v169, 16, v170
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v170, 16, v171
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v171, 16, v172
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v172, 16, v173
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v173, 16, v174
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v174, 16, v175
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v175, 16, v176
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v176, 16, v177
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v177, 16, v178
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v178, 16, v179
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v179, 16, v180
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v180, 16, v181
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v181, 16, v182
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v182, 16, v183
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v183, 16, v184
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v184, 16, v185
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v185, 16, v186
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v186, 16, v187
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v187, 16, v188
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v188, 16, v189
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v189, 16, v190
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v190, 16, v191
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v191, 16, v192
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v192, 16, v193
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v193, 16, v194
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v194, 16, v195
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v139, v39
	v_fma_f32 v89, v89, v152, v63
	v_fma_f32 v80, v104, v80, v48
	v_fma_f32 v104, v105, v167, v47
	v_fma_f32 v105, v106, v168, v46
	v_fma_f32 v106, v107, v169, v45
	v_fma_f32 v107, v108, v170, v44
	v_fma_f32 v108, v109, v171, v43
	v_fma_f32 v109, v110, v172, v42
	v_fma_f32 v110, v111, v173, v41
	v_fma_f32 v111, v112, v174, v40
	v_fma_f32 v112, v113, v175, v38
	v_fma_f32 v113, v114, v176, v37
	v_fma_f32 v114, v115, v177, v36
	v_fma_f32 v115, v116, v178, v35
	v_fma_f32 v116, v117, v179, v34
	v_fma_f32 v117, v118, v180, v33
	v_fma_f32 v118, v119, v181, v32
	v_fma_f32 v119, v120, v182, v31
	v_fma_f32 v120, v121, v183, v30
	v_fma_f32 v121, v122, v184, v29
	v_fma_f32 v122, v123, v185, v28
	v_fma_f32 v123, v124, v186, v27
	v_fma_f32 v124, v125, v187, v26
	v_fma_f32 v125, v126, v188, v25
	v_fma_f32 v126, v127, v189, v24
	v_fma_f32 v127, v128, v190, v23
	v_fma_f32 v128, v129, v191, v22
	v_fma_f32 v129, v130, v192, v21
	v_fma_f32 v130, v131, v193, v20
	v_fma_f32 v131, v132, v194, v19
	v_fma_f32 v2, v2, v136, v78
	v_fma_f32 v83, v83, v146, v69
	v_fma_f32 v90, v90, v153, v62
	v_fma_f32 v3, v3, v137, v77
	v_fma_f32 v91, v91, v154, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v39, v1, s2
	v_cndmask_b32_e64 v63, v63, v89, s2
	v_cndmask_b32_e64 v15, v19, v131, s2
	v_add_nc_u32_e32 v19, 0, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v138, v76
	v_fma_f32 v92, v92, v155, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v47, v104, s2
	v_cndmask_b32_e64 v30, v30, v120, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v140, v75
	v_fma_f32 v93, v93, v156, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v78, v2, s2
	v_cndmask_b32_e64 v39, v69, v83, s2
	v_cndmask_b32_e64 v62, v62, v90, s2
	v_cndmask_b32_e64 v46, v46, v105, s2
	v_cndmask_b32_e64 v29, v29, v121, s2
	v_xad_u32 v69, v14, 4, 0
	v_cndmask_b32_e64 v3, v77, v3, s2
	v_cndmask_b32_e64 v61, v61, v91, s2
	ds_store_2addr_b32 v19, v1, v63 offset1:32
	v_xad_u32 v1, v14, 8, 0
	v_cndmask_b32_e64 v45, v45, v106, s2
	v_cndmask_b32_e64 v28, v28, v122, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v141, v74
	v_fma_f32 v8, v8, v142, v73
	v_fma_f32 v94, v94, v157, v58
	v_fma_f32 v95, v95, v158, v57
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v76, v5, s2
	v_cndmask_b32_e64 v60, v60, v92, s2
	v_cndmask_b32_e64 v44, v44, v107, s2
	v_cndmask_b32_e64 v27, v27, v123, s2
	ds_store_2addr_b32 v19, v47, v30 offset0:64 offset1:96
	ds_store_2addr_b32 v69, v2, v62 offset1:32
	v_xad_u32 v2, v14, 12, 0
	v_cndmask_b32_e64 v6, v75, v6, s2
	v_cndmask_b32_e64 v59, v59, v93, s2
	ds_store_2addr_b32 v69, v46, v29 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v3, v61 offset1:32
	v_xad_u32 v3, v14, 16, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v144, v71
	v_fma_f32 v97, v97, v160, v55
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v43, v108, s2
	v_cndmask_b32_e64 v42, v42, v109, s2
	v_cndmask_b32_e64 v26, v26, v124, s2
	v_cndmask_b32_e64 v25, v25, v125, s2
	ds_store_2addr_b32 v1, v45, v28 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v5, v60 offset1:32
	v_xad_u32 v1, v14, 20, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v143, v72
	v_fma_f32 v96, v96, v159, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v74, v7, s2
	v_cndmask_b32_e64 v8, v73, v8, s2
	v_cndmask_b32_e64 v58, v58, v94, s2
	v_cndmask_b32_e64 v57, v57, v95, s2
	ds_store_2addr_b32 v2, v44, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v6, v59 offset1:32
	v_xad_u32 v2, v14, 24, 0
	v_cndmask_b32_e64 v10, v71, v10, s2
	v_cndmask_b32_e64 v55, v55, v97, s2
	v_cndmask_b32_e64 v41, v41, v110, s2
	v_cndmask_b32_e64 v38, v38, v112, s2
	v_cndmask_b32_e64 v24, v24, v126, s2
	v_cndmask_b32_e64 v22, v22, v128, s2
	ds_store_2addr_b32 v3, v43, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v7, v58 offset1:32
	ds_store_2addr_b32 v1, v42, v25 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v8, v57 offset1:32
	v_xad_u32 v1, v14, 32, 0
	v_cndmask_b32_e64 v9, v72, v9, s2
	v_cndmask_b32_e64 v56, v56, v96, s2
	v_xad_u32 v3, v14, 28, 0
	v_cndmask_b32_e64 v40, v40, v111, s2
	v_cndmask_b32_e64 v23, v23, v127, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v145, v70
	v_fma_f32 v98, v98, v161, v54
	v_fma_f32 v99, v99, v162, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v2, v41, v24 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v9, v56 offset1:32
	ds_store_2addr_b32 v3, v40, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v10, v55 offset1:32
	ds_store_2addr_b32 v1, v38, v22 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v199
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v195, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v84, v84, v147, v68
	v_fma_f32 v100, v100, v163, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v70, v11, s2
	v_cndmask_b32_e64 v54, v54, v98, s2
	v_xad_u32 v2, v14, 36, 0
	v_cndmask_b32_e64 v37, v37, v113, s2
	v_cndmask_b32_e64 v21, v21, v129, s2
	v_cndmask_b32_e64 v53, v53, v99, s2
	v_xad_u32 v3, v14, 40, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v85, v85, v148, v67
	v_fma_f32 v101, v101, v164, v51
	v_fma_f32 v132, v133, v195, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v84, s2
	v_cndmask_b32_e64 v52, v52, v100, s2
	v_cndmask_b32_e64 v36, v36, v114, s2
	v_cndmask_b32_e64 v20, v20, v130, s2
	ds_store_2addr_b32 v2, v11, v54 offset1:32
	ds_store_2addr_b32 v2, v37, v21 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v39, v53 offset1:32
	v_xad_u32 v2, v14, 44, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v198, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v86, v86, v149, v66
	v_fma_f32 v102, v102, v165, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v115, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v196, 16, v197
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v85, s2
	v_cndmask_b32_e64 v51, v51, v101, s2
	v_cndmask_b32_e64 v34, v34, v116, s2
	v_cndmask_b32_e64 v18, v18, v132, s2
	ds_store_2addr_b32 v3, v36, v20 offset0:64 offset1:96
	v_xad_u32 v3, v14, 48, 0
	ds_store_2addr_b32 v2, v68, v52 offset1:32
	ds_store_2addr_b32 v2, v35, v15 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v86, s2
	v_cndmask_b32_e64 v50, v50, v102, s2
	v_xad_u32 v5, v14, 52, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v134, v196, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v87, v87, v150, v65
	v_fma_f32 v103, v103, v166, v49
	v_fma_f32 v81, v135, v81, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v3, v67, v51 offset1:32
	ds_store_2addr_b32 v3, v34, v18 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v66, v50 offset1:32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v88, v88, v151, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v33, v117, s2
	v_cndmask_b32_e64 v17, v17, v133, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v79, v82, v79, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v87, s2
	v_cndmask_b32_e64 v49, v49, v103, s2
	v_xad_u32 v6, v14, 56, 0
	v_cndmask_b32_e64 v32, v32, v118, s2
	v_cndmask_b32_e64 v16, v16, v81, s2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s40, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v88, s2
	v_cndmask_b32_e64 v48, v48, v80, s2
	ds_store_2addr_b32 v5, v33, v17 offset0:64 offset1:96
	ds_store_2addr_b32 v6, v65, v49 offset1:32
	ds_store_2addr_b32 v6, v32, v16 offset0:64 offset1:96
	v_xad_u32 v5, v14, 60, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v119, s2
	v_cndmask_b32_e64 v12, v12, v79, s2
	ds_store_2addr_b32 v5, v64, v48 offset1:32
	ds_store_2addr_b32 v5, v31, v12 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v6, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v7, 60, v13
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v6, 5, v6
	v_lshl_or_b32 v4, v4, 2, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v4, v6
	v_and_or_b32 v0, v0, 64, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x810, v0, 0
	v_xad_u32 v9, 0x1020, v0, 0
	v_xad_u32 v10, 0x1830, v0, 0
	ds_load_b32 v8, v4
	ds_load_b32 v7, v6
	ds_load_b32 v0, v9
	ds_load_b32 v6, v10
.LBB0_6:                                ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_8:                                ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_10:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_12:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 241
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_vgpr, 241
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10948
; TotalNumSgprs: 45
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
