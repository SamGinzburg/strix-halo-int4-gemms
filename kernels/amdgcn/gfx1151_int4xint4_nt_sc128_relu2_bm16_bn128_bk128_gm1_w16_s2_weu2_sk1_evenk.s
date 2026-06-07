	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
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
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v13, 56, v4
	v_bfe_u32 v77, v0, 4, 1
	v_dual_mov_b32 v23, 0 :: v_dual_lshlrev_b32 v78, 2, v0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
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
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
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
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v18, 0
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v38, 0
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
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v13, 15, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s6
	v_mov_b32_e32 v19, 0
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
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v9, s33, v13
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
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[10:11], null, s17, v5, v[2:3]
	v_mad_u64_u32 v[11:12], null, s17, v3, v[1:2]
	s_mov_b32 s17, s16
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v6, 56, v78
	v_mov_b32_e32 v70, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v13, 6, v6
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v66, 0
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v14, 24, v6
	v_xor_b32_e32 v15, 32, v6
	v_xor_b32_e32 v16, 40, v6
	v_xor_b32_e32 v17, 48, v6
	v_xor_b32_e32 v18, 56, v6
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v8
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v87, 0, v14
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v88, 0, v15
	v_add_nc_u32_e32 v89, 0, v16
	v_add_nc_u32_e32 v90, 0, v17
	v_dual_mov_b32 v2, s17 :: v_dual_add_nc_u32 v91, 0, v18
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
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
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v98, v98
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
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
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
	v_cvt_f32_i32_e32 v148, v148
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v93, v93, v185
	v_mul_f32_e32 v94, v94, v185
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v93, v186
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v93, 16, v210
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v94, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v202, v205, s[36:39], 0 offen offset:36
	buffer_load_u16 v217, v205, s[36:39], 0 offen offset:40
	buffer_load_u16 v218, v205, s[36:39], 0 offen offset:44
	buffer_load_u16 v219, v205, s[36:39], 0 offen offset:48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v94, v95, v185 :: v_dual_lshlrev_b32 v93, 16, v211
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v192, v205, s[36:39], 0 offen offset:64
	buffer_load_u16 v193, v205, s[36:39], 0 offen offset:68
	buffer_load_u16 v194, v205, s[36:39], 0 offen offset:72
	buffer_load_u16 v188, v205, s[36:39], 0 offen offset:212
	buffer_load_u16 v199, v205, s[36:39], 0 offen offset:216
	buffer_load_u16 v200, v205, s[36:39], 0 offen offset:220
	buffer_load_u16 v203, v205, s[36:39], 0 offen offset:224
	buffer_load_u16 v201, v205, s[36:39], 0 offen offset:32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v94, v93
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v94, v96, v185 :: v_dual_lshlrev_b32 v93, 16, v212
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0xa
	buffer_load_u16 v189, v205, s[36:39], 0 offen offset:52
	buffer_load_u16 v190, v205, s[36:39], 0 offen offset:56
	buffer_load_u16 v191, v205, s[36:39], 0 offen offset:60
	buffer_load_u16 v195, v205, s[36:39], 0 offen offset:76
	buffer_load_u16 v196, v205, s[36:39], 0 offen offset:80
	buffer_load_u16 v181, v205, s[36:39], 0 offen offset:84
	buffer_load_u16 v182, v205, s[36:39], 0 offen offset:88
	buffer_load_u16 v183, v205, s[36:39], 0 offen offset:92
	buffer_load_u16 v184, v205, s[36:39], 0 offen offset:96
	buffer_load_u16 v197, v205, s[36:39], 0 offen offset:100
	buffer_load_u16 v198, v205, s[36:39], 0 offen offset:104
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v94, v93
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v97, v185
	v_mul_f32_e32 v100, v100, v185
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v93, 16, v213
	s_clause 0x1b
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
	buffer_load_u16 v172, v205, s[36:39], 0 offen offset:176
	buffer_load_u16 v173, v205, s[36:39], 0 offen offset:180
	buffer_load_u16 v174, v205, s[36:39], 0 offen offset:184
	buffer_load_u16 v175, v205, s[36:39], 0 offen offset:188
	buffer_load_u16 v176, v205, s[36:39], 0 offen offset:192
	buffer_load_u16 v179, v205, s[36:39], 0 offen offset:196
	buffer_load_u16 v180, v205, s[36:39], 0 offen offset:200
	buffer_load_u16 v186, v205, s[36:39], 0 offen offset:204
	buffer_load_u16 v187, v205, s[36:39], 0 offen offset:208
	buffer_load_u16 v204, v205, s[36:39], 0 offen offset:228
	buffer_load_u16 v208, v205, s[36:39], 0 offen offset:232
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v94, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v97, v205, s[36:39], 0 offen offset:236
	buffer_load_u16 v209, v205, s[36:39], 0 offen offset:240
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(55)
	v_dual_mul_f32 v94, v98, v185 :: v_dual_lshlrev_b32 v93, 16, v214
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v98, v205, s[36:39], 0 offen offset:244
	buffer_load_u16 v210, v205, s[36:39], 0 offen offset:248
	buffer_load_u16 v205, v205, s[36:39], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v111, v111, v185
	v_mul_f32_e32 v121, v121, v185
	v_mul_f32_e32 v126, v126, v185
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(57)
	v_dual_fmac_f32 v72, v94, v93 :: v_dual_lshlrev_b32 v93, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v94, v99, v185 :: v_dual_lshlrev_b32 v99, 16, v216
	v_mul_f32_e32 v102, v102, v185
	v_mul_f32_e32 v101, v101, v185
	v_mul_f32_e32 v103, v103, v185
	v_mul_f32_e32 v105, v105, v185
	v_mul_f32_e32 v106, v106, v185
	v_mul_f32_e32 v107, v107, v185
	v_mul_f32_e32 v108, v108, v185
	v_mul_f32_e32 v109, v109, v185
	v_mul_f32_e32 v110, v110, v185
	v_mul_f32_e32 v112, v112, v185
	v_mul_f32_e32 v113, v113, v185
	v_mul_f32_e32 v114, v114, v185
	v_mul_f32_e32 v115, v115, v185
	v_mul_f32_e32 v116, v116, v185
	v_mul_f32_e32 v117, v117, v185
	v_mul_f32_e32 v118, v118, v185
	v_mul_f32_e32 v119, v119, v185
	v_mul_f32_e32 v120, v120, v185
	v_mul_f32_e32 v122, v122, v185
	v_mul_f32_e32 v123, v123, v185
	v_mul_f32_e32 v124, v124, v185
	v_mul_f32_e32 v125, v125, v185
	v_mul_f32_e32 v127, v127, v185
	v_mul_f32_e32 v128, v128, v185
	v_mul_f32_e32 v129, v129, v185
	v_mul_f32_e32 v131, v131, v185
	v_mul_f32_e32 v133, v133, v185
	v_mul_f32_e32 v135, v135, v185
	v_mul_f32_e32 v137, v137, v185
	v_mul_f32_e32 v139, v139, v185
	v_mul_f32_e32 v141, v141, v185
	v_mul_f32_e32 v143, v143, v185
	v_mul_f32_e32 v155, v155, v185
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v94, v93
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[93:94], v206, s[28:31], 0 offen
	buffer_load_b64 v[95:96], v207, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v104, v104, v185
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v100, v99
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v145, v145, v185
	v_mul_f32_e32 v147, v147, v185
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v79, v92 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v80, v[93:94], v[95:96] offset1:8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v211, 16, v219
	v_lshlrev_b32_e32 v194, 16, v194
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v199, 16, v199
	v_lshlrev_b32_e32 v203, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v149, v149, v185 :: v_dual_lshlrev_b32 v210, 16, v210
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v202, 16, v202
	v_lshlrev_b32_e32 v201, 16, v201
	v_lshlrev_b32_e32 v207, 16, v218
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v206, 16, v217
	v_lshlrev_b32_e32 v191, 16, v191
	v_lshlrev_b32_e32 v192, 16, v192
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v196, 16, v196
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v197, 16, v197
	v_lshlrev_b32_e32 v198, 16, v198
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v158, 16, v158
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v200, 16, v200
	v_lshlrev_b32_e32 v204, 16, v204
	v_lshlrev_b32_e32 v208, 16, v208
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v28, v141, v176 :: v_dual_lshlrev_b32 v97, 16, v97
	v_dual_fmac_f32 v26, v143, v180 :: v_dual_lshlrev_b32 v209, 16, v209
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v24, v145, v187 :: v_dual_lshlrev_b32 v205, 16, v205
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v130, v185 :: v_dual_fmac_f32 v61, v109, v192
	v_dual_mul_f32 v132, v132, v185 :: v_dual_fmac_f32 v59, v111, v194
	v_dual_mul_f32 v134, v134, v185 :: v_dual_fmac_f32 v57, v113, v196
	v_dual_mul_f32 v136, v136, v185 :: v_dual_fmac_f32 v55, v115, v182
	v_dual_mul_f32 v138, v138, v185 :: v_dual_fmac_f32 v53, v117, v184
	v_dual_mul_f32 v140, v140, v185 :: v_dual_fmac_f32 v51, v119, v198
	v_dual_mul_f32 v142, v142, v185 :: v_dual_fmac_f32 v49, v121, v162
	v_dual_mul_f32 v144, v144, v185 :: v_dual_fmac_f32 v47, v123, v164
	v_dual_mul_f32 v146, v146, v185 :: v_dual_fmac_f32 v45, v125, v178
	v_dual_mul_f32 v148, v148, v185 :: v_dual_fmac_f32 v43, v127, v158
	v_dual_mul_f32 v150, v150, v185 :: v_dual_fmac_f32 v41, v129, v160
	v_dual_mul_f32 v152, v152, v185 :: v_dual_fmac_f32 v39, v131, v166
	v_dual_mul_f32 v154, v154, v185 :: v_dual_fmac_f32 v37, v132, v167
	v_dual_mul_f32 v156, v156, v185 :: v_dual_fmac_f32 v27, v142, v179
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v22, v147, v199
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v151, v151, v185 :: v_dual_fmac_f32 v20, v149, v203
	v_dual_mul_f32 v153, v153, v185 :: v_dual_fmac_f32 v68, v102, v202
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v101, v201 :: v_dual_fmac_f32 v14, v155, v210
	v_fmac_f32_e32 v66, v104, v207
	v_dual_fmac_f32 v65, v105, v211 :: v_dual_fmac_f32 v64, v106, v189
	v_fmac_f32_e32 v33, v136, v171
	v_fmac_f32_e32 v63, v107, v190
	v_dual_fmac_f32 v67, v103, v206 :: v_dual_fmac_f32 v62, v108, v191
	v_dual_fmac_f32 v60, v110, v193 :: v_dual_fmac_f32 v29, v140, v175
	v_fmac_f32_e32 v58, v112, v195
	v_dual_fmac_f32 v56, v114, v181 :: v_dual_fmac_f32 v25, v144, v186
	v_fmac_f32_e32 v54, v116, v183
	v_dual_fmac_f32 v52, v118, v197 :: v_dual_fmac_f32 v21, v148, v200
	v_fmac_f32_e32 v48, v122, v163
	v_dual_fmac_f32 v50, v120, v161 :: v_dual_fmac_f32 v23, v146, v188
	v_fmac_f32_e32 v42, v128, v159
	v_dual_fmac_f32 v46, v124, v177 :: v_dual_fmac_f32 v19, v150, v204
	v_fmac_f32_e32 v36, v133, v168
	v_fmac_f32_e32 v44, v126, v157
	v_fmac_f32_e32 v34, v135, v170
	v_fmac_f32_e32 v40, v130, v165
	v_dual_fmac_f32 v32, v137, v172 :: v_dual_fmac_f32 v35, v134, v169
	v_dual_fmac_f32 v30, v139, v174 :: v_dual_fmac_f32 v31, v138, v173
	v_dual_fmac_f32 v18, v151, v208 :: v_dual_fmac_f32 v17, v152, v97
	v_dual_fmac_f32 v16, v153, v209 :: v_dual_fmac_f32 v15, v154, v98
	v_fmac_f32_e32 v12, v156, v205
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow210
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v133, 0
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
	v_dual_mov_b32 v133, s11 :: v_dual_and_b32 v2, 56, v78
	v_dual_mov_b32 v132, s10 :: v_dual_mov_b32 v129, s7
	v_mov_b32_e32 v131, s9
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshl_or_b32 v2, v13, 6, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v130, s8 :: v_dual_mov_b32 v127, s5
	v_mov_b32_e32 v128, s6
	v_mov_b32_e32 v126, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v198, v2, 24, 0
	v_add_nc_u32_e32 v202, 0, v2
	v_xad_u32 v218, v2, 16, 0
	v_xad_u32 v3, v2, 56, 0
	v_xad_u32 v4, v2, 48, 0
	v_xad_u32 v11, v2, 40, 0
	v_xad_u32 v190, v2, 32, 0
	v_xad_u32 v2, v2, 8, 0
	ds_load_2addr_stride64_b64 v[162:165], v198 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[84:87], v202 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[222:223], v198 offset:8192
	ds_load_b64 v[224:225], v218 offset:8192
	ds_load_b64 v[226:227], v2 offset:8192
	ds_load_b64 v[228:229], v202 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[106:109], v198 offset1:2
	ds_load_2addr_stride64_b64 v[110:113], v218 offset1:2
	ds_load_2addr_stride64_b64 v[166:169], v2 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[114:117], v202 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[118:121], v2 offset1:2
	ds_load_2addr_stride64_b64 v[134:137], v3 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[138:141], v3 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[142:145], v3 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[94:97], v3 offset1:2
	ds_load_2addr_stride64_b64 v[146:149], v4 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[150:153], v4 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[154:157], v4 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[98:101], v4 offset1:2
	ds_load_2addr_stride64_b64 v[158:161], v190 offset0:4 offset1:6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[230:231], v3 offset:8192
	ds_load_b64 v[232:233], v4 offset:8192
	ds_load_b64 v[234:235], v11 offset:8192
	ds_load_b64 v[236:237], v190 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[102:105], v190 offset1:2
	ds_load_2addr_stride64_b64 v[174:177], v11 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[122:125], v11 offset1:2
	ds_load_2addr_stride64_b64 v[206:209], v2 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[210:213], v2 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[170:173], v218 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[214:217], v218 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[218:221], v218 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[186:189], v190 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[190:193], v190 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[178:181], v11 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[182:185], v11 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[84:85], v[228:229], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[86:87], v[228:229], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[114:115], v[228:229], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(25)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[118:119], v[226:227], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[120:121], v[226:227], v[78:85] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[194:197], v198 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[118:121], v202 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[198:201], v198 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[202:205], v202 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[86:93], v[166:167], v[226:227], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[110:111], v[224:225], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[112:113], v[224:225], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[170:171], v[224:225], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[106:107], v[222:223], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[108:109], v[222:223], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[162:163], v[222:223], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[102:103], v[236:237], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[104:105], v[236:237], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[158:159], v[236:237], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[122:123], v[234:235], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[124:125], v[234:235], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[118:119], v[228:229], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[174:175], v[234:235], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[98:99], v[232:233], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[100:101], v[232:233], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[206:207], v[226:227], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[154:155], v[232:233], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[94:95], v[230:231], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[96:97], v[230:231], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[116:117], v[228:229], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[120:121], v[228:229], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[202:203], v[228:229], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[204:205], v[228:229], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[168:169], v[226:227], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[208:209], v[226:227], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[210:211], v[226:227], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[214:215], v[224:225], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[212:213], v[226:227], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[172:173], v[224:225], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[216:217], v[224:225], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[218:219], v[224:225], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[198:199], v[222:223], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[220:221], v[224:225], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[164:165], v[222:223], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[200:201], v[222:223], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[194:195], v[222:223], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[190:191], v[236:237], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[196:197], v[222:223], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[160:161], v[236:237], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[192:193], v[236:237], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[186:187], v[236:237], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[182:183], v[234:235], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[188:189], v[236:237], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[176:177], v[234:235], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[184:185], v[234:235], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[178:179], v[234:235], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[150:151], v[232:233], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[180:181], v[234:235], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[156:157], v[232:233], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[152:153], v[232:233], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[146:147], v[232:233], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[142:143], v[230:231], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[148:149], v[232:233], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[144:145], v[230:231], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[138:139], v[230:231], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[140:141], v[230:231], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[134:135], v[230:231], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[136:137], v[230:231], v[126:133] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
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
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v2, s34, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s35, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s5, s13, 0xffff
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s4, s12
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s27
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v77, s0, v77, 1
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v136, v2, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v77, s2
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v134, 4, v77
	v_add_nc_u32_e32 v135, 8, v77
	v_add_nc_u32_e32 v137, 16, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v136 :: v_dual_add_nc_u32 v138, 20, v77
	v_mul_f32_e32 v3, v3, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v134, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v4, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v135, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v136 :: v_dual_add_nc_u32 v135, 12, v77
	v_dual_mul_f32 v10, v10, v136 :: v_dual_add_nc_u32 v139, 24, v77
	v_dual_mul_f32 v7, v7, v136 :: v_dual_add_nc_u32 v140, 28, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	s_clause 0x7
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v144, v2, s[4:7], 0 offen
	buffer_load_u16 v134, v134, s[4:7], 0 offen
	buffer_load_u16 v135, v135, s[4:7], 0 offen
	buffer_load_u16 v137, v137, s[4:7], 0 offen
	buffer_load_u16 v138, v138, s[4:7], 0 offen
	buffer_load_u16 v139, v139, s[4:7], 0 offen
	buffer_load_u16 v140, v140, s[4:7], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v78, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v38, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v3, v3, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v80, v80, v136 :: v_dual_add_nc_u32 v141, 32, v77
	v_dual_mul_f32 v9, v9, v136 :: v_dual_add_nc_u32 v142, 36, v77
	v_dual_mul_f32 v82, v82, v136 :: v_dual_add_nc_u32 v143, 40, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v141, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v141, 0x80000000, v142, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v86, v86, v136 :: v_dual_add_nc_u32 v145, 48, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v142, 0x80000000, v143, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v84, v84, v136 :: v_dual_add_nc_u32 v143, 44, v77
	v_dual_mul_f32 v11, v11, v136 :: v_dual_add_nc_u32 v146, 52, v77
	v_dual_mul_f32 v88, v88, v136 :: v_dual_add_nc_u32 v147, 56, v77
	v_dual_mul_f32 v79, v79, v136 :: v_dual_add_nc_u32 v148, 60, v77
	v_dual_mul_f32 v90, v90, v136 :: v_dual_add_nc_u32 v149, 64, v77
	v_dual_mul_f32 v81, v81, v136 :: v_dual_add_nc_u32 v150, 0x44, v77
	v_dual_mul_f32 v92, v92, v136 :: v_dual_add_nc_u32 v151, 0x48, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	s_clause 0x7
	buffer_load_u16 v152, v2, s[4:7], 0 offen
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v149, s2
	v_cndmask_b32_e64 v149, 0x80000000, v150, s2
	v_cndmask_b32_e64 v150, 0x80000000, v151, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v94, v94, v136 :: v_dual_add_nc_u32 v151, 0x4c, v77
	v_dual_mul_f32 v96, v96, v136 :: v_dual_add_nc_u32 v153, 0x50, v77
	v_dual_mul_f32 v83, v83, v136 :: v_dual_add_nc_u32 v154, 0x54, v77
	v_dual_mul_f32 v98, v98, v136 :: v_dual_add_nc_u32 v155, 0x58, v77
	v_dual_mul_f32 v85, v85, v136 :: v_dual_add_nc_u32 v156, 0x5c, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x7
	buffer_load_u16 v160, v2, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v100, v100, v136 :: v_dual_add_nc_u32 v157, 0x60, v77
	v_dual_mul_f32 v87, v87, v136 :: v_dual_add_nc_u32 v158, 0x64, v77
	v_dual_mul_f32 v102, v102, v136 :: v_dual_add_nc_u32 v159, 0x68, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v157, s2
	v_cndmask_b32_e64 v157, 0x80000000, v158, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v106, v106, v136 :: v_dual_add_nc_u32 v161, 0x70, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v158, 0x80000000, v159, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v104, v104, v136 :: v_dual_add_nc_u32 v159, 0x6c, v77
	v_dual_mul_f32 v89, v89, v136 :: v_dual_add_nc_u32 v162, 0x74, v77
	v_dual_mul_f32 v108, v108, v136 :: v_dual_add_nc_u32 v163, 0x78, v77
	v_dual_mul_f32 v91, v91, v136 :: v_dual_add_nc_u32 v164, 0x7c, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v168, v2, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v117, v117, v136 :: v_dual_lshlrev_b32 v134, 16, v134
	v_dual_mul_f32 v110, v110, v136 :: v_dual_add_nc_u32 v165, 0x80, v77
	v_dual_mul_f32 v93, v93, v136 :: v_dual_add_nc_u32 v166, 0x84, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v134, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v112, v112, v136 :: v_dual_add_nc_u32 v167, 0x88, v77
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v165, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v165, 0x80000000, v166, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v75, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v140, 16, v140
	v_cndmask_b32_e64 v166, 0x80000000, v167, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v114, v114, v136 :: v_dual_add_nc_u32 v167, 0x8c, v77
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v140, v70
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_lshlrev_b32 v144, 16, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v116, v116, v136 :: v_dual_add_nc_u32 v169, 0x90, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v70, v10, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v95, v95, v136 :: v_dual_add_nc_u32 v170, 0x94, v77
	v_dual_mul_f32 v118, v118, v136 :: v_dual_add_nc_u32 v171, 0x98, v77
	v_dual_mul_f32 v97, v97, v136 :: v_dual_add_nc_u32 v172, 0x9c, v77
	v_dual_mul_f32 v120, v120, v136 :: v_dual_add_nc_u32 v173, 0xa0, v77
	v_dual_mul_f32 v99, v99, v136 :: v_dual_add_nc_u32 v174, 0xa4, v77
	v_dual_mul_f32 v122, v122, v136 :: v_dual_add_nc_u32 v175, 0xa8, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v144, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v119, v119, v136 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v176, v2, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v173, s2
	v_cndmask_b32_e64 v173, 0x80000000, v174, s2
	v_cndmask_b32_e64 v174, 0x80000000, v175, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v124, v124, v136 :: v_dual_add_nc_u32 v175, 0xac, v77
	v_dual_mul_f32 v126, v126, v136 :: v_dual_add_nc_u32 v177, 0xb0, v77
	v_dual_mul_f32 v101, v101, v136 :: v_dual_add_nc_u32 v178, 0xb4, v77
	v_dual_mul_f32 v128, v128, v136 :: v_dual_add_nc_u32 v179, 0xb8, v77
	v_dual_mul_f32 v103, v103, v136 :: v_dual_add_nc_u32 v180, 0xbc, v77
	v_dual_mul_f32 v130, v130, v136 :: v_dual_add_nc_u32 v181, 0xc0, v77
	v_dual_mul_f32 v105, v105, v136 :: v_dual_add_nc_u32 v182, 0xc4, v77
	v_dual_mul_f32 v132, v132, v136 :: v_dual_add_nc_u32 v183, 0xc8, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v76, v4, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v138, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	s_clause 0x7
	buffer_load_u16 v184, v2, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v181, s2
	v_cndmask_b32_e64 v181, 0x80000000, v182, s2
	v_cndmask_b32_e64 v182, 0x80000000, v183, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_add_nc_u32 v183, 0xcc, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v185, 0xd0, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v107, v107, v136 :: v_dual_add_nc_u32 v186, 0xd4, v77
	v_dual_mul_f32 v109, v109, v136 :: v_dual_add_nc_u32 v188, 0xdc, v77
	v_dual_mul_f32 v111, v111, v136 :: v_dual_add_nc_u32 v190, 0xe4, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v72, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v189, 0xe0, v77
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, 0, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v113, v113, v136 :: v_dual_add_nc_u32 v194, 0xf4, v77
	v_mul_f32_e32 v115, v115, v136
	v_mul_f32_e32 v121, v121, v136
	v_mul_f32_e32 v123, v123, v136
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v75, 0, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v125, v125, v136
	v_mul_f32_e32 v127, v127, v136
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v10, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v129, v136
	v_mul_f32_e32 v131, v131, v136
	v_mul_f32_e32 v133, v133, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v139, v71
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v71, v9, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v78, v79, v141, v68
	v_fma_f32 v79, v80, v142, v67
	v_fma_f32 v80, v81, v143, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v68, v78, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v78, 0, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v80, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v195, 0xf8, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v135, v74
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v193, 0xf0, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v81, v82, v145, v65
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v66, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v74, v6, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v80, 0, v10 :: v_dual_add_nc_u32 v187, 0xd8, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v137, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_nc_u32 v191, 0xe8, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v73, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v152, 16, v152
	s_clause 0x7
	buffer_load_u16 v192, v2, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v189, s2
	v_cndmask_b32_e64 v189, 0x80000000, v190, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v7, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v152, v69
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, 0, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v190, 0x80000000, v191, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v76, 0, v7 :: v_dual_add_nc_u32 v191, 0xec, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v69, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v168, 16, v168
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v11, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v77, 0xfc, v77
	v_lshlrev_b32_e32 v150, 16, v150
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v82, v83, v146, v64
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v66, 0, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x7
	buffer_load_u16 v196, v2, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v83, v84, v147, v63
	v_fma_f32 v84, v85, v148, v62
	v_fma_f32 v85, v86, v160, v61
	v_fma_f32 v86, v87, v149, v60
	v_fma_f32 v87, v88, v150, v59
	v_fma_f32 v88, v89, v151, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v79, s2
	v_cndmask_b32_e64 v63, v63, v83, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v88, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v67, v67
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v81, s2
	v_cndmask_b32_e64 v61, v61, v85, s2
	v_cndmask_b32_e64 v60, v60, v86, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v84, s2
	v_cndmask_b32_e64 v64, v64, v82, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v61, v61
	v_dual_max_f32 v79, 0, v9 :: v_dual_lshlrev_b32 v162, 16, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v9, v62, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v87, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v64, v64
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v1
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v64, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, 0, v7
	v_dual_max_f32 v7, v59, v59 :: v_dual_mul_f32 v62, v62, v62
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v77, v133, v77, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v12, v77, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v77, 0, v8 :: v_dual_max_f32 v8, v38, v38
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v38, 0, v5
	v_dual_max_f32 v5, v65, v65 :: v_dual_lshlrev_b32 v180, 16, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v67, 0, v8 :: v_dual_max_f32 v8, v63, v63
	v_dual_max_f32 v61, 0, v5 :: v_dual_lshlrev_b32 v182, 16, v182
	v_max_f32_e32 v65, 0, v10
	v_max_f32_e32 v5, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v63, 0, v8 :: v_dual_max_f32 v8, v58, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v12, v12, v12 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v63, v63, v63 :: v_dual_max_f32 v58, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v89, v90, v153, v57
	v_fma_f32 v90, v91, v154, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v89, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v56, v56, v90, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v9, v57, v57 :: v_dual_lshlrev_b32 v196, 16, v196
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v56, v56 :: v_dual_lshlrev_b32 v157, 16, v157
	v_max_f32_e32 v56, 0, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v91, v92, v155, v55
	v_fma_f32 v92, v93, v156, v54
	v_fma_f32 v93, v94, v168, v53
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v60, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v95, v157, v52
	v_fma_f32 v95, v96, v158, v51
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v59, 0, v9 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v93, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v52, v94, s2
	v_cndmask_b32_e64 v51, v51, v95, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v91, s2
	v_cndmask_b32_e64 v54, v54, v92, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v53, v53
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v96, v97, v159, v50
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v52, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v51, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v97, v98, v161, v49
	v_fma_f32 v98, v99, v162, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v96, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v57, 0, v7
	v_max_f32_e32 v5, v55, v55
	v_max_f32_e32 v7, v54, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v98, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v54, 0, v9 :: v_dual_lshlrev_b32 v167, 16, v167
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v99, v100, v163, v47
	v_fma_f32 v100, v101, v164, v46
	v_fma_f32 v101, v102, v176, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v97, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v51, 0, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v47, v99, s2
	v_cndmask_b32_e64 v46, v46, v100, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v52, 0, v7 :: v_dual_lshlrev_b32 v169, 16, v169
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v102, v103, v165, v44
	v_fma_f32 v103, v104, v166, v43
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v53, 0, v8
	v_max_f32_e32 v5, v50, v50
	v_dual_max_f32 v8, v48, v48 :: v_dual_lshlrev_b32 v171, 16, v171
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v104, v105, v167, v42
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v102, s2
	v_cndmask_b32_e64 v43, v43, v103, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v42, v104, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v55, 0, v10
	v_max_f32_e32 v7, v49, v49
	v_dual_max_f32 v9, v47, v47 :: v_dual_max_f32 v10, v46, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v175, 16, v175
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v106, v169, v41
	v_fma_f32 v106, v107, v170, v40
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v46, 0, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v107, v108, v171, v39
	v_fma_f32 v108, v109, v172, v37
	v_fma_f32 v109, v110, v184, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v41, v105, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v47, 0, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v108, s2
	v_cndmask_b32_e64 v36, v36, v109, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v48, 0, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v111, v173, v35
	v_fma_f32 v111, v112, v174, v34
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v49, 0, v9 :: v_dual_max_f32 v50, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v112, v113, v175, v33
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v44, v44
	v_dual_max_f32 v8, v43, v43 :: v_dual_lshlrev_b32 v181, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v113, v114, v177, v32
	v_fma_f32 v114, v115, v178, v31
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v42, v42
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v101, s2
	v_cndmask_b32_e64 v39, v39, v107, s2
	v_cndmask_b32_e64 v35, v35, v110, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v113, s2
	v_cndmask_b32_e64 v31, v31, v114, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v41, v41
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v116, v179, v30
	v_fma_f32 v116, v117, v180, v29
	v_fma_f32 v117, v118, v192, v28
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v42, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v118, v119, v181, v27
	v_fma_f32 v119, v120, v182, v26
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v43, 0, v8 :: v_dual_max_f32 v44, 0, v9
	v_dual_max_f32 v8, v37, v37 :: v_dual_max_f32 v9, v36, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v121, v183, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v106, s2
	v_cndmask_b32_e64 v33, v33, v112, s2
	v_cndmask_b32_e64 v30, v30, v115, s2
	v_cndmask_b32_e64 v68, v27, v118, s2
	v_cndmask_b32_e64 v26, v26, v119, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v45, v45
	v_max_f32_e32 v45, 0, v10
	v_max_f32_e32 v7, v39, v39
	v_dual_max_f32 v10, v35, v35 :: v_dual_lshlrev_b32 v189, 16, v189
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v122, v185, v24
	v_fma_f32 v122, v123, v186, v23
	v_fma_f32 v123, v124, v187, v22
	v_fma_f32 v124, v125, v188, v21
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v37, 0, v8
	v_dual_max_f32 v39, 0, v9 :: v_dual_max_f32 v8, v32, v32
	v_max_f32_e32 v9, v31, v31
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v126, v196, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v25, v120, s2
	v_cndmask_b32_e64 v69, v22, v123, s2
	v_cndmask_b32_e64 v70, v21, v124, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v41, 0, v5
	v_dual_max_f32 v5, v40, v40 :: v_dual_max_f32 v36, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v126, v127, v189, v19
	v_fma_f32 v127, v128, v190, v18
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v40, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v129, v191, v17
	v_fma_f32 v129, v130, v193, v16
	v_fma_f32 v130, v131, v194, v15
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v33, v33 :: v_dual_max_f32 v10, v30, v30
	v_dual_max_f32 v32, 0, v8 :: v_dual_max_f32 v33, 0, v9
	v_dual_max_f32 v8, v68, v68 :: v_dual_max_f32 v9, v26, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v17, v128, s2
	v_cndmask_b32_e64 v73, v16, v129, s2
	v_cndmask_b32_e64 v15, v15, v130, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v27, 0, v10 :: v_dual_max_f32 v10, v25, v25
	v_max_f32_e32 v25, 0, v8
	v_max_f32_e32 v21, 0, v9
	v_dual_max_f32 v8, v69, v69 :: v_dual_max_f32 v9, v70, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v111, s2
	v_cndmask_b32_e64 v72, v18, v127, s2
	v_cndmask_b32_e64 v29, v29, v116, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v16, 0, v8
	v_max_f32_e32 v18, 0, v9
	v_max_f32_e32 v8, v17, v17
	v_max_f32_e32 v9, v73, v73
	v_dual_max_f32 v17, v15, v15 :: v_dual_mul_f32 v52, v52, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v28, v117, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v11, 0, v8 :: v_dual_mul_f32 v50, v50, v50
	v_max_f32_e32 v8, 0, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v9, 0, v17 :: v_dual_mul_f32 v48, v48, v48
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v17, v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v35, 0, v5
	v_max_f32_e32 v5, v34, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v24, v121, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v132, v195, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v122, s2
	v_cndmask_b32_e64 v20, v20, v125, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v30, 0, v5
	v_max_f32_e32 v5, v29, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v19, v126, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v31, 0, v7
	v_max_f32_e32 v7, v28, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v14, v131, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v28, 0, v5 :: v_dual_max_f32 v5, v24, v24
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v26, 0, v7
	v_dual_max_f32 v22, 0, v10 :: v_dual_max_f32 v7, v23, v23
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v56, v56, v56
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v20, v20
	v_dual_max_f32 v20, 0, v5 :: v_dual_max_f32 v5, v71, v71
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v60, v60, v60 :: v_dual_mul_f32 v23, v3, v3
	v_dual_mul_f32 v42, v42, v42 :: v_dual_max_f32 v19, 0, v7
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v72, v72 :: v_dual_mul_f32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v15, 0, v5
	v_max_f32_e32 v5, v74, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v23.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v14, 0, v10
	v_max_f32_e32 v10, 0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v17.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, 0, v5
	v_max_f32_e32 v5, 0, v12
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v12, s27, v13
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, v4.h
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v13, v75, v75 :: v_dual_mul_f32 v44, v44, v44
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v29, 1, v4
	v_mul_f32_e32 v34, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v3
	v_mov_b16_e32 v68.l, v13.h
	v_mov_b16_e32 v68.h, v4.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v3, s33, s26, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v23, v29, 0x7fff
	v_mov_b16_e32 v4.l, v34.h
	v_add3_u32 v6, v17, v24, 0x7fff
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v26, v26, v26 :: v_dual_and_b32 v17, 1, v68
	v_dual_mul_f32 v23, v77, v77 :: v_dual_mul_f32 v24, v76, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v12.h
	v_and_b32_e32 v12, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v13, v17, 0x7fff
	v_mov_b16_e32 v4.l, v23.h
	v_mov_b16_e32 v17.l, v24.h
	v_mov_b16_e32 v17.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v29, v78, v78 :: v_dual_mul_f32 v36, v36, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v34, v12, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v34, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v40, v40, v40 :: v_dual_and_b32 v17, 1, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v34.h
	v_mov_b16_e32 v12.l, v13.h
	v_add3_u32 v17, v24, v17, 0x7fff
	v_add3_u32 v13, v23, v38, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v22, v22, v22 :: v_dual_and_b32 v23, 1, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v38, v66, v66
	v_mul_f32_e32 v66, v67, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v17.h
	v_add3_u32 v23, v29, v23, 0x7fff
	v_add3_u32 v17, v34, v24, 0x7fff
	v_mov_b16_e32 v24.l, v38.h
	v_mov_b16_e32 v24.h, v4.h
	v_mov_b16_e32 v4.l, v66.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v29, v80, v80 :: v_dual_mul_f32 v34, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v23, 1, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v29.h
	v_mov_b16_e32 v67.l, v34.h
	v_mov_b16_e32 v67.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v61, v61, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v38, v23, 0x7fff
	v_add3_u32 v23, v66, v24, 0x7fff
	v_and_b32_e32 v24, 1, v4
	v_and_b32_e32 v66, 1, v67
	v_mov_b16_e32 v67.l, v61.h
	v_mov_b16_e32 v23.l, v38.h
	v_mov_b16_e32 v4.l, v62.h
	v_add3_u32 v24, v29, v24, 0x7fff
	v_add3_u32 v34, v34, v66, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v32, v32, v32 :: v_dual_and_b32 v29, 1, v67
	v_mul_f32_e32 v38, v64, v64
	v_mul_f32_e32 v64, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v34.h
	v_add3_u32 v29, v61, v29, 0x7fff
	v_mov_b16_e32 v61.l, v63.h
	v_mov_b16_e32 v61.h, v4.h
	v_and_b32_e32 v34, 1, v4
	v_mov_b16_e32 v4.l, v38.h
	v_mov_b16_e32 v65.l, v64.h
	v_mov_b16_e32 v65.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v61, 1, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v62, v34, 0x7fff
	v_and_b32_e32 v62, 1, v4
	v_mov_b16_e32 v34.l, v29.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v29, v63, v61, 0x7fff
	v_mov_b16_e32 v4.l, v56.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v61, 1, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v38, v62, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v57, v57, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v29, v58, v58 :: v_dual_and_b32 v62, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v64, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v61.l, v57.h
	v_mov_b16_e32 v61.h, v4.h
	v_mov_b16_e32 v4.l, v29.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v59, v59, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v56, v62, 0x7fff
	v_mov_b16_e32 v56.l, v58.h
	v_and_b32_e32 v58, 1, v61
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v61, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v59.h
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v51, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v60.h
	v_add3_u32 v57, v57, v58, 0x7fff
	v_add3_u32 v29, v29, v61, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v61, 1, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v51.h
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v29.l, v57.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v57, v59, v61, 0x7fff
	v_mov_b16_e32 v4.l, v52.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v59, 1, v62
	v_mul_f32_e32 v53, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v60, v58, 0x7fff
	v_mov_b16_e32 v58.l, v57.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v57, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v51, v59, 0x7fff
	v_mov_b16_e32 v4.l, v54.h
	v_mov_b16_e32 v59.l, v53.h
	v_mov_b16_e32 v59.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v55, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v57, 1, v4
	v_mov_b16_e32 v60.h, v4.h
	v_and_b32_e32 v59, 1, v59
	v_mov_b16_e32 v60.l, v55.h
	v_mov_b16_e32 v4.l, v46.h
	v_mov_b16_e32 v52.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v47, v47, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v53, v59, 0x7fff
	v_add3_u32 v53, v54, v57, 0x7fff
	v_and_b32_e32 v54, 1, v60
	v_and_b32_e32 v57, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	v_mov_b16_e32 v53.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v49, v49, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v55, v54, 0x7fff
	v_mov_b16_e32 v54.l, v47.h
	v_mov_b16_e32 v54.h, v4.h
	v_add3_u32 v46, v46, v57, 0x7fff
	v_mov_b16_e32 v55.l, v49.h
	v_mov_b16_e32 v46.l, v51.h
	v_mov_b16_e32 v55.h, v4.h
	v_and_b32_e32 v51, 1, v54
	v_and_b32_e32 v54, 1, v4
	v_mov_b16_e32 v4.l, v50.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v41, v41
	v_mul_f32_e32 v43, v43, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v47, v51, 0x7fff
	v_add3_u32 v48, v48, v54, 0x7fff
	v_and_b32_e32 v51, 1, v4
	v_and_b32_e32 v54, 1, v55
	v_mov_b16_e32 v55.l, v41.h
	v_mov_b16_e32 v48.l, v47.h
	v_mov_b16_e32 v4.l, v42.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v45, v45, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v49, v54, 0x7fff
	v_add3_u32 v49, v50, v51, 0x7fff
	v_and_b32_e32 v50, 1, v55
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v45.h
	v_mov_b16_e32 v49.l, v47.h
	v_and_b32_e32 v47, 1, v4
	v_add3_u32 v41, v41, v50, 0x7fff
	v_mov_b16_e32 v4.l, v44.h
	v_mov_b16_e32 v50.l, v43.h
	v_mov_b16_e32 v50.h, v4.h
	v_add3_u32 v42, v42, v47, 0x7fff
	v_mov_b16_e32 v51.h, v4.h
	v_and_b32_e32 v47, 1, v4
	v_mov_b16_e32 v4.l, v35.h
	v_and_b32_e32 v50, 1, v50
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v37, v37, v37
	v_mul_f32_e32 v39, v39, v39
	v_mul_f32_e32 v31, v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v43, v50, 0x7fff
	v_add3_u32 v43, v44, v47, 0x7fff
	v_and_b32_e32 v44, 1, v51
	v_and_b32_e32 v47, 1, v4
	v_mov_b16_e32 v4.l, v37.h
	v_mov_b16_e32 v43.l, v41.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v27, v27, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v45, v44, 0x7fff
	v_mov_b16_e32 v44.l, v36.h
	v_mov_b16_e32 v44.h, v4.h
	v_add3_u32 v35, v35, v47, 0x7fff
	v_mov_b16_e32 v45.l, v39.h
	v_mov_b16_e32 v35.l, v41.h
	v_mov_b16_e32 v45.h, v4.h
	v_and_b32_e32 v41, 1, v44
	v_and_b32_e32 v44, 1, v4
	v_mov_b16_e32 v4.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v25, v25, v25
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v36, v41, 0x7fff
	v_add3_u32 v37, v37, v44, 0x7fff
	v_and_b32_e32 v44, 1, v45
	v_and_b32_e32 v41, 1, v4
	v_mov_b16_e32 v45.l, v30.h
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e32 v4.l, v31.h
	v_add3_u32 v36, v39, v44, 0x7fff
	v_add3_u32 v39, v40, v41, 0x7fff
	v_and_b32_e32 v40, 1, v45
	v_mov_b16_e32 v41.l, v27.h
	v_mov_b16_e32 v41.h, v4.h
	v_mov_b16_e32 v39.l, v36.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_and_b32 v36, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v40, 0x7fff
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e32 v40.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v33.h
	v_add3_u32 v31, v31, v36, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v11, v11, v11
	v_mul_f32_e32 v9, v9, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v32, v40, 0x7fff
	v_add3_u32 v32, v33, v36, 0x7fff
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v30.l, v26.h
	v_mov_b16_e32 v4.l, v25.h
	v_mov_b16_e32 v32.l, v30.h
	v_mov_b16_e32 v30.h, v4.h
	v_add3_u32 v28, v28, v36, 0x7fff
	v_and_b32_e32 v33, 1, v41
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v7, v7, v7
	v_mul_f32_e32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_add3_u32 v27, v27, v33, 0x7fff
	v_mov_b16_e32 v33.h, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v28.l, v27.h
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v30, 1, v4
	v_mov_b16_e32 v4.l, v22.h
	v_add3_u32 v26, v26, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v25, v30, 0x7fff
	v_and_b32_e32 v27, 1, v4
	v_mov_b16_e32 v4.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v22, v22, v27, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v21, v21, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v14.h
	v_mov_b16_e32 v27.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v33.l, v21.h
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v33.l, v20.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v21, v30, 0x7fff
	v_and_b32_e32 v26, 1, v33
	v_dual_cndmask_b32 v30, v37, v43 :: v_dual_cndmask_b32 v33, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v21.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v4.h
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v19, v19, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v15.h
	v_mov_b16_e32 v19.l, v20.h
	v_add3_u32 v16, v16, v26, 0x7fff
	v_and_b32_e32 v20, 1, v27
	v_add3_u32 v18, v18, v21, 0x7fff
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v11.h
	v_mov_b16_e32 v18.l, v16.h
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v4.h
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v4.h
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_and_b32_e32 v14, 1, v4
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v4.l, v9.h
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v4.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v10, v10, v16, 0x7fff
	v_and_b32_e32 v16, 1, v4
	v_mov_b16_e32 v4.l, v5.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v8, v8, v20, 0x7fff
	v_add3_u32 v11, v11, v14, 0x7fff
	v_add3_u32 v9, v9, v16, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v7, v7, v21, 0x7fff
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v11.l, v10.h
	v_cndmask_b32_e32 v36, v18, v22, vcc_lo
	v_add3_u32 v1, v5, v4, 0x7fff
	v_mov_b16_e32 v1.l, v7.h
	v_cndmask_b32_e32 v4, v6, v13, vcc_lo
	v_dual_cndmask_b32 v18, v22, v18 :: v_dual_cndmask_b32 v37, v9, v15
	v_cndmask_b32_e32 v9, v15, v9, vcc_lo
	v_mov_b32_e32 v15, 0x5410
	v_dual_mov_b32 v22, 0x7632 :: v_dual_cndmask_b32 v5, v13, v6
	v_dual_cndmask_b32 v7, v17, v12 :: v_dual_cndmask_b32 v6, v12, v17
	v_dual_cndmask_b32 v12, v38, v24 :: v_dual_cndmask_b32 v13, v24, v38
	v_dual_cndmask_b32 v38, v1, v11 :: v_dual_cndmask_b32 v1, v11, v1
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v10, v34, v23, vcc_lo
	v_cndmask_b32_e32 v8, v23, v34, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_cndmask_b32_e32 v16, v56, v58, vcc_lo
	v_cndmask_b32_e32 v20, v29, v52, vcc_lo
	v_cndmask_b32_e32 v23, v53, v48, vcc_lo
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e32 v26, v46, v49, vcc_lo
	v_cndmask_b32_e32 v34, v32, v39, vcc_lo
	v_cndmask_b32_e32 v32, v39, v32, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e32 v17, v52, v29, vcc_lo
	v_cndmask_b32_e32 v27, v35, v42, vcc_lo
	v_cndmask_b32_e32 v29, v42, v35, vcc_lo
	v_dual_cndmask_b32 v35, v28, v31 :: v_dual_cndmask_b32 v28, v31, v28
	v_cndmask_b32_e32 v31, v19, v25, vcc_lo
	v_cndmask_b32_e32 v19, v25, v19, vcc_lo
	v_cndmask_b32_e32 v24, v49, v46, vcc_lo
	v_permlanex16_b32 v25, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v4
	v_and_b32_e32 v40, 0x7060706, v6
	v_dual_cndmask_b32 v14, v58, v56 :: v_dual_cndmask_b32 v21, v48, v53
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v25, v10, v39
	v_perm_b32 v9, v25, v10, v40
	v_perm_b32 v18, v23, v24, v39
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v24, v32, v34, v39
	v_perm_b32 v25, v32, v34, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v4, v11, v5, v39
	v_perm_b32 v5, v11, v5, v40
	v_perm_b32 v6, v22, v7, v39
	v_perm_b32 v7, v22, v7, v40
	v_perm_b32 v10, v13, v12, v39
	v_perm_b32 v11, v13, v12, v40
	v_perm_b32 v12, v15, v14, v39
	v_perm_b32 v13, v15, v14, v40
	v_perm_b32 v14, v16, v17, v39
	v_perm_b32 v15, v16, v17, v40
	v_perm_b32 v16, v20, v21, v39
	v_perm_b32 v17, v20, v21, v40
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_permlanex16_b32 v43, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_add_nc_u32_e32 v3, 32, v33
	v_add_nc_u32_e32 v32, 64, v33
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	v_perm_b32 v0, v42, v37, v39
	v_perm_b32 v1, v42, v37, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v35, 0x80000000, v3 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v35, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_perm_b32 v2, v43, v38, v39
	v_perm_b32 v3, v43, v38, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v5, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v6, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v7, s[24:27], 0 offen
	buffer_store_b128 v[0:3], v8, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 238
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 238
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12752
; TotalNumSgprs: 46
; NumVgprs: 238
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 238
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     238
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
