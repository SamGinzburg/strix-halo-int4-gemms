	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v10, 1, v0
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 5, v0
	v_mov_b32_e32 v17, 0
	s_load_b64 s[24:25], s[0:1], 0x20
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v2, 56, v11
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, 64, v4
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v13, 56, v4
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v76, 15, v0
	v_bfe_u32 v77, v0, 4, 1
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v78, 2, v0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
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
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
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
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 62, v10
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v10, v10, v13
	v_mov_b32_e32 v13, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s6
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v21, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v79, 0, v10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_add_i32 s20, s4, 0x7f
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
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s7, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v7, s17, v4
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v12, s17, v5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s17, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v8
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s21, 7
.Ltmp21:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s17, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 64, v9
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	s_mul_i32 s16, s26, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s19, s33, s17
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
	v_add3_u32 v8, v12, v2, s16
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
	buffer_load_u16 v81, v6, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[28:31], 0 offen
	buffer_load_b64 v[8:9], v8, s[28:31], 0 offen
	v_lshrrev_b32_e32 v12, 1, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v12, 56, v12
	v_xor_b32_e32 v11, v11, v12
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v80, 0, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v79, v81 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v80, v[6:7], v[8:9] offset1:8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v9, s33, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s1, s18, 7
	s_lshl_b32 s0, s18, 8
	v_or_b32_e32 v4, s1, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v9, s34, v9
	s_lshl_b32 s18, s6, 8
	s_lshl_b32 s6, s6, 7
	v_or_b32_e32 v5, s1, v5
	v_subrev_nc_u32_e32 v4, s6, v4
	s_sub_i32 s41, s0, s18
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_subrev_nc_u32_e32 v5, s6, v5
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v83, 1, v9
	v_mad_u64_u32 v[9:10], null, s17, v4, v[2:3]
	v_add_nc_u32_e32 v3, s33, v3
	v_sub_nc_u32_e32 v81, s17, v1
	v_sub_nc_u32_e32 v82, s17, v2
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[10:11], null, s17, v5, v[2:3]
	v_mad_u64_u32 v[11:12], null, s17, v3, v[1:2]
	s_mov_b32 s17, s16
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v6, 56, v78
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v76, 6, v6
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v66, 0
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v13, 24, v6
	v_xor_b32_e32 v14, 32, v6
	v_xor_b32_e32 v15, 40, v6
	v_xor_b32_e32 v16, 48, v6
	v_xor_b32_e32 v17, 56, v6
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v8
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v87, 0, v13
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v88, 0, v14
	v_add_nc_u32_e32 v89, 0, v15
	v_add_nc_u32_e32 v90, 0, v16
	v_dual_mov_b32 v2, s17 :: v_dual_add_nc_u32 v91, 0, v17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v13, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s40, s35, 1
	s_lshl_b32 s42, s27, 1
	s_add_i32 s43, s7, 64
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s43, v81
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v92, s43, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v95, 1, v77
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s43, v82
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v94, s43, v9
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v93, s43, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v205, s41, v95
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v206, 0x80000000, v94, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v208, v83, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v209, v205, s[36:39], 0 offen
	buffer_load_u16 v210, v205, s[36:39], 0 offen offset:4
	buffer_load_u16 v211, v205, s[36:39], 0 offen offset:8
	buffer_load_u16 v212, v205, s[36:39], 0 offen offset:12
	buffer_load_u16 v213, v205, s[36:39], 0 offen offset:16
	buffer_load_u16 v214, v205, s[36:39], 0 offen offset:20
	buffer_load_u16 v215, v205, s[36:39], 0 offen offset:24
	buffer_load_u16 v216, v205, s[36:39], 0 offen offset:28
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[107:110], v84 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[197:198], v84 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[123:126], v84 offset0:4 offset1:6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[199:200], v85 offset:8192
	ds_load_b64 v[201:202], v86 offset:8192
	ds_load_b64 v[203:204], v87 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[133:136], v85 offset1:2
	ds_load_2addr_stride64_b64 v[139:142], v84 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[157:160], v86 offset1:2
	ds_load_2addr_stride64_b64 v[161:164], v87 offset1:2
	ds_load_2addr_stride64_b64 v[143:146], v85 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[165:168], v86 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[169:172], v87 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[147:150], v85 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[173:176], v86 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[177:180], v84 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[181:184], v85 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[185:188], v86 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[189:192], v87 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[193:196], v87 offset0:12 offset1:14
	v_cndmask_b32_e64 v207, 0x80000000, v93, s0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(18)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[107:108], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[109:110], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[123:124], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[125:126], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[139:140], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[133:134], v[199:200], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[135:136], v[199:200], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[141:142], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[143:144], v[199:200], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[145:146], v[199:200], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[147:148], v[199:200], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[149:150], v[199:200], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[177:178], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[179:180], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[157:158], v[201:202], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[159:160], v[201:202], v[101:108] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[157:160], v88 offset0:4 offset1:6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[197:198], v88 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[109:116], v[165:166], v[201:202], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[167:168], v[201:202], v[117:124] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[165:168], v88 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[181:182], v[199:200], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[183:184], v[199:200], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[169:170], v[203:204], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[171:172], v[203:204], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[173:174], v[201:202], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[175:176], v[201:202], v[133:140] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[173:176], v88 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[181:184], v89 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[199:200], v89 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[177:180], v88 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[185:186], v[201:202], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[187:188], v[201:202], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[161:162], v[203:204], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[163:164], v[203:204], v[101:108] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[161:164], v89 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[189:190], v[203:204], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[191:192], v[203:204], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[157:158], v[197:198], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[159:160], v[197:198], v[117:124] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[157:160], v89 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[141:148], v[193:194], v[203:204], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[195:196], v[203:204], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[165:166], v[197:198], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[197:198], v[133:140] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[165:168], v90 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[185:186], v90 offset:8192
	ds_load_b64 v[187:188], v91 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[173:174], v[197:198], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[175:176], v[197:198], v[149:156] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[169:172], v89 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[177:178], v[197:198], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[179:180], v[197:198], v[101:108] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[173:176], v90 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[177:180], v90 offset0:8 offset1:10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s43, s43, 64
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[161:162], v[199:200], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[163:164], v[199:200], v[117:124] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[161:164], v90 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[93:100], v[181:182], v[199:200], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[183:184], v[199:200], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[157:158], v[199:200], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[199:200], v[149:156] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[157:160], v91 offset1:2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, s42
	s_cmp_lg_u32 s40, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[165:166], v[185:186], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[167:168], v[185:186], v[101:108] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[165:168], v91 offset0:4 offset1:6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v83, 2, v83
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[169:170], v[199:200], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[171:172], v[199:200], v[133:140] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[169:172], v91 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[173:174], v[185:186], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[175:176], v[185:186], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[177:178], v[185:186], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[179:180], v[185:186], v[133:140] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[173:176], v91 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[161:162], v[185:186], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[163:164], v[185:186], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[157:158], v[187:188], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[159:160], v[187:188], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[165:166], v[187:188], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[167:168], v[187:188], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[169:170], v[187:188], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[171:172], v[187:188], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[173:174], v[187:188], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[175:176], v[187:188], v[149:156] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
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
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v185, 16, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v186, 16, v209
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v93, v185, v93
	v_mul_f32_e32 v94, v185, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v202, v205, s[36:39], 0 offen offset:36
	buffer_load_u16 v217, v205, s[36:39], 0 offen offset:40
	buffer_load_u16 v218, v205, s[36:39], 0 offen offset:44
	buffer_load_u16 v219, v205, s[36:39], 0 offen offset:48
	buffer_load_u16 v201, v205, s[36:39], 0 offen offset:32
	buffer_load_u16 v189, v205, s[36:39], 0 offen offset:52
	buffer_load_u16 v190, v205, s[36:39], 0 offen offset:56
	buffer_load_u16 v191, v205, s[36:39], 0 offen offset:60
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v93, v186
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v93, 16, v210
	s_clause 0xa
	buffer_load_u16 v192, v205, s[36:39], 0 offen offset:64
	buffer_load_u16 v193, v205, s[36:39], 0 offen offset:68
	buffer_load_u16 v194, v205, s[36:39], 0 offen offset:72
	buffer_load_u16 v195, v205, s[36:39], 0 offen offset:76
	buffer_load_u16 v196, v205, s[36:39], 0 offen offset:80
	buffer_load_u16 v181, v205, s[36:39], 0 offen offset:84
	buffer_load_u16 v182, v205, s[36:39], 0 offen offset:88
	buffer_load_u16 v183, v205, s[36:39], 0 offen offset:92
	buffer_load_u16 v184, v205, s[36:39], 0 offen offset:96
	buffer_load_u16 v197, v205, s[36:39], 0 offen offset:100
	buffer_load_u16 v198, v205, s[36:39], 0 offen offset:104
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v94, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v93, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v185, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x10
	buffer_load_u16 v161, v205, s[36:39], 0 offen offset:108
	buffer_load_u16 v162, v205, s[36:39], 0 offen offset:112
	buffer_load_u16 v163, v205, s[36:39], 0 offen offset:116
	buffer_load_u16 v164, v205, s[36:39], 0 offen offset:120
	buffer_load_u16 v177, v205, s[36:39], 0 offen offset:124
	buffer_load_u16 v178, v205, s[36:39], 0 offen offset:128
	buffer_load_u16 v157, v205, s[36:39], 0 offen offset:132
	buffer_load_u16 v158, v205, s[36:39], 0 offen offset:136
	buffer_load_u16 v159, v205, s[36:39], 0 offen offset:140
	buffer_load_u16 v160, v205, s[36:39], 0 offen offset:144
	buffer_load_u16 v165, v205, s[36:39], 0 offen offset:148
	buffer_load_u16 v166, v205, s[36:39], 0 offen offset:152
	buffer_load_u16 v167, v205, s[36:39], 0 offen offset:156
	buffer_load_u16 v168, v205, s[36:39], 0 offen offset:160
	buffer_load_u16 v169, v205, s[36:39], 0 offen offset:164
	buffer_load_u16 v170, v205, s[36:39], 0 offen offset:168
	buffer_load_u16 v171, v205, s[36:39], 0 offen offset:172
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(40)
	v_dual_fmac_f32 v74, v94, v93 :: v_dual_lshlrev_b32 v93, 16, v212
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v185, v96
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0xc
	buffer_load_u16 v172, v205, s[36:39], 0 offen offset:176
	buffer_load_u16 v173, v205, s[36:39], 0 offen offset:180
	buffer_load_u16 v174, v205, s[36:39], 0 offen offset:184
	buffer_load_u16 v175, v205, s[36:39], 0 offen offset:188
	buffer_load_u16 v176, v205, s[36:39], 0 offen offset:192
	buffer_load_u16 v179, v205, s[36:39], 0 offen offset:196
	buffer_load_u16 v180, v205, s[36:39], 0 offen offset:200
	buffer_load_u16 v186, v205, s[36:39], 0 offen offset:204
	buffer_load_u16 v187, v205, s[36:39], 0 offen offset:208
	buffer_load_u16 v188, v205, s[36:39], 0 offen offset:212
	buffer_load_u16 v199, v205, s[36:39], 0 offen offset:216
	buffer_load_u16 v200, v205, s[36:39], 0 offen offset:220
	buffer_load_u16 v203, v205, s[36:39], 0 offen offset:224
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v94, v93
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(52)
	v_dual_mul_f32 v100, v185, v100 :: v_dual_lshlrev_b32 v93, 16, v213
	v_mul_f32_e32 v94, v185, v97
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v204, v205, s[36:39], 0 offen offset:228
	buffer_load_u16 v208, v205, s[36:39], 0 offen offset:232
	buffer_load_u16 v97, v205, s[36:39], 0 offen offset:236
	buffer_load_u16 v209, v205, s[36:39], 0 offen offset:240
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v102, v185, v102
	v_dual_mul_f32 v103, v185, v103 :: v_dual_fmac_f32 v72, v94, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v93, 16, v214
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v185, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v98, v205, s[36:39], 0 offen offset:244
	buffer_load_u16 v210, v205, s[36:39], 0 offen offset:248
	buffer_load_u16 v205, v205, s[36:39], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v106, v185, v106
	v_mul_f32_e32 v107, v185, v107
	v_mul_f32_e32 v135, v185, v135
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v94, v93
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v93, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v94, v185, v99 :: v_dual_lshlrev_b32 v99, 16, v216
	v_mul_f32_e32 v126, v185, v126
	v_mul_f32_e32 v144, v185, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v119, v185, v119 :: v_dual_fmac_f32 v70, v94, v93
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[93:94], v206, s[28:31], 0 offen
	buffer_load_b64 v[95:96], v207, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v137, v185, v137
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v128, v185, v128
	v_mul_f32_e32 v132, v185, v132
	v_mul_f32_e32 v136, v185, v136
	v_mul_f32_e32 v146, v185, v146
	v_mul_f32_e32 v101, v185, v101
	v_mul_f32_e32 v111, v185, v111
	v_mul_f32_e32 v112, v185, v112
	v_mul_f32_e32 v115, v185, v115
	v_mul_f32_e32 v120, v185, v120
	v_mul_f32_e32 v121, v185, v121
	v_mul_f32_e32 v125, v185, v125
	v_mul_f32_e32 v129, v185, v129
	v_mul_f32_e32 v139, v185, v139
	v_mul_f32_e32 v140, v185, v140
	v_mul_f32_e32 v108, v185, v108
	v_mul_f32_e32 v113, v185, v113
	v_mul_f32_e32 v116, v185, v116
	v_mul_f32_e32 v118, v185, v118
	v_mul_f32_e32 v124, v185, v124
	v_mul_f32_e32 v130, v185, v130
	v_mul_f32_e32 v133, v185, v133
	v_mul_f32_e32 v134, v185, v134
	v_mul_f32_e32 v138, v185, v138
	v_mul_f32_e32 v145, v185, v145
	v_mul_f32_e32 v147, v185, v147
	v_mul_f32_e32 v148, v185, v148
	v_mul_f32_e32 v149, v185, v149
	v_mul_f32_e32 v104, v185, v104
	v_mul_f32_e32 v105, v185, v105
	v_mul_f32_e32 v109, v185, v109
	v_mul_f32_e32 v110, v185, v110
	v_mul_f32_e32 v114, v185, v114
	v_mul_f32_e32 v117, v185, v117
	v_mul_f32_e32 v122, v185, v122
	v_mul_f32_e32 v123, v185, v123
	v_mul_f32_e32 v127, v185, v127
	v_mul_f32_e32 v131, v185, v131
	v_mul_f32_e32 v141, v185, v141
	v_mul_f32_e32 v142, v185, v142
	v_mul_f32_e32 v151, v185, v151
	v_mul_f32_e32 v152, v185, v152
	v_mul_f32_e32 v154, v185, v154
	v_mul_f32_e32 v143, v185, v143
	v_mul_f32_e32 v150, v185, v150
	v_mul_f32_e32 v156, v185, v156
	v_mul_f32_e32 v153, v185, v153
	v_mul_f32_e32 v155, v185, v155
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v79, v92 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v80, v[93:94], v[95:96] offset1:8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v201, 16, v201
	v_lshlrev_b32_e32 v202, 16, v202
	v_lshlrev_b32_e32 v206, 16, v217
	v_lshlrev_b32_e32 v207, 16, v218
	v_lshlrev_b32_e32 v211, 16, v219
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v191, 16, v191
	v_lshlrev_b32_e32 v192, 16, v192
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v194, 16, v194
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v196, 16, v196
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v197, 16, v197
	v_lshlrev_b32_e32 v198, 16, v198
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v158, 16, v158
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v199, 16, v199
	v_lshlrev_b32_e32 v200, 16, v200
	v_lshlrev_b32_e32 v203, 16, v203
	v_lshlrev_b32_e32 v204, 16, v204
	v_lshlrev_b32_e32 v208, 16, v208
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v103, v206 :: v_dual_lshlrev_b32 v209, 16, v209
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v210, 16, v210
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v105, v211 :: v_dual_lshlrev_b32 v205, 16, v205
	v_dual_fmac_f32 v69, v100, v99 :: v_dual_fmac_f32 v68, v101, v201
	v_dual_fmac_f32 v67, v102, v202 :: v_dual_fmac_f32 v60, v109, v192
	v_dual_fmac_f32 v65, v104, v207 :: v_dual_fmac_f32 v62, v107, v190
	v_dual_fmac_f32 v63, v106, v189 :: v_dual_fmac_f32 v58, v111, v194
	v_dual_fmac_f32 v61, v108, v191 :: v_dual_fmac_f32 v56, v113, v196
	v_dual_fmac_f32 v59, v110, v193 :: v_dual_fmac_f32 v52, v115, v182
	v_dual_fmac_f32 v57, v112, v195 :: v_dual_fmac_f32 v50, v117, v184
	v_dual_fmac_f32 v55, v114, v181 :: v_dual_fmac_f32 v48, v119, v198
	v_dual_fmac_f32 v53, v116, v183 :: v_dual_fmac_f32 v46, v121, v162
	v_dual_fmac_f32 v51, v118, v197 :: v_dual_fmac_f32 v44, v123, v164
	v_dual_fmac_f32 v49, v120, v161 :: v_dual_fmac_f32 v42, v125, v178
	v_dual_fmac_f32 v47, v122, v163 :: v_dual_fmac_f32 v40, v127, v158
	v_dual_fmac_f32 v45, v124, v177 :: v_dual_fmac_f32 v38, v129, v160
	v_dual_fmac_f32 v43, v126, v157 :: v_dual_fmac_f32 v36, v131, v166
	v_dual_fmac_f32 v41, v128, v159 :: v_dual_fmac_f32 v34, v133, v168
	v_dual_fmac_f32 v39, v130, v165 :: v_dual_fmac_f32 v32, v135, v170
	v_dual_fmac_f32 v37, v132, v167 :: v_dual_fmac_f32 v30, v137, v172
	v_dual_fmac_f32 v35, v134, v169 :: v_dual_fmac_f32 v28, v139, v174
	v_dual_fmac_f32 v33, v136, v171 :: v_dual_fmac_f32 v26, v141, v176
	v_dual_fmac_f32 v31, v138, v173 :: v_dual_fmac_f32 v24, v143, v180
	v_dual_fmac_f32 v29, v140, v175 :: v_dual_fmac_f32 v16, v151, v208
	v_dual_fmac_f32 v27, v142, v179 :: v_dual_fmac_f32 v14, v153, v209
	v_dual_fmac_f32 v25, v144, v186 :: v_dual_fmac_f32 v22, v145, v187
	v_dual_fmac_f32 v23, v146, v188 :: v_dual_fmac_f32 v20, v147, v199
	v_dual_fmac_f32 v21, v148, v200 :: v_dual_fmac_f32 v18, v149, v203
	v_dual_fmac_f32 v19, v150, v204 :: v_dual_fmac_f32 v12, v156, v205
	v_fmac_f32_e32 v17, v152, v97
	v_fmac_f32_e32 v15, v154, v98
	v_fmac_f32_e32 v13, v155, v210
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow588
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v1, 16, v0
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
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v2, 0
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
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v2, 56, v78
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v140, s11 :: v_dual_mov_b32 v137, s8
	v_dual_mov_b32 v139, s10 :: v_dual_mov_b32 v138, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshl_or_b32 v2, v76, 6, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v136, s7 :: v_dual_mov_b32 v135, s6
	v_dual_mov_b32 v134, s5 :: v_dual_mov_b32 v133, s4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v162, v2, 24, 0
	v_add_nc_u32_e32 v207, 0, v2
	v_xad_u32 v219, v2, 16, 0
	v_xad_u32 v211, v2, 8, 0
	ds_load_2addr_stride64_b64 v[163:166], v162 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[84:87], v207 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[10:11], v162 offset:8192
	ds_load_b64 v[131:132], v219 offset:8192
	ds_load_b64 v[223:224], v211 offset:8192
	ds_load_b64 v[225:226], v207 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[145:148], v162 offset1:2
	ds_load_2addr_stride64_b64 v[149:152], v219 offset1:2
	ds_load_2addr_stride64_b64 v[167:170], v211 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[153:156], v207 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[157:160], v211 offset1:2
	v_xad_u32 v3, v2, 56, 0
	v_xad_u32 v161, v2, 32, 0
	v_xad_u32 v4, v2, 48, 0
	v_xad_u32 v102, v2, 40, 0
	ds_load_2addr_stride64_b64 v[103:106], v3 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[107:110], v3 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[111:114], v3 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[94:97], v3 offset1:2
	ds_load_2addr_stride64_b64 v[115:118], v4 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[119:122], v4 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[123:126], v4 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[98:101], v4 offset1:2
	ds_load_2addr_stride64_b64 v[127:130], v161 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[141:144], v161 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[227:228], v3 offset:8192
	ds_load_b64 v[229:230], v4 offset:8192
	ds_load_b64 v[231:232], v102 offset:8192
	ds_load_b64 v[233:234], v161 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[175:178], v102 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[179:182], v102 offset1:2
	ds_load_2addr_stride64_b64 v[171:174], v219 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[215:218], v219 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[219:222], v219 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[183:186], v102 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[187:190], v102 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[191:194], v161 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[195:198], v161 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(28)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[84:85], v[225:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[86:87], v[225:226], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(24)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[153:154], v[225:226], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(23)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[157:158], v[223:224], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[159:160], v[223:224], v[78:85] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[199:202], v162 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[157:160], v207 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[203:206], v162 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[207:210], v207 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[86:93], v[167:168], v[223:224], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[149:150], v[131:132], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[151:152], v[131:132], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[171:172], v[131:132], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[145:146], v[10:11], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[147:148], v[10:11], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[163:164], v[10:11], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[141:142], v[233:234], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[143:144], v[233:234], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[127:128], v[233:234], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[179:180], v[231:232], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[181:182], v[231:232], v[78:85] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[179:182], v211 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[211:214], v211 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[157:158], v[225:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[98:99], v[229:230], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[100:101], v[229:230], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[175:176], v[231:232], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[94:95], v[227:228], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[96:97], v[227:228], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[155:156], v[225:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[225:226], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[207:208], v[225:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[209:210], v[225:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[169:170], v[223:224], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[123:124], v[229:230], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[179:180], v[223:224], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[181:182], v[223:224], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[211:212], v[223:224], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[213:214], v[223:224], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[173:174], v[131:132], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[215:216], v[131:132], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[217:218], v[131:132], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[219:220], v[131:132], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[221:222], v[131:132], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[165:166], v[10:11], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[203:204], v[10:11], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[205:206], v[10:11], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[199:200], v[10:11], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[201:202], v[10:11], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[129:130], v[233:234], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[195:196], v[233:234], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[197:198], v[233:234], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[191:192], v[233:234], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[193:194], v[233:234], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[177:178], v[231:232], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[187:188], v[231:232], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[189:190], v[231:232], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[183:184], v[231:232], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[185:186], v[231:232], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[125:126], v[229:230], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[119:120], v[229:230], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[121:122], v[229:230], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[115:116], v[229:230], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[117:118], v[229:230], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[111:112], v[227:228], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[113:114], v[227:228], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[107:108], v[227:228], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[109:110], v[227:228], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[103:104], v[227:228], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[105:106], v[227:228], v[133:140] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v109, v2
	v_cvt_f32_i32_e32 v110, v3
	v_cvt_f32_i32_e32 v113, v4
	v_cvt_f32_i32_e32 v114, v5
	v_cvt_f32_i32_e32 v111, v6
	v_cvt_f32_i32_e32 v112, v7
	v_cvt_f32_i32_e32 v115, v8
	v_cvt_f32_i32_e32 v116, v9
	v_cvt_f32_i32_e32 v117, v78
	v_cvt_f32_i32_e32 v118, v79
	v_cvt_f32_i32_e32 v121, v80
	v_cvt_f32_i32_e32 v122, v81
	v_cvt_f32_i32_e32 v119, v82
	v_cvt_f32_i32_e32 v120, v83
	v_cvt_f32_i32_e32 v123, v84
	v_cvt_f32_i32_e32 v124, v85
	v_cvt_f32_i32_e32 v125, v86
	v_cvt_f32_i32_e32 v126, v87
	v_cvt_f32_i32_e32 v129, v88
	v_cvt_f32_i32_e32 v130, v89
	v_cvt_f32_i32_e32 v127, v90
	v_cvt_f32_i32_e32 v128, v91
	v_cvt_f32_i32_e32 v131, v92
	v_cvt_f32_i32_e32 v132, v93
	v_cvt_f32_i32_e32 v107, v95
	v_cvt_f32_i32_e32 v108, v96
	v_cvt_f32_i32_e32 v105, v97
	v_cvt_f32_i32_e32 v106, v98
	v_cvt_f32_i32_e32 v103, v99
	v_cvt_f32_i32_e32 v104, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v99, v141
	v_cvt_f32_i32_e32 v100, v142
	v_cvt_f32_i32_e32 v97, v143
	v_cvt_f32_i32_e32 v98, v144
	v_cvt_f32_i32_e32 v95, v145
	v_cvt_f32_i32_e32 v96, v146
	v_cvt_f32_i32_e32 v93, v147
	v_cvt_f32_i32_e32 v94, v148
	v_cvt_f32_i32_e32 v91, v149
	v_cvt_f32_i32_e32 v92, v150
	v_cvt_f32_i32_e32 v89, v151
	v_cvt_f32_i32_e32 v90, v152
	v_cvt_f32_i32_e32 v87, v153
	v_cvt_f32_i32_e32 v88, v154
	v_cvt_f32_i32_e32 v85, v155
	v_cvt_f32_i32_e32 v86, v156
	v_cvt_f32_i32_e32 v83, v157
	v_cvt_f32_i32_e32 v84, v158
	v_cvt_f32_i32_e32 v81, v159
	v_cvt_f32_i32_e32 v82, v160
	v_cvt_f32_i32_e32 v79, v161
	v_cvt_f32_i32_e32 v80, v162
	v_cvt_f32_i32_e32 v10, v163
	v_cvt_f32_i32_e32 v11, v164
	v_cvt_f32_i32_e32 v8, v133
	v_cvt_f32_i32_e32 v9, v134
	v_cvt_f32_i32_e32 v6, v135
	v_cvt_f32_i32_e32 v7, v136
	v_cvt_f32_i32_e32 v4, v137
	v_cvt_f32_i32_e32 v5, v138
	v_cvt_f32_i32_e32 v3, v139
	v_cvt_f32_i32_e32 v2, v140
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
	s_add_i32 s0, s26, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v134, s0, v77, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v78, s1, v78, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v203, 0xe4, v134
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v134, s2
	v_add_nc_u32_e32 v207, 0xf4, v134
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v76, s27, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v203, 0x80000000, v203, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v133, v77, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v76, s33, s26, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v135, 4, v134
	v_add_nc_u32_e32 v136, 8, v134
	v_add_nc_u32_e32 v137, 16, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v111, v111, v133 :: v_dual_add_nc_u32 v138, 20, v134
	v_mul_f32_e32 v110, v110, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v135, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v109, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v136, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v113, v113, v133 :: v_dual_add_nc_u32 v136, 12, v134
	v_dual_mul_f32 v112, v112, v133 :: v_dual_add_nc_u32 v139, 24, v134
	v_dual_mul_f32 v115, v115, v133 :: v_dual_add_nc_u32 v140, 28, v134
	v_dual_mul_f32 v116, v116, v133 :: v_dual_add_nc_u32 v141, 32, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v117, v117, v133 :: v_dual_add_nc_u32 v142, 36, v134
	v_dual_mul_f32 v118, v118, v133 :: v_dual_add_nc_u32 v143, 40, v134
	v_mul_f32_e32 v114, v114, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v154, v78, s[20:23], 0 offen
	buffer_load_u16 v155, v77, s[20:23], 0 offen
	buffer_load_u16 v156, v135, s[20:23], 0 offen
	buffer_load_u16 v157, v136, s[20:23], 0 offen
	buffer_load_u16 v158, v137, s[20:23], 0 offen
	buffer_load_u16 v159, v138, s[20:23], 0 offen
	buffer_load_u16 v160, v139, s[20:23], 0 offen
	buffer_load_u16 v161, v140, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v121, v121, v133 :: v_dual_add_nc_u32 v136, 44, v134
	v_dual_mul_f32 v122, v122, v133 :: v_dual_add_nc_u32 v137, 48, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v141, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v119, v119, v133 :: v_dual_add_nc_u32 v138, 52, v134
	v_dual_mul_f32 v120, v120, v133 :: v_dual_add_nc_u32 v139, 56, v134
	v_dual_mul_f32 v123, v123, v133 :: v_dual_add_nc_u32 v140, 60, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v142, s2
	v_cndmask_b32_e64 v135, 0x80000000, v143, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v164, v77, s[20:23], 0 offen
	buffer_load_u16 v165, v78, s[20:23], 0 offen
	buffer_load_u16 v166, v135, s[20:23], 0 offen
	buffer_load_u16 v167, v136, s[20:23], 0 offen
	buffer_load_u16 v168, v137, s[20:23], 0 offen
	buffer_load_u16 v169, v138, s[20:23], 0 offen
	buffer_load_u16 v170, v139, s[20:23], 0 offen
	buffer_load_u16 v171, v140, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v124, v124, v133 :: v_dual_add_nc_u32 v141, 64, v134
	v_dual_mul_f32 v125, v125, v133 :: v_dual_add_nc_u32 v142, 0x44, v134
	v_dual_mul_f32 v126, v126, v133 :: v_dual_add_nc_u32 v143, 0x48, v134
	v_dual_mul_f32 v129, v129, v133 :: v_dual_add_nc_u32 v136, 0x4c, v134
	v_dual_mul_f32 v130, v130, v133 :: v_dual_add_nc_u32 v137, 0x50, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v141, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v127, v127, v133 :: v_dual_add_nc_u32 v138, 0x54, v134
	v_dual_mul_f32 v128, v128, v133 :: v_dual_add_nc_u32 v139, 0x58, v134
	v_dual_mul_f32 v131, v131, v133 :: v_dual_add_nc_u32 v140, 0x5c, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v142, s2
	v_cndmask_b32_e64 v135, 0x80000000, v143, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v176, v77, s[20:23], 0 offen
	buffer_load_u16 v177, v78, s[20:23], 0 offen
	buffer_load_u16 v178, v135, s[20:23], 0 offen
	buffer_load_u16 v179, v136, s[20:23], 0 offen
	buffer_load_u16 v180, v137, s[20:23], 0 offen
	buffer_load_u16 v181, v138, s[20:23], 0 offen
	buffer_load_u16 v172, v139, s[20:23], 0 offen
	buffer_load_u16 v173, v140, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.h, 0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v132, v132, v133 :: v_dual_add_nc_u32 v135, 0x60, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v136, 0x64, v134
	v_add_nc_u32_e32 v137, 0x68, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v188.h, v78.h
	v_mov_b16_e64 v189.h, v78.h
	v_mov_b16_e64 v187.h, v78.h
	v_mov_b16_e64 v182.h, v78.h
	v_mov_b16_e64 v183.h, v78.h
	v_mov_b16_e64 v184.h, v78.h
	v_mov_b16_e64 v185.h, v78.h
	v_mov_b16_e64 v186.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v191.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v138, 0x6c, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v190.h, v78.h
	v_mov_b16_e64 v192.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v139, 0x70, v134
	v_add_nc_u32_e32 v140, 0x7c, v134
	v_add_nc_u32_e32 v141, 0x80, v134
	v_add_nc_u32_e32 v142, 0x84, v134
	v_add_nc_u32_e32 v143, 0x88, v134
	v_add_nc_u32_e32 v144, 0x8c, v134
	v_add_nc_u32_e32 v145, 0x90, v134
	v_add_nc_u32_e32 v146, 0x94, v134
	v_add_nc_u32_e32 v147, 0x98, v134
	v_add_nc_u32_e32 v148, 0x9c, v134
	v_add_nc_u32_e32 v149, 0xa0, v134
	v_add_nc_u32_e32 v150, 0xa4, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v133 :: v_dual_add_nc_u32 v151, 0xa8, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v152, 0xac, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v133 :: v_dual_add_nc_u32 v153, 0xb8, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v162, 0xbc, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v133 :: v_dual_add_nc_u32 v163, 0xc0, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v174, 0xc4, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v133 :: v_dual_add_nc_u32 v175, 0xc8, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v198, 0xd0, v134
	v_add_nc_u32_e32 v200, 0xd8, v134
	v_add_nc_u32_e32 v202, 0xe0, v134
	v_add_nc_u32_e32 v204, 0xe8, v134
	v_add_nc_u32_e32 v208, 0xf8, v134
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v211, 0x80000000, v162, s2
	v_cndmask_b32_e64 v212, 0x80000000, v163, s2
	v_cndmask_b32_e64 v213, 0x80000000, v174, s2
	v_cndmask_b32_e64 v214, 0x80000000, v175, s2
	v_cndmask_b32_e64 v198, 0x80000000, v198, s2
	v_cndmask_b32_e64 v200, 0x80000000, v200, s2
	v_cndmask_b32_e64 v202, 0x80000000, v202, s2
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v77, 1, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v11, v133
	v_mul_f32_e32 v9, v9, v133
	v_mul_f32_e32 v7, v7, v133
	v_mul_f32_e32 v5, v5, v133
	v_mul_f32_e32 v3, v3, v133
	v_mul_f32_e32 v8, v8, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v109, v154, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v114, v157, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v54, v109, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v113, v113, v156, v74
	v_fma_f32 v116, v116, v161, v69
	v_fma_f32 v112, v112, v159, v71
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v73, v114, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v54.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v111, v111, v158, v72
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v116, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v115, v160, v70
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v74, v113, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v71, v112, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v117, v117, v164, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v121, v166, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v119, v119, v168, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v117, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v123, v123, v170, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v121, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v119, s2
	v_cndmask_b32_e64 v72, v72, v111, s2
	v_cndmask_b32_e64 v62, v62, v123, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v187.l, v66.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v70, v70, v115, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v188.l, v64.h
	v_cmp_o_f32_e64 s13, v64, v64
	v_mov_b16_e64 v189.l, v62.h
	v_cmp_o_f32_e64 s15, v62, v62
	v_mov_b16_e64 v183.l, v74.h
	v_and_b32_e32 v116, 1, v188
	v_and_b32_e32 v115, 1, v187
	v_and_b32_e32 v117, 1, v189
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v64, v116, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v62, v117, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v130, v179, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v62.l, 0x7fff, v64.h, s13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v128, v181, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v118, v118, v165, v67
	v_fma_f32 v110, v110, v155, v75
	v_fma_f32 v127, v127, v180, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v113, v55, v128, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v124, v124, v171, v61
	v_fma_f32 v126, v126, v177, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v75, v110, s2
	v_cndmask_b32_e64 v112, v56, v127, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v78
	v_mov_b16_e32 v78.l, v73.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v111, v57, v130, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v182.l, v75.h
	v_mov_b16_e64 v184.l, v72.h
	v_add3_u32 v56, v54, v56, 0x7fff
	v_and_b32_e32 v119, 1, v78
	v_mov_b16_e64 v185.l, v70.h
	v_and_b32_e32 v55, 1, v182
	v_mov_b16_e64 v186.l, v68.h
	v_cmp_o_f32_e64 s11, v66, v66
	v_and_b32_e32 v57, 1, v183
	v_mov_b16_e32 v78.l, v71.h
	v_add3_u32 v66, v66, v115, 0x7fff
	v_add3_u32 v54, v75, v55, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v56.h, s0
	v_add3_u32 v56, v73, v119, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v122, v122, v167, v65
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v118, s2
	v_cndmask_b32_e64 v109, v61, v124, s2
	v_cndmask_b32_e64 v110, v59, v126, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v74, v74
	v_and_b32_e32 v59, 1, v184
	v_and_b32_e32 v61, 1, v185
	v_add3_u32 v55, v74, v57, 0x7fff
	v_and_b32_e32 v74, 1, v78
	v_mov_b16_e32 v78.l, v69.h
	v_cndmask_b16 v56.l, 0x7fff, v66.h, s11
	v_and_b32_e32 v114, 1, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v120, v169, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v122, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s9, v68, v68
	v_add3_u32 v57, v72, v59, 0x7fff
	v_add3_u32 v59, v70, v61, 0x7fff
	v_add3_u32 v61, v68, v114, 0x7fff
	v_and_b32_e32 v68, 1, v78
	v_mov_b16_e32 v78.l, v67.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v120, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v72, v72
	v_cmp_o_f32_e64 s1, v73, v73
	v_cmp_o_f32_e64 s6, v69, v69
	v_and_b32_e32 v72, 1, v78
	v_mov_b16_e32 v78.l, v65.h
	v_add3_u32 v68, v69, v68, 0x7fff
	v_cmp_o_f32_e64 s12, v63, v63
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v56.h, s1
	v_and_b32_e32 v73, 1, v78
	v_mov_b16_e32 v78.l, v63.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s10, v65, v65
	v_add3_u32 v65, v65, v73, 0x7fff
	v_and_b32_e32 v66, 1, v78
	v_mov_b16_e32 v78.l, v109.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v129, v178, v58
	v_fma_f32 v132, v132, v173, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v63, v63, v66, 0x7fff
	v_and_b32_e32 v64, 1, v78
	v_mov_b16_e32 v78.l, v110.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v129, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.h, 0x7fff, v65.h, s10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v132, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v109, v64, 0x7fff
	v_and_b32_e32 v69, 1, v78
	v_mov_b16_e64 v191.l, v58.h
	v_mov_b16_e32 v78.l, v111.h
	v_cmp_o_f32_e64 s4, v71, v71
	v_cmp_o_f32_e64 s7, v70, v70
	v_add3_u32 v66, v110, v69, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v69, v108, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	s_clause 0x1
	buffer_load_u16 v193, v135, s[20:23], 0 offen
	buffer_load_u16 v194, v136, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v120, 1, v191
	v_and_b32_e32 v65, 1, v78
	v_mov_b16_e32 v78.l, v113.h
	v_cmp_o_f32_e64 s8, v67, v67
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v70, v58, v120, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s9
	v_add3_u32 v71, v71, v74, 0x7fff
	v_add3_u32 v67, v67, v72, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s14
	v_and_b32_e32 v64, 1, v78
	v_mov_b16_e32 v78.l, v53.h
	v_cndmask_b16 v59.l, 0x7fff, v57.h, s5
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s7
	v_cndmask_b16 v59.h, 0x7fff, v71.h, s4
	v_cndmask_b16 v58.h, 0x7fff, v68.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v67.h, s8
	v_cndmask_b16 v63.l, 0x7fff, v70.h, s19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v70, v107, v133 :: v_dual_and_b32 v71, 1, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v53, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cmp_o_f32_e64 s18, v111, v111
	v_add3_u32 v65, v111, v65, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s15
	v_cndmask_b16 v62.h, 0x7fff, v63.h, s12
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s18
	v_cmp_o_f32_e64 s16, v110, v110
	v_mov_b16_e64 v192.l, v112.h
	v_add3_u32 v64, v113, v64, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v125, v176, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v135, 0x74, v134
	v_add_nc_u32_e32 v136, 0x78, v134
	v_add_nc_u32_e32 v197, 0xcc, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v125, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v199, 0xd4, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v190.l, v60.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s17, v60, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v199, 0x80000000, v199, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v190
	v_add3_u32 v60, v60, v118, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s16
	v_and_b32_e32 v66, 1, v192
	v_add3_u32 v66, v112, v66, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v67, 16, v193
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v67, v70, v67, v50
	v_fma_f32 v68, v69, v68, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v53, v71, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v70, v105, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v50, v67, s2
	v_cndmask_b32_e64 v51, v51, v68, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.h, 0x7fff, v69.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v69, v106, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	s_clause 0x1
	buffer_load_u16 v195, v137, s[20:23], 0 offen
	buffer_load_u16 v196, v138, s[20:23], 0 offen
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v51.h
	v_cmp_o_f32_e64 s0, v51, v51
	v_mov_b16_e32 v66.l, v53.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v137, 0xb0, v134
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v131, v172, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v138, 0xb4, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v52, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.h, 0x7fff, v64.h, vcc_lo
	v_mov_b16_e32 v64.h, v78.h
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v65.h
	v_cndmask_b16 v52.l, 0x7fff, v66.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v66.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v201, 0xdc, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v65, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v66, 1, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v201, 0x80000000, v201, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.l, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v64, v53, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v67, 16, v195
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v67, v70, v67, v48
	v_fma_f32 v65, v69, v68, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v51, v71, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v69, v103, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v48, v67, s2
	v_cndmask_b32_e64 v49, v49, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.h, 0x7fff, v68.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v104, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	s_clause 0x1
	buffer_load_u16 v205, v139, s[20:23], 0 offen
	buffer_load_u16 v206, v135, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v49.h
	v_cmp_o_f32_e64 s0, v49, v49
	v_mov_b16_e32 v65.l, v51.h
	v_mov_b16_e32 v65.h, v78.h
	v_cndmask_b16 v48.l, 0x7fff, v64.h, vcc_lo
	v_and_b32_e32 v70, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_mov_b16_e32 v64.h, v78.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v135, 0xec, v134
	v_add_nc_u32_e32 v139, 0xf0, v134
	v_add_nc_u32_e32 v134, 0xfc, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v217, 0x80000000, v139, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v66, 16, v205
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v206
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v66, v69, v66, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v53, v68, v67, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v49, v70, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v101, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v46, v66, s2
	v_cndmask_b32_e64 v47, v47, v53, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v46.h, 0x7fff, v67.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v102, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x1
	buffer_load_u16 v209, v136, s[20:23], 0 offen
	buffer_load_u16 v210, v140, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v51, v65, 0x7fff
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v64.l, v49.h
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v151, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v46.l, 0x7fff, v53.h, vcc_lo
	v_and_b32_e32 v69, 1, v78
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v140, 0x80000000, v152, s2
	v_cndmask_b32_e64 v151, 0x80000000, v153, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v209
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v68, v65, v44
	v_fma_f32 v51, v67, v66, v45
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v99, v133
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	s_clause 0x1
	buffer_load_u16 v215, v141, s[20:23], 0 offen
	buffer_load_u16 v216, v142, s[20:23], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v51, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v47, v69, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v44, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v49, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v78.l, v45.h
	v_cndmask_b16 v44.h, 0x7fff, v66.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v100, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v78
	v_mov_b16_e32 v53.l, v47.h
	v_cndmask_b16 v44.l, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_mov_b16_e32 v51.h, v78.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_and_b32_e32 v53, 1, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v64, 16, v215
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v216
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v67, v64, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v49, v66, v65, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v45, v68, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v97, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v42, v64, s2
	v_cndmask_b32_e64 v43, v43, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v65.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v98, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	s_clause 0x1d
	buffer_load_u16 v218, v143, s[20:23], 0 offen
	buffer_load_u16 v219, v144, s[20:23], 0 offen
	buffer_load_u16 v220, v145, s[20:23], 0 offen
	buffer_load_u16 v221, v146, s[20:23], 0 offen
	buffer_load_u16 v222, v147, s[20:23], 0 offen
	buffer_load_u16 v223, v148, s[20:23], 0 offen
	buffer_load_u16 v174, v149, s[20:23], 0 offen
	buffer_load_u16 v175, v150, s[20:23], 0 offen
	buffer_load_u16 v162, v136, s[20:23], 0 offen
	buffer_load_u16 v163, v140, s[20:23], 0 offen
	buffer_load_u16 v152, v137, s[20:23], 0 offen
	buffer_load_u16 v153, v138, s[20:23], 0 offen
	buffer_load_u16 v150, v151, s[20:23], 0 offen
	buffer_load_u16 v151, v211, s[20:23], 0 offen
	buffer_load_u16 v148, v212, s[20:23], 0 offen
	buffer_load_u16 v149, v213, s[20:23], 0 offen
	buffer_load_u16 v146, v214, s[20:23], 0 offen
	buffer_load_u16 v147, v197, s[20:23], 0 offen
	buffer_load_u16 v144, v198, s[20:23], 0 offen
	buffer_load_u16 v145, v199, s[20:23], 0 offen
	buffer_load_u16 v142, v200, s[20:23], 0 offen
	buffer_load_u16 v143, v201, s[20:23], 0 offen
	buffer_load_u16 v140, v202, s[20:23], 0 offen
	buffer_load_u16 v141, v203, s[20:23], 0 offen
	buffer_load_u16 v138, v204, s[20:23], 0 offen
	buffer_load_u16 v139, v135, s[20:23], 0 offen
	buffer_load_u16 v136, v217, s[20:23], 0 offen
	buffer_load_u16 v137, v207, s[20:23], 0 offen
	buffer_load_u16 v135, v208, s[20:23], 0 offen
	buffer_load_u16 v134, v134, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v43.h
	v_add3_u32 v49, v47, v53, 0x7fff
	v_mov_b16_e32 v51.l, v45.h
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v67, 1, v78
	v_cndmask_b16 v42.l, 0x7fff, v49.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v51, 1, v51
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_mov_b16_e32 v49.h, v78.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v53, 16, v218
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v64, 16, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v66, v53, v40
	v_fma_f32 v47, v65, v64, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v43, v67, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v95, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v40, v53, s2
	v_cndmask_b32_e64 v41, v41, v47, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v64.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v53, 16, v221
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v96, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v45, v51, 0x7fff
	v_mov_b16_e32 v78.l, v41.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v51, 16, v220
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v43.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v45, v64, v53, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v66, 1, v78
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v65, v51, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v45, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v47.h, vcc_lo
	v_add3_u32 v53, v41, v66, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v38, v51, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v51, 16, v223
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v39.h
	v_add3_u32 v41, v43, v49, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v94, v133
	v_dual_mul_f32 v64, v93, v133 :: v_dual_lshlrev_b32 v49, 16, v222
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v65, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v53, v51, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.l, v38.h
	v_mov_b16_e32 v47.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v64, v49, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v39, v65, 0x7fff
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v51.h, s0
	v_mov_b16_e32 v78.l, v37.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v49, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v92, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v38, v47, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v174
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v91, v133 :: v_dual_and_b32 v64, 1, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v51, v49, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v36.h
	v_mov_b16_e32 v43.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v53, v47, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v37, v64, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v43
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v47, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v47, 16, v163
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v49.h, s0
	v_mov_b16_e32 v78.l, v35.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v90, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v37, v36, v43, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v162
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v89, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v49, v47, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v34.h
	v_mov_b16_e32 v39.h, v78.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v51, v43, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v35, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v33, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v43, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v43, 16, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v47.h, s0
	v_mov_b16_e32 v78.l, v33.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v88, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v37.h, vcc_lo
	v_add3_u32 v35, v34, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v39, 16, v152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v87, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v78
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v47, v43, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v37.l, v32.h
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
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v39, 16, v151
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s0
	v_mov_b16_e32 v78.l, v31.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v86, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v35.h, vcc_lo
	v_add3_u32 v33, v32, v37, 0x7fff
	v_mov_b16_e32 v35.l, v30.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v37, 16, v150
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v85, v133
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
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v35, 16, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s0
	v_mov_b16_e32 v78.l, v29.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v37, 16, v149
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v84, v133
	v_mul_f32_e32 v43, v83, v133
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
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v33, 16, v146
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v35, 16, v147
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v82, v133
	v_mul_f32_e32 v39, v81, v133
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
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v31, 16, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v79, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v35.h, s0
	v_mov_b16_e32 v78.l, v25.h
	v_mov_b16_e32 v29.l, v24.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v33, 16, v145
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v35, v80, v133
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
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v29, 16, v142
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v31, 16, v143
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
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v140
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v25, 16, v141
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
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v138
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
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v139
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
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v8, 16, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v17, 16, v136
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
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v135
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v134
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 235
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 235
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13176
; TotalNumSgprs: 46
; NumVgprs: 235
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 235
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     235
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
