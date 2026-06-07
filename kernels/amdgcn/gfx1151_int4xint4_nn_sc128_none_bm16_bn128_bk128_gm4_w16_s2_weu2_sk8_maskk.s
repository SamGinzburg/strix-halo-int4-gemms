	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[40:41], s[0:1], 0x20
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v34, 31, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v2, 0x70, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v35, 1, v0
	v_and_b32_e32 v12, 56, v4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v36, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 4, v0
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v114, 0, v9
	v_mov_b32_e32 v42, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v9, v35, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s34, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s35, v4, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	s_mul_i32 s8, s8, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	s_xor_b32 s4, s4, s8
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	s_sub_i32 s14, s4, s8
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s17, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s19, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s18
	s_abs_i32 s2, s19
	s_cvt_f32_u32 s16, s15
	s_sub_i32 s1, 0, s15
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v88, 0
	v_rcp_iflag_f32_e32 v1, s16
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s0, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v1, 1, v34
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s0, s0, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s0, s0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v52, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v103, v0, 4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s1, s1, s0
	v_lshlrev_b32_e32 v113, 2, v0
	s_mul_hi_u32 s1, s0, s1
	v_or_b32_e32 v112, 0x3f0, v0
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s19, s18
	s_mul_hi_u32 s0, s2, s0
	s_ashr_i32 s13, s1, 31
	s_mul_i32 s14, s0, s15
	v_or_b32_e32 v111, 0x7f0, v0
	s_sub_i32 s1, s2, s14
	s_add_i32 s2, s0, 1
	s_sub_i32 s14, s1, s15
	s_cmp_ge_u32 s1, s15
	v_or_b32_e32 v110, 0xbf0, v0
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s14, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s15
	v_or_b32_e32 v109, 0xff0, v0
	s_cselect_b32 s0, s2, s0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s15, s0, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s16, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s1, s15, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s16, v4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s20, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s14, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s1, s18
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s16, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 25
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s14, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s12, s19, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s0, s20, s0
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s14, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v10
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s12, s12, s17
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s35, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s1, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s2, s14, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s1, 64, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s22, s0, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s12, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s12, s34, s14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s0, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s16, s12, v6
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s12, s1, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s2, s0, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s2, s0, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e64 v10, 0x80000000, v6, s2
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	v_or_b32_e32 v108, 0x13f0, v0
	v_or_b32_e32 v107, 0x17f0, v0
	v_or_b32_e32 v106, 0x1bf0, v0
	v_or_b32_e32 v105, 0x1ff0, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v102, 62, v11
	v_or_b32_e32 v101, 0x7e, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v115, 0, v9
	v_add_nc_u32_e32 v104, 0, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s22, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s20, 0x100
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v114, v[5:8]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v115, v10 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s11, s16, 64
	v_sub_nc_u32_e32 v117, s14, v4
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v4, s11, v4
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v5, 56, v113
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v13, 1, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s35, v4
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v14, s34, v36
	v_lshl_or_b32 v5, v36, 6, v5
	s_lshl_b32 s23, s15, 8
	s_lshl_b32 s2, s13, 8
	s_lshl_b32 s15, s15, 7
	v_subrev_nc_u32_e32 v118, s2, v13
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v13, 1, v103
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v15, 1, v102
	v_mul_lo_u32 v14, s22, v14
	v_add3_u32 v2, v4, s15, v2
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v3, s34, v3
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	v_xor_b32_e32 v9, 32, v5
	v_xor_b32_e32 v10, 40, v5
	v_xor_b32_e32 v11, 48, v5
	v_xor_b32_e32 v12, 56, v5
	v_subrev_nc_u32_e32 v119, s2, v13
	v_subrev_nc_u32_e32 v120, s2, v15
	s_lshl_b32 s2, s13, 7
	v_mad_u64_u32 v[17:18], null, s14, v3, v[1:2]
	v_sub_nc_u32_e32 v116, s14, v1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_subrev_nc_u32_e32 v122, s2, v2
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v123, 0, v5
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v124, 0, v6
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v125, 0, v7
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v126, 0, v8
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v121, 1, v14
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v127, 0, v9
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v128, 0, v10
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v129, 0, v11
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v130, 0, v12
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v131, 0, v112
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v132, 0, v111
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v133, 0, v110
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v134, 0, v109
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v135, 0, v108
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v136, 0, v107
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v137, 0, v106
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v138, 0, v105
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_max_i32 s10, s3, 1
	s_lshl_b32 s42, s35, 1
	s_lshl_b32 s43, s35, 6
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s2, s11, v116
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, s11, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s10, s10, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s2, s2, s1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s2, s11, v117
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s11, s11, 64
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v139, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:640
	ds_load_u8 v10, v104 offset:512
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[30:31], v123 offset:8192
	ds_load_b64 v[32:33], v124 offset:8192
	ds_load_b64 v[28:29], v125 offset:8192
	ds_load_b64 v[26:27], v126 offset:8192
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s2, s2, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s10, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v244, 0x80000000, v122, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v248, v121, s[28:31], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[244:247], v244, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v121, 2, v121
	v_add_nc_u32_e32 v122, s43, v122
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:896
	ds_load_u8 v11, v104 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:128
	ds_load_u8 v12, v104
	v_lshl_or_b32 v19, v10, 16, v9
	ds_load_u8 v9, v104 offset:1664
	ds_load_u8 v10, v104 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:384
	ds_load_u8 v13, v104 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v12, 16, v11
	ds_load_u8 v10, v104 offset:1920
	ds_load_u8 v11, v104 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1152
	ds_load_u8 v12, v104 offset:1024
	v_lshl_or_b32 v21, v10, 16, v9
	ds_load_u8 v9, v104 offset:2688
	ds_load_u8 v10, v104 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1408
	ds_load_u8 v13, v104 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v12, 16, v11
	ds_load_u8 v10, v104 offset:2944
	ds_load_u8 v11, v104 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2176
	ds_load_u8 v12, v104 offset:2048
	v_lshl_or_b32 v23, v10, 16, v9
	ds_load_u8 v9, v104 offset:3712
	ds_load_u8 v10, v104 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2432
	ds_load_u8 v13, v104 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v12, 16, v11
	ds_load_u8 v10, v104 offset:3968
	ds_load_u8 v11, v104 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3200
	ds_load_u8 v12, v104 offset:3072
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v104 offset:4736
	ds_load_u8 v10, v104 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3456
	ds_load_u8 v13, v104 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v12, 16, v11
	ds_load_u8 v10, v104 offset:4992
	ds_load_u8 v11, v104 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4224
	ds_load_u8 v12, v104 offset:4096
	v_lshl_or_b32 v141, v10, 16, v9
	ds_load_u8 v9, v104 offset:5760
	ds_load_u8 v10, v104 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4480
	ds_load_u8 v13, v104 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v12, 16, v11
	ds_load_u8 v10, v104 offset:6016
	ds_load_u8 v11, v104 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5248
	ds_load_u8 v12, v104 offset:5120
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v104 offset:6784
	ds_load_u8 v10, v104 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5504
	ds_load_u8 v13, v104 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v12, 16, v11
	ds_load_u8 v10, v104 offset:7040
	ds_load_u8 v11, v104 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6272
	ds_load_u8 v12, v104 offset:6144
	v_lshl_or_b32 v145, v10, 16, v9
	ds_load_u8 v9, v104 offset:7808
	ds_load_u8 v10, v104 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6528
	ds_load_u8 v13, v104 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v12, 16, v11
	ds_load_u8 v10, v104 offset:8064
	ds_load_u8 v11, v104 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7296
	ds_load_u8 v12, v104 offset:7168
	v_lshl_or_b32 v147, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7552
	ds_load_u8 v13, v104 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[30:31], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[18:19], v130 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[32:33], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[20:21], v129 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[28:29], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[22:23], v128 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[26:27], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[24:25], v127 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[22:23], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[20:21], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[18:19], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v146, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:656
	ds_load_u8 v10, v104 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v11
	v_cvt_f32_i32_e32 v144, v12
	v_cvt_f32_i32_e32 v143, v13
	v_cvt_f32_i32_e32 v142, v14
	v_cvt_f32_i32_e32 v141, v15
	v_cvt_f32_i32_e32 v140, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v242, s23, v118
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v118, s42, v118
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v242, v242, s[36:39], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:912
	ds_load_u8 v11, v104 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:16
	ds_load_u8 v12, v104 offset:144
	v_lshl_or_b32 v149, v10, 16, v9
	ds_load_u8 v9, v104 offset:1680
	ds_load_u8 v10, v104 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v104 offset:400
	ds_load_u8 v13, v104 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v12, 16, v11
	ds_load_u8 v10, v104 offset:1936
	ds_load_u8 v11, v104 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1168
	ds_load_u8 v12, v104 offset:1040
	v_lshl_or_b32 v151, v10, 16, v9
	ds_load_u8 v9, v104 offset:2704
	ds_load_u8 v10, v104 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1424
	ds_load_u8 v13, v104 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v12, 16, v11
	ds_load_u8 v10, v104 offset:2960
	ds_load_u8 v11, v104 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2192
	ds_load_u8 v12, v104 offset:2064
	v_lshl_or_b32 v153, v10, 16, v9
	ds_load_u8 v9, v104 offset:3728
	ds_load_u8 v10, v104 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2448
	ds_load_u8 v13, v104 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v12, 16, v11
	ds_load_u8 v10, v104 offset:3984
	ds_load_u8 v11, v104 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3216
	ds_load_u8 v12, v104 offset:3088
	v_lshl_or_b32 v155, v10, 16, v9
	ds_load_u8 v9, v104 offset:4752
	ds_load_u8 v10, v104 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3472
	ds_load_u8 v13, v104 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v12, 16, v11
	ds_load_u8 v10, v104 offset:5008
	ds_load_u8 v11, v104 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4240
	ds_load_u8 v12, v104 offset:4112
	v_lshl_or_b32 v157, v10, 16, v9
	ds_load_u8 v9, v104 offset:5776
	ds_load_u8 v10, v104 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4496
	ds_load_u8 v13, v104 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v12, 16, v11
	ds_load_u8 v10, v104 offset:6032
	ds_load_u8 v11, v104 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5264
	ds_load_u8 v12, v104 offset:5136
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v104 offset:6800
	ds_load_u8 v10, v104 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5520
	ds_load_u8 v13, v104 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v104 offset:7056
	ds_load_u8 v11, v104 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6288
	ds_load_u8 v12, v104 offset:6160
	v_lshl_or_b32 v161, v10, 16, v9
	ds_load_u8 v9, v104 offset:7824
	ds_load_u8 v10, v104 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6544
	ds_load_u8 v13, v104 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	ds_load_u8 v10, v104 offset:8080
	ds_load_u8 v11, v104 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7312
	ds_load_u8 v12, v104 offset:7184
	v_lshl_or_b32 v163, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7568
	ds_load_u8 v13, v104 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v155, v9
	v_cvt_f32_i32_e32 v154, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:672
	ds_load_u8 v10, v104 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v11
	v_cvt_f32_i32_e32 v152, v12
	v_cvt_f32_i32_e32 v151, v13
	v_cvt_f32_i32_e32 v150, v14
	v_cvt_f32_i32_e32 v149, v15
	v_cvt_f32_i32_e32 v148, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:928
	ds_load_u8 v11, v104 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:32
	ds_load_u8 v12, v104 offset:160
	v_lshl_or_b32 v157, v10, 16, v9
	ds_load_u8 v9, v104 offset:1696
	ds_load_u8 v10, v104 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v104 offset:416
	ds_load_u8 v13, v104 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v12, 16, v11
	ds_load_u8 v10, v104 offset:1952
	ds_load_u8 v11, v104 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1184
	ds_load_u8 v12, v104 offset:1056
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v104 offset:2720
	ds_load_u8 v10, v104 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1440
	ds_load_u8 v13, v104 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v104 offset:2976
	ds_load_u8 v11, v104 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2208
	ds_load_u8 v12, v104 offset:2080
	v_lshl_or_b32 v161, v10, 16, v9
	ds_load_u8 v9, v104 offset:3744
	ds_load_u8 v10, v104 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2464
	ds_load_u8 v13, v104 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	ds_load_u8 v10, v104 offset:4000
	ds_load_u8 v11, v104 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3232
	ds_load_u8 v12, v104 offset:3104
	v_lshl_or_b32 v163, v10, 16, v9
	ds_load_u8 v9, v104 offset:4768
	ds_load_u8 v10, v104 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3488
	ds_load_u8 v13, v104 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v12, 16, v11
	ds_load_u8 v10, v104 offset:5024
	ds_load_u8 v11, v104 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4256
	ds_load_u8 v12, v104 offset:4128
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v104 offset:5792
	ds_load_u8 v10, v104 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4512
	ds_load_u8 v13, v104 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v12, 16, v11
	ds_load_u8 v10, v104 offset:6048
	ds_load_u8 v11, v104 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5280
	ds_load_u8 v12, v104 offset:5152
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v104 offset:6816
	ds_load_u8 v10, v104 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5536
	ds_load_u8 v13, v104 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v104 offset:7072
	ds_load_u8 v11, v104 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6304
	ds_load_u8 v12, v104 offset:6176
	v_lshl_or_b32 v169, v10, 16, v9
	ds_load_u8 v9, v104 offset:7840
	ds_load_u8 v10, v104 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6560
	ds_load_u8 v13, v104 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	ds_load_u8 v10, v104 offset:8096
	ds_load_u8 v11, v104 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7328
	ds_load_u8 v12, v104 offset:7200
	v_lshl_or_b32 v171, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7584
	ds_load_u8 v13, v104 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v163, v9
	v_cvt_f32_i32_e32 v162, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:688
	ds_load_u8 v10, v104 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v161, v11
	v_cvt_f32_i32_e32 v160, v12
	v_cvt_f32_i32_e32 v159, v13
	v_cvt_f32_i32_e32 v158, v14
	v_cvt_f32_i32_e32 v157, v15
	v_cvt_f32_i32_e32 v156, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:944
	ds_load_u8 v11, v104 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:48
	ds_load_u8 v12, v104 offset:176
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v104 offset:1712
	ds_load_u8 v10, v104 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v104 offset:432
	ds_load_u8 v13, v104 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v12, 16, v11
	ds_load_u8 v10, v104 offset:1968
	ds_load_u8 v11, v104 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1200
	ds_load_u8 v12, v104 offset:1072
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v104 offset:2736
	ds_load_u8 v10, v104 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1456
	ds_load_u8 v13, v104 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v104 offset:2992
	ds_load_u8 v11, v104 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2224
	ds_load_u8 v12, v104 offset:2096
	v_lshl_or_b32 v169, v10, 16, v9
	ds_load_u8 v9, v104 offset:3760
	ds_load_u8 v10, v104 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2480
	ds_load_u8 v13, v104 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	ds_load_u8 v10, v104 offset:4016
	ds_load_u8 v11, v104 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3248
	ds_load_u8 v12, v104 offset:3120
	v_lshl_or_b32 v171, v10, 16, v9
	ds_load_u8 v9, v104 offset:4784
	ds_load_u8 v10, v104 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3504
	ds_load_u8 v13, v104 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v12, 16, v11
	ds_load_u8 v10, v104 offset:5040
	ds_load_u8 v11, v104 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4272
	ds_load_u8 v12, v104 offset:4144
	v_lshl_or_b32 v173, v10, 16, v9
	ds_load_u8 v9, v104 offset:5808
	ds_load_u8 v10, v104 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4528
	ds_load_u8 v13, v104 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v12, 16, v11
	ds_load_u8 v10, v104 offset:6064
	ds_load_u8 v11, v104 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5296
	ds_load_u8 v12, v104 offset:5168
	v_lshl_or_b32 v175, v10, 16, v9
	ds_load_u8 v9, v104 offset:6832
	ds_load_u8 v10, v104 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5552
	ds_load_u8 v13, v104 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v12, 16, v11
	ds_load_u8 v10, v104 offset:7088
	ds_load_u8 v11, v104 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6320
	ds_load_u8 v12, v104 offset:6192
	v_lshl_or_b32 v177, v10, 16, v9
	ds_load_u8 v9, v104 offset:7856
	ds_load_u8 v10, v104 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6576
	ds_load_u8 v13, v104 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v12, 16, v11
	ds_load_u8 v10, v104 offset:8112
	ds_load_u8 v11, v104 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7344
	ds_load_u8 v12, v104 offset:7216
	v_lshl_or_b32 v179, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7600
	ds_load_u8 v13, v104 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[174:175], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[178:179], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v171, v9
	v_cvt_f32_i32_e32 v170, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:704
	ds_load_u8 v10, v104 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v169, v11
	v_cvt_f32_i32_e32 v168, v12
	v_cvt_f32_i32_e32 v167, v13
	v_cvt_f32_i32_e32 v166, v14
	v_cvt_f32_i32_e32 v165, v15
	v_cvt_f32_i32_e32 v164, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:960
	ds_load_u8 v11, v104 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:192
	ds_load_u8 v12, v104 offset:64
	v_lshl_or_b32 v173, v10, 16, v9
	ds_load_u8 v9, v104 offset:1728
	ds_load_u8 v10, v104 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:448
	ds_load_u8 v13, v104 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v12, 16, v11
	ds_load_u8 v10, v104 offset:1984
	ds_load_u8 v11, v104 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1216
	ds_load_u8 v12, v104 offset:1088
	v_lshl_or_b32 v175, v10, 16, v9
	ds_load_u8 v9, v104 offset:2752
	ds_load_u8 v10, v104 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1472
	ds_load_u8 v13, v104 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v12, 16, v11
	ds_load_u8 v10, v104 offset:3008
	ds_load_u8 v11, v104 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2240
	ds_load_u8 v12, v104 offset:2112
	v_lshl_or_b32 v177, v10, 16, v9
	ds_load_u8 v9, v104 offset:3776
	ds_load_u8 v10, v104 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2496
	ds_load_u8 v13, v104 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v12, 16, v11
	ds_load_u8 v10, v104 offset:4032
	ds_load_u8 v11, v104 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3264
	ds_load_u8 v12, v104 offset:3136
	v_lshl_or_b32 v179, v10, 16, v9
	ds_load_u8 v9, v104 offset:4800
	ds_load_u8 v10, v104 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3520
	ds_load_u8 v13, v104 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v12, 16, v11
	ds_load_u8 v10, v104 offset:5056
	ds_load_u8 v11, v104 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4288
	ds_load_u8 v12, v104 offset:4160
	v_lshl_or_b32 v181, v10, 16, v9
	ds_load_u8 v9, v104 offset:5824
	ds_load_u8 v10, v104 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4544
	ds_load_u8 v13, v104 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v12, 16, v11
	ds_load_u8 v10, v104 offset:6080
	ds_load_u8 v11, v104 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5312
	ds_load_u8 v12, v104 offset:5184
	v_lshl_or_b32 v183, v10, 16, v9
	ds_load_u8 v9, v104 offset:6848
	ds_load_u8 v10, v104 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5568
	ds_load_u8 v13, v104 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v12, 16, v11
	ds_load_u8 v10, v104 offset:7104
	ds_load_u8 v11, v104 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6336
	ds_load_u8 v12, v104 offset:6208
	v_lshl_or_b32 v185, v10, 16, v9
	ds_load_u8 v9, v104 offset:7872
	ds_load_u8 v10, v104 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6592
	ds_load_u8 v13, v104 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v12, 16, v11
	ds_load_u8 v10, v104 offset:8128
	ds_load_u8 v11, v104 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7360
	ds_load_u8 v12, v104 offset:7232
	v_lshl_or_b32 v187, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7616
	ds_load_u8 v13, v104 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[174:175], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[178:179], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[180:181], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v179, v9
	v_cvt_f32_i32_e32 v178, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:720
	ds_load_u8 v10, v104 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v177, v11
	v_cvt_f32_i32_e32 v176, v12
	v_cvt_f32_i32_e32 v175, v13
	v_cvt_f32_i32_e32 v174, v14
	v_cvt_f32_i32_e32 v173, v15
	v_cvt_f32_i32_e32 v172, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:976
	ds_load_u8 v11, v104 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:208
	ds_load_u8 v12, v104 offset:80
	v_lshl_or_b32 v181, v10, 16, v9
	ds_load_u8 v9, v104 offset:1744
	ds_load_u8 v10, v104 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:464
	ds_load_u8 v13, v104 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v12, 16, v11
	ds_load_u8 v10, v104 offset:2000
	ds_load_u8 v11, v104 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1232
	ds_load_u8 v12, v104 offset:1104
	v_lshl_or_b32 v183, v10, 16, v9
	ds_load_u8 v9, v104 offset:2768
	ds_load_u8 v10, v104 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1488
	ds_load_u8 v13, v104 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v12, 16, v11
	ds_load_u8 v10, v104 offset:3024
	ds_load_u8 v11, v104 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2256
	ds_load_u8 v12, v104 offset:2128
	v_lshl_or_b32 v185, v10, 16, v9
	ds_load_u8 v9, v104 offset:3792
	ds_load_u8 v10, v104 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2512
	ds_load_u8 v13, v104 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v12, 16, v11
	ds_load_u8 v10, v104 offset:4048
	ds_load_u8 v11, v104 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3280
	ds_load_u8 v12, v104 offset:3152
	v_lshl_or_b32 v187, v10, 16, v9
	ds_load_u8 v9, v104 offset:4816
	ds_load_u8 v10, v104 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3536
	ds_load_u8 v13, v104 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v12, 16, v11
	ds_load_u8 v10, v104 offset:5072
	ds_load_u8 v11, v104 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4304
	ds_load_u8 v12, v104 offset:4176
	v_lshl_or_b32 v189, v10, 16, v9
	ds_load_u8 v9, v104 offset:5840
	ds_load_u8 v10, v104 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4560
	ds_load_u8 v13, v104 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v12, 16, v11
	ds_load_u8 v10, v104 offset:6096
	ds_load_u8 v11, v104 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5328
	ds_load_u8 v12, v104 offset:5200
	v_lshl_or_b32 v191, v10, 16, v9
	ds_load_u8 v9, v104 offset:6864
	ds_load_u8 v10, v104 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5584
	ds_load_u8 v13, v104 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v12, 16, v11
	ds_load_u8 v10, v104 offset:7120
	ds_load_u8 v11, v104 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6352
	ds_load_u8 v12, v104 offset:6224
	v_lshl_or_b32 v193, v10, 16, v9
	ds_load_u8 v9, v104 offset:7888
	ds_load_u8 v10, v104 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6608
	ds_load_u8 v13, v104 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v12, 16, v11
	ds_load_u8 v10, v104 offset:8144
	ds_load_u8 v11, v104 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7376
	ds_load_u8 v12, v104 offset:7248
	v_lshl_or_b32 v195, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7632
	ds_load_u8 v13, v104 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[180:181], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[192:193], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v187, v9
	v_cvt_f32_i32_e32 v186, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:736
	ds_load_u8 v10, v104 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v185, v11
	v_cvt_f32_i32_e32 v184, v12
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v182, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v180, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:992
	ds_load_u8 v11, v104 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:224
	ds_load_u8 v12, v104 offset:96
	v_lshl_or_b32 v189, v10, 16, v9
	ds_load_u8 v9, v104 offset:1760
	ds_load_u8 v10, v104 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:480
	ds_load_u8 v13, v104 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v12, 16, v11
	ds_load_u8 v10, v104 offset:2016
	ds_load_u8 v11, v104 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1248
	ds_load_u8 v12, v104 offset:1120
	v_lshl_or_b32 v191, v10, 16, v9
	ds_load_u8 v9, v104 offset:2784
	ds_load_u8 v10, v104 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:1504
	ds_load_u8 v13, v104 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v12, 16, v11
	ds_load_u8 v10, v104 offset:3040
	ds_load_u8 v11, v104 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:2272
	ds_load_u8 v12, v104 offset:2144
	v_lshl_or_b32 v193, v10, 16, v9
	ds_load_u8 v9, v104 offset:3808
	ds_load_u8 v10, v104 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:2528
	ds_load_u8 v13, v104 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v12, 16, v11
	ds_load_u8 v10, v104 offset:4064
	ds_load_u8 v11, v104 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:3296
	ds_load_u8 v12, v104 offset:3168
	v_lshl_or_b32 v195, v10, 16, v9
	ds_load_u8 v9, v104 offset:4832
	ds_load_u8 v10, v104 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3552
	ds_load_u8 v13, v104 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v12, 16, v11
	ds_load_u8 v10, v104 offset:5088
	ds_load_u8 v11, v104 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4320
	ds_load_u8 v12, v104 offset:4192
	v_lshl_or_b32 v197, v10, 16, v9
	ds_load_u8 v9, v104 offset:5856
	ds_load_u8 v10, v104 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4576
	ds_load_u8 v13, v104 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v12, 16, v11
	ds_load_u8 v10, v104 offset:6112
	ds_load_u8 v11, v104 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5344
	ds_load_u8 v12, v104 offset:5216
	v_lshl_or_b32 v199, v10, 16, v9
	ds_load_u8 v9, v104 offset:6880
	ds_load_u8 v10, v104 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5600
	ds_load_u8 v13, v104 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v12, 16, v11
	ds_load_u8 v10, v104 offset:7136
	ds_load_u8 v11, v104 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6368
	ds_load_u8 v12, v104 offset:6240
	v_lshl_or_b32 v201, v10, 16, v9
	ds_load_u8 v9, v104 offset:7904
	ds_load_u8 v10, v104 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6624
	ds_load_u8 v13, v104 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v12, 16, v11
	ds_load_u8 v10, v104 offset:8160
	ds_load_u8 v11, v104 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:7392
	ds_load_u8 v12, v104 offset:7264
	v_lshl_or_b32 v203, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7648
	ds_load_u8 v13, v104 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v202, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[192:193], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v195, v9
	v_cvt_f32_i32_e32 v194, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v104 offset:240
	ds_load_u8 v10, v104 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v193, v11
	v_cvt_f32_i32_e32 v192, v12
	v_cvt_f32_i32_e32 v191, v13
	v_cvt_f32_i32_e32 v190, v14
	v_cvt_f32_i32_e32 v189, v15
	v_cvt_f32_i32_e32 v188, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:496
	ds_load_u8 v11, v104 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:752
	ds_load_u8 v12, v104 offset:624
	v_lshl_or_b32 v196, v10, 16, v9
	ds_load_u8 v9, v104 offset:1264
	ds_load_u8 v10, v104 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v131
	ds_load_u8 v13, v104 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v12, 16, v11
	ds_load_u8 v10, v104 offset:1520
	ds_load_u8 v11, v104 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:1776
	ds_load_u8 v12, v104 offset:1648
	v_lshl_or_b32 v198, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v132
	ds_load_u8 v13, v104 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[30:31], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v30, v104 offset:2288
	ds_load_u8 v31, v104 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v104 offset:2544
	ds_load_u8 v32, v104 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v104 offset:2800
	ds_load_u8 v33, v104 offset:2672
	v_lshl_or_b32 v30, v31, 16, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v133
	ds_load_u8 v196, v104 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v196, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[28:29], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v28, v104 offset:3312
	ds_load_u8 v29, v104 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v104 offset:3568
	ds_load_u8 v30, v104 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v104 offset:3824
	ds_load_u8 v31, v104 offset:3696
	v_lshl_or_b32 v28, v29, 16, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v134
	ds_load_u8 v32, v104 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[26:27], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v26, v104 offset:4336
	ds_load_u8 v27, v104 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v104 offset:4592
	ds_load_u8 v28, v104 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v104 offset:4848
	ds_load_u8 v29, v104 offset:4720
	v_lshl_or_b32 v26, v27, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v135
	ds_load_u8 v30, v104 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[24:25], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v24, v104 offset:5360
	ds_load_u8 v25, v104 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v104 offset:5616
	ds_load_u8 v26, v104 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:5872
	ds_load_u8 v27, v104 offset:5744
	v_lshl_or_b32 v24, v25, 16, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v136
	ds_load_u8 v28, v104 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[22:23], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v22, v104 offset:6384
	ds_load_u8 v23, v104 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v104 offset:6640
	ds_load_u8 v24, v104 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v104 offset:6896
	ds_load_u8 v25, v104 offset:6768
	v_lshl_or_b32 v22, v23, 16, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v137
	ds_load_u8 v26, v104 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v25, 16, v24
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[20:21], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v20, v104 offset:7408
	ds_load_u8 v21, v104 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v104 offset:7664
	ds_load_u8 v22, v104 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v104 offset:7920
	ds_load_u8 v23, v104 offset:7792
	v_lshl_or_b32 v20, v21, 16, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v138
	ds_load_u8 v24, v104 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[18:19], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, s23, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v21, v9
	v_cvt_f32_i32_e32 v20, v10
	v_cvt_f32_i32_e32 v19, v11
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v33, v13, s[36:39], 0 offen
	v_add_nc_u32_e32 v13, s23, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v243, v13, s[36:39], 0 offen
	buffer_load_u16 v241, v13, s[36:39], 0 offen offset:4
	buffer_load_u16 v240, v13, s[36:39], 0 offen offset:8
	buffer_load_u16 v239, v13, s[36:39], 0 offen offset:12
	buffer_load_u16 v238, v13, s[36:39], 0 offen offset:16
	buffer_load_u16 v237, v13, s[36:39], 0 offen offset:20
	buffer_load_u16 v236, v13, s[36:39], 0 offen offset:24
	buffer_load_u16 v235, v13, s[36:39], 0 offen offset:28
	buffer_load_u16 v234, v13, s[36:39], 0 offen offset:32
	buffer_load_u16 v233, v13, s[36:39], 0 offen offset:36
	buffer_load_u16 v232, v13, s[36:39], 0 offen offset:40
	buffer_load_u16 v231, v13, s[36:39], 0 offen offset:44
	buffer_load_u16 v230, v13, s[36:39], 0 offen offset:48
	buffer_load_u16 v229, v13, s[36:39], 0 offen offset:52
	buffer_load_u16 v228, v13, s[36:39], 0 offen offset:56
	buffer_load_u16 v227, v13, s[36:39], 0 offen offset:60
	buffer_load_u16 v226, v13, s[36:39], 0 offen offset:64
	buffer_load_u16 v225, v13, s[36:39], 0 offen offset:68
	buffer_load_u16 v224, v13, s[36:39], 0 offen offset:72
	buffer_load_u16 v223, v13, s[36:39], 0 offen offset:76
	buffer_load_u16 v222, v13, s[36:39], 0 offen offset:80
	buffer_load_u16 v221, v13, s[36:39], 0 offen offset:84
	buffer_load_u16 v220, v13, s[36:39], 0 offen offset:88
	buffer_load_u16 v219, v13, s[36:39], 0 offen offset:92
	buffer_load_u16 v218, v13, s[36:39], 0 offen offset:96
	buffer_load_u16 v217, v13, s[36:39], 0 offen offset:100
	buffer_load_u16 v216, v13, s[36:39], 0 offen offset:104
	buffer_load_u16 v215, v13, s[36:39], 0 offen offset:108
	buffer_load_u16 v214, v13, s[36:39], 0 offen offset:112
	buffer_load_u16 v213, v13, s[36:39], 0 offen offset:116
	buffer_load_u16 v212, v13, s[36:39], 0 offen offset:120
	buffer_load_u16 v211, v13, s[36:39], 0 offen offset:128
	s_clause 0x1d
	buffer_load_u16 v210, v13, s[36:39], 0 offen offset:132
	buffer_load_u16 v209, v13, s[36:39], 0 offen offset:136
	buffer_load_u16 v208, v13, s[36:39], 0 offen offset:140
	buffer_load_u16 v207, v13, s[36:39], 0 offen offset:144
	buffer_load_u16 v206, v13, s[36:39], 0 offen offset:148
	buffer_load_u16 v205, v13, s[36:39], 0 offen offset:152
	buffer_load_u16 v204, v13, s[36:39], 0 offen offset:156
	buffer_load_u16 v203, v13, s[36:39], 0 offen offset:160
	buffer_load_u16 v202, v13, s[36:39], 0 offen offset:164
	buffer_load_u16 v201, v13, s[36:39], 0 offen offset:168
	buffer_load_u16 v200, v13, s[36:39], 0 offen offset:172
	buffer_load_u16 v199, v13, s[36:39], 0 offen offset:176
	buffer_load_u16 v198, v13, s[36:39], 0 offen offset:180
	buffer_load_u16 v197, v13, s[36:39], 0 offen offset:184
	buffer_load_u16 v196, v13, s[36:39], 0 offen offset:188
	buffer_load_u16 v32, v13, s[36:39], 0 offen offset:192
	buffer_load_u16 v31, v13, s[36:39], 0 offen offset:196
	buffer_load_u16 v30, v13, s[36:39], 0 offen offset:200
	buffer_load_u16 v29, v13, s[36:39], 0 offen offset:204
	buffer_load_u16 v28, v13, s[36:39], 0 offen offset:208
	buffer_load_u16 v27, v13, s[36:39], 0 offen offset:212
	buffer_load_u16 v26, v13, s[36:39], 0 offen offset:216
	buffer_load_u16 v25, v13, s[36:39], 0 offen offset:220
	buffer_load_u16 v24, v13, s[36:39], 0 offen offset:224
	buffer_load_u16 v23, v13, s[36:39], 0 offen offset:228
	buffer_load_u16 v22, v13, s[36:39], 0 offen offset:232
	buffer_load_u16 v16, v13, s[36:39], 0 offen offset:236
	buffer_load_u16 v15, v13, s[36:39], 0 offen offset:240
	buffer_load_u16 v14, v13, s[36:39], 0 offen offset:244
	buffer_load_u16 v13, v13, s[36:39], 0 offen offset:248
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v114, v[244:247]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v115, v139 offset:8192
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v244, 16, v248
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v119, s42, v119
	v_add_nc_u32_e32 v120, s42, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v147, v244
	v_mul_f32_e32 v146, v146, v244
	v_mul_f32_e32 v145, v145, v244
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v243, 16, v243
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(60)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v52, v147, v243 :: v_dual_lshlrev_b32 v147, 16, v241
	v_fmac_f32_e32 v100, v146, v147
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v146, 16, v240
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v99, v145, v146
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v140, v140, v244 :: v_dual_lshlrev_b32 v145, 16, v239
	v_mul_f32_e32 v144, v144, v244
	v_mul_f32_e32 v143, v143, v244
	v_mul_f32_e32 v142, v142, v244
	v_mul_f32_e32 v141, v141, v244
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v21, v21, v244 :: v_dual_fmac_f32 v98, v144, v145
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v144, 16, v238
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v20, v244
	v_mul_f32_e32 v12, v12, v244
	v_mul_f32_e32 v19, v19, v244
	v_mul_f32_e32 v11, v11, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v97, v143, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v10, v10, v244 :: v_dual_lshlrev_b32 v143, 16, v237
	v_mul_f32_e32 v9, v9, v244
	v_mul_f32_e32 v18, v18, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v96, v142, v143
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v142, 16, v236
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v95, v141, v142
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v141, 16, v235
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v94, v140, v141 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v155, v244 :: v_dual_lshlrev_b32 v140, 16, v234
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v27, 16, v27
	v_lshlrev_b32_e32 v30, 16, v30
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v93, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v233
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v154, v244
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v92, v141, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v153, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v44, v21, v24 :: v_dual_lshlrev_b32 v21, 16, v23
	v_fmac_f32_e32 v40, v12, v15
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v141, v140 :: v_dual_lshlrev_b32 v12, 16, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v152, v244 :: v_dual_lshlrev_b32 v140, 16, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v20, v21 :: v_dual_lshlrev_b32 v20, 16, v22
	v_fmac_f32_e32 v39, v11, v12
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v141, v140 :: v_dual_lshlrev_b32 v11, 16, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v151, v244 :: v_dual_lshlrev_b32 v140, 16, v230
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v19, v20
	v_fmac_f32_e32 v38, v10, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v242
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v89, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v229
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v150, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v37, v9, v10 :: v_dual_lshlrev_b32 v16, 16, v16
	v_fmac_f32_e32 v88, v141, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v228
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v149, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v18, v16
	v_dual_fmac_f32 v87, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v227
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v148, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v86, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v163, v244 :: v_dual_lshlrev_b32 v140, 16, v226
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v85, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v225
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v162, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v141, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v224
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v161, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v83, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v223
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v160, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v82, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v159, v244 :: v_dual_lshlrev_b32 v140, 16, v222
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v81, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v221
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v158, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v141, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v220
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v157, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v79, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v156, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v78, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v171, v244 :: v_dual_lshlrev_b32 v140, 16, v218
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v77, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v217
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v170, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v141, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v169, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v75, v141, v140 :: v_dual_lshlrev_b32 v140, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v168, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v167, v244 :: v_dual_lshlrev_b32 v140, 16, v214
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v141, v166, v244 :: v_dual_lshlrev_b32 v140, 16, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v141, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v140, 16, v212
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v165, v244
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v141, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v164, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v70, v140, v33 :: v_dual_lshlrev_b32 v33, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v179, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v140, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v178, v244 :: v_dual_lshlrev_b32 v33, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v140, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v177, v244 :: v_dual_lshlrev_b32 v33, 16, v209
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v67, v140, v33
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v176, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v140, v33 :: v_dual_lshlrev_b32 v33, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v175, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v140, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v174, v244 :: v_dual_lshlrev_b32 v33, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v140, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v173, v244 :: v_dual_lshlrev_b32 v33, 16, v205
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v63, v140, v33
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v204
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v172, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v62, v140, v33 :: v_dual_lshlrev_b32 v33, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v187, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v61, v140, v33 :: v_dual_mul_f32 v140, v186, v244
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v140, v33
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v185, v244 :: v_dual_lshlrev_b32 v33, 16, v201
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v140, v33
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v200
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v184, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v140, v33 :: v_dual_lshlrev_b32 v33, 16, v199
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v183, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v57, v140, v33 :: v_dual_mul_f32 v140, v182, v244
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v140, v33
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v140, v181, v244 :: v_dual_lshlrev_b32 v33, 16, v197
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v140, v33
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v33, 16, v196
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v140, v180, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v54, v140, v33 :: v_dual_mul_f32 v33, v195, v244
	v_fmac_f32_e32 v53, v33, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v194, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v51, v32, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v193, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v31, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v192, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v30, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v191, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v29, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v190, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v47, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v189, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v27, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v188, v244
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v26, v25
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow623
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v25, 0x1e0, v0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v7, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v104 offset:640
	ds_load_u8 v2, v104 offset:512
	ds_load_u8 v3, v104 offset:896
	ds_load_u8 v4, v104 offset:768
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v6, v104 offset:128
	ds_load_u8 v7, v104
	ds_load_u8 v8, v104 offset:384
	ds_load_u8 v9, v104 offset:256
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v5, 56, v113
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v104 offset:1664
	ds_load_u8 v12, v104 offset:1536
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v111, 0, v111
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v115, v36, 6, v5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v5, v104 offset:1920
	ds_load_u8 v13, v104 offset:1792
	ds_load_u8 v14, v104 offset:1152
	ds_load_u8 v15, v104 offset:1024
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v10, v115, 8, 0
	v_add_nc_u32_e32 v16, 0, v115
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	ds_load_u8 v3, v104 offset:1408
	ds_load_u8 v4, v104 offset:1280
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[21:22], v10 offset:8192
	ds_load_b64 v[23:24], v16 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v104 offset:2688
	ds_load_u8 v17, v104 offset:2560
	ds_load_u8 v18, v104 offset:2944
	ds_load_u8 v19, v104 offset:2816
	v_lshl_or_b32 v10, v2, 16, v1
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v13, v5, 0xc0c0004
	v_lshl_or_b32 v9, v2, 16, v1
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v4, v3, 0xc0c0004
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v104 offset:2432
	ds_load_u8 v14, v104 offset:2304
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:2176
	ds_load_u8 v10, v104 offset:2048
	v_wmma_i32_16x16x16_iu4 v[26:33], v[11:12], v[21:22], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v19, v18, 0xc0c0004
	v_perm_b32 v11, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v10, v115, 16, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[19:20], v10 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[19:20], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:3712
	ds_load_u8 v10, v104 offset:3584
	ds_load_u8 v11, v104 offset:3968
	ds_load_u8 v12, v104 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	ds_load_u8 v11, v104 offset:3200
	ds_load_u8 v12, v104 offset:3072
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:3456
	ds_load_u8 v13, v104 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v115, 24, 0
	ds_load_b64 v[17:18], v11 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[17:18], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:4736
	ds_load_u8 v10, v104 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:4992
	ds_load_u8 v11, v104 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:4224
	ds_load_u8 v12, v104 offset:4096
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:4480
	ds_load_u8 v13, v104 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v115, 32, 0
	ds_load_b64 v[15:16], v11 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[15:16], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:5760
	ds_load_u8 v10, v104 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:6016
	ds_load_u8 v11, v104 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:5248
	ds_load_u8 v12, v104 offset:5120
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:5504
	ds_load_u8 v13, v104 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v115, 40, 0
	ds_load_b64 v[13:14], v11 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[13:14], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:6784
	ds_load_u8 v10, v104 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:7040
	ds_load_u8 v11, v104 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v104 offset:6272
	ds_load_u8 v12, v104 offset:6144
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:6528
	ds_load_u8 v113, v104 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v113, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v115, 48, 0
	ds_load_b64 v[11:12], v11 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[11:12], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v9, v104 offset:7808
	ds_load_u8 v10, v104 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:8064
	ds_load_u8 v113, v104 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v113, v10, 0xc0c0004
	ds_load_u8 v113, v104 offset:7296
	ds_load_u8 v114, v104 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v104 offset:7552
	ds_load_u8 v116, v104 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v114, 0xc0c0004
	v_lshl_or_b32 v114, v10, 16, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v9, v115, 56, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v113, v116, 16, v113
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v9 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[113:114], v[9:10], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:656
	ds_load_u8 v114, v104 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v104 offset:912
	ds_load_u8 v115, v104 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v104 offset:16
	ds_load_u8 v116, v104 offset:144
	v_lshl_or_b32 v123, v114, 16, v113
	ds_load_u8 v113, v104 offset:1680
	ds_load_u8 v114, v104 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v115, v116, 0xc0c0004
	ds_load_u8 v116, v104 offset:400
	ds_load_u8 v117, v104 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v116, 16, v115
	ds_load_u8 v114, v104 offset:1936
	ds_load_u8 v115, v104 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v104 offset:1168
	ds_load_u8 v116, v104 offset:1040
	v_lshl_or_b32 v125, v114, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v104 offset:1424
	ds_load_u8 v117, v104 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v116, 16, v115
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2704
	ds_load_u8 v122, v104 offset:2576
	v_wmma_i32_16x16x16_iu4 v[114:121], v[124:125], v[21:22], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:2960
	ds_load_u8 v123, v104 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:2192
	ds_load_u8 v124, v104 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:2448
	ds_load_u8 v125, v104 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[19:20], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3728
	ds_load_u8 v122, v104 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:3984
	ds_load_u8 v123, v104 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:3216
	ds_load_u8 v124, v104 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:3472
	ds_load_u8 v125, v104 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[17:18], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4752
	ds_load_u8 v122, v104 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:5008
	ds_load_u8 v123, v104 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:4240
	ds_load_u8 v124, v104 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:4496
	ds_load_u8 v125, v104 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[15:16], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5776
	ds_load_u8 v122, v104 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:6032
	ds_load_u8 v123, v104 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:5264
	ds_load_u8 v124, v104 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:5520
	ds_load_u8 v125, v104 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[13:14], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6800
	ds_load_u8 v122, v104 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:7056
	ds_load_u8 v123, v104 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:6288
	ds_load_u8 v124, v104 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:6544
	ds_load_u8 v125, v104 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[11:12], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7824
	ds_load_u8 v122, v104 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:8080
	ds_load_u8 v123, v104 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:7312
	ds_load_u8 v124, v104 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	ds_load_u8 v123, v104 offset:7568
	ds_load_u8 v125, v104 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v123, 0xc0c0004
	v_lshl_or_b32 v123, v122, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[9:10], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:672
	ds_load_u8 v122, v104 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	ds_load_u8 v122, v104 offset:928
	ds_load_u8 v123, v104 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:32
	ds_load_u8 v124, v104 offset:160
	v_lshl_or_b32 v131, v122, 16, v113
	ds_load_u8 v113, v104 offset:1696
	ds_load_u8 v122, v104 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v123, v124, 0xc0c0004
	ds_load_u8 v124, v104 offset:416
	ds_load_u8 v125, v104 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v122, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v124, 16, v123
	ds_load_u8 v122, v104 offset:1952
	ds_load_u8 v123, v104 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v104 offset:1184
	ds_load_u8 v124, v104 offset:1056
	v_lshl_or_b32 v133, v122, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v104 offset:1440
	ds_load_u8 v125, v104 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2720
	ds_load_u8 v130, v104 offset:2592
	v_wmma_i32_16x16x16_iu4 v[122:129], v[132:133], v[21:22], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:2976
	ds_load_u8 v131, v104 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:2208
	ds_load_u8 v132, v104 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:2464
	ds_load_u8 v133, v104 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[19:20], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3744
	ds_load_u8 v130, v104 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:4000
	ds_load_u8 v131, v104 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:3232
	ds_load_u8 v132, v104 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:3488
	ds_load_u8 v133, v104 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[17:18], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4768
	ds_load_u8 v130, v104 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:5024
	ds_load_u8 v131, v104 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:4256
	ds_load_u8 v132, v104 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:4512
	ds_load_u8 v133, v104 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[15:16], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5792
	ds_load_u8 v130, v104 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:6048
	ds_load_u8 v131, v104 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:5280
	ds_load_u8 v132, v104 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:5536
	ds_load_u8 v133, v104 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[13:14], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6816
	ds_load_u8 v130, v104 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:7072
	ds_load_u8 v131, v104 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:6304
	ds_load_u8 v132, v104 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:6560
	ds_load_u8 v133, v104 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[11:12], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7840
	ds_load_u8 v130, v104 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:8096
	ds_load_u8 v131, v104 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:7328
	ds_load_u8 v132, v104 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v131, 0xc0c0004
	ds_load_u8 v131, v104 offset:7584
	ds_load_u8 v133, v104 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v131, 0xc0c0004
	v_lshl_or_b32 v131, v130, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[9:10], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:688
	ds_load_u8 v130, v104 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v104 offset:944
	ds_load_u8 v131, v104 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:48
	ds_load_u8 v132, v104 offset:176
	v_lshl_or_b32 v139, v130, 16, v113
	ds_load_u8 v113, v104 offset:1712
	ds_load_u8 v130, v104 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	ds_load_u8 v132, v104 offset:432
	ds_load_u8 v133, v104 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v132, 16, v131
	ds_load_u8 v130, v104 offset:1968
	ds_load_u8 v131, v104 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v104 offset:1200
	ds_load_u8 v132, v104 offset:1072
	v_lshl_or_b32 v141, v130, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v104 offset:1456
	ds_load_u8 v133, v104 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2736
	ds_load_u8 v138, v104 offset:2608
	v_wmma_i32_16x16x16_iu4 v[130:137], v[140:141], v[21:22], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:2992
	ds_load_u8 v139, v104 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:2224
	ds_load_u8 v140, v104 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:2480
	ds_load_u8 v141, v104 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[19:20], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3760
	ds_load_u8 v138, v104 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:4016
	ds_load_u8 v139, v104 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:3248
	ds_load_u8 v140, v104 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:3504
	ds_load_u8 v141, v104 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[17:18], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4784
	ds_load_u8 v138, v104 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:5040
	ds_load_u8 v139, v104 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:4272
	ds_load_u8 v140, v104 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:4528
	ds_load_u8 v141, v104 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[15:16], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5808
	ds_load_u8 v138, v104 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:6064
	ds_load_u8 v139, v104 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:5296
	ds_load_u8 v140, v104 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:5552
	ds_load_u8 v141, v104 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[13:14], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6832
	ds_load_u8 v138, v104 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:7088
	ds_load_u8 v139, v104 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:6320
	ds_load_u8 v140, v104 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:6576
	ds_load_u8 v141, v104 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[11:12], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7856
	ds_load_u8 v138, v104 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:8112
	ds_load_u8 v139, v104 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:7344
	ds_load_u8 v140, v104 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:7600
	ds_load_u8 v141, v104 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[9:10], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:704
	ds_load_u8 v138, v104 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	ds_load_u8 v138, v104 offset:960
	ds_load_u8 v139, v104 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:192
	ds_load_u8 v140, v104 offset:64
	v_lshl_or_b32 v147, v138, 16, v113
	ds_load_u8 v113, v104 offset:1728
	ds_load_u8 v138, v104 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v104 offset:448
	ds_load_u8 v141, v104 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v138, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v140, 16, v139
	ds_load_u8 v138, v104 offset:1984
	ds_load_u8 v139, v104 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:1216
	ds_load_u8 v140, v104 offset:1088
	v_lshl_or_b32 v149, v138, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v104 offset:1472
	ds_load_u8 v141, v104 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2752
	ds_load_u8 v146, v104 offset:2624
	v_wmma_i32_16x16x16_iu4 v[138:145], v[148:149], v[21:22], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:3008
	ds_load_u8 v147, v104 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:2240
	ds_load_u8 v148, v104 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:2496
	ds_load_u8 v149, v104 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[19:20], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3776
	ds_load_u8 v146, v104 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:4032
	ds_load_u8 v147, v104 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:3264
	ds_load_u8 v148, v104 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:3520
	ds_load_u8 v149, v104 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[17:18], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4800
	ds_load_u8 v146, v104 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:5056
	ds_load_u8 v147, v104 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:4288
	ds_load_u8 v148, v104 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:4544
	ds_load_u8 v149, v104 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[15:16], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5824
	ds_load_u8 v146, v104 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:6080
	ds_load_u8 v147, v104 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:5312
	ds_load_u8 v148, v104 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:5568
	ds_load_u8 v149, v104 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[13:14], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6848
	ds_load_u8 v146, v104 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:7104
	ds_load_u8 v147, v104 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:6336
	ds_load_u8 v148, v104 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:6592
	ds_load_u8 v149, v104 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[11:12], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7872
	ds_load_u8 v146, v104 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:8128
	ds_load_u8 v147, v104 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:7360
	ds_load_u8 v148, v104 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	ds_load_u8 v147, v104 offset:7616
	ds_load_u8 v149, v104 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[9:10], v[138:145] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:720
	ds_load_u8 v146, v104 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	ds_load_u8 v146, v104 offset:976
	ds_load_u8 v147, v104 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:208
	ds_load_u8 v148, v104 offset:80
	v_lshl_or_b32 v155, v146, 16, v113
	ds_load_u8 v113, v104 offset:1744
	ds_load_u8 v146, v104 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v104 offset:464
	ds_load_u8 v149, v104 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v148, 16, v147
	ds_load_u8 v146, v104 offset:2000
	ds_load_u8 v147, v104 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:1232
	ds_load_u8 v148, v104 offset:1104
	v_lshl_or_b32 v157, v146, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v104 offset:1488
	ds_load_u8 v149, v104 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v148, 16, v147
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2768
	ds_load_u8 v154, v104 offset:2640
	v_wmma_i32_16x16x16_iu4 v[146:153], v[156:157], v[21:22], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:3024
	ds_load_u8 v155, v104 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:2256
	ds_load_u8 v156, v104 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:2512
	ds_load_u8 v157, v104 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[19:20], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3792
	ds_load_u8 v154, v104 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:4048
	ds_load_u8 v155, v104 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:3280
	ds_load_u8 v156, v104 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:3536
	ds_load_u8 v157, v104 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[17:18], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4816
	ds_load_u8 v154, v104 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:5072
	ds_load_u8 v155, v104 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:4304
	ds_load_u8 v156, v104 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:4560
	ds_load_u8 v157, v104 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[15:16], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5840
	ds_load_u8 v154, v104 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:6096
	ds_load_u8 v155, v104 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:5328
	ds_load_u8 v156, v104 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:5584
	ds_load_u8 v157, v104 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[13:14], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6864
	ds_load_u8 v154, v104 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:7120
	ds_load_u8 v155, v104 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:6352
	ds_load_u8 v156, v104 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:6608
	ds_load_u8 v157, v104 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[11:12], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7888
	ds_load_u8 v154, v104 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:8144
	ds_load_u8 v155, v104 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:7376
	ds_load_u8 v156, v104 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	ds_load_u8 v155, v104 offset:7632
	ds_load_u8 v157, v104 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[9:10], v[146:153] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:736
	ds_load_u8 v154, v104 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	ds_load_u8 v154, v104 offset:992
	ds_load_u8 v155, v104 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:224
	ds_load_u8 v156, v104 offset:96
	v_lshl_or_b32 v163, v154, 16, v113
	ds_load_u8 v113, v104 offset:1760
	ds_load_u8 v154, v104 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v104 offset:480
	ds_load_u8 v157, v104 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v154, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v156, 16, v155
	ds_load_u8 v154, v104 offset:2016
	ds_load_u8 v155, v104 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v104 offset:1248
	ds_load_u8 v156, v104 offset:1120
	v_lshl_or_b32 v165, v154, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v104 offset:1504
	ds_load_u8 v157, v104 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v156, 16, v155
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:2784
	ds_load_u8 v162, v104 offset:2656
	v_wmma_i32_16x16x16_iu4 v[154:161], v[164:165], v[21:22], v[154:161] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:3040
	ds_load_u8 v163, v104 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:2272
	ds_load_u8 v164, v104 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:2528
	ds_load_u8 v165, v104 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[19:20], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:3808
	ds_load_u8 v162, v104 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:4064
	ds_load_u8 v163, v104 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:3296
	ds_load_u8 v164, v104 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:3552
	ds_load_u8 v165, v104 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[17:18], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:4832
	ds_load_u8 v162, v104 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:5088
	ds_load_u8 v163, v104 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:4320
	ds_load_u8 v164, v104 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:4576
	ds_load_u8 v165, v104 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[15:16], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:5856
	ds_load_u8 v162, v104 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:6112
	ds_load_u8 v163, v104 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:5344
	ds_load_u8 v164, v104 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:5600
	ds_load_u8 v165, v104 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[13:14], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:6880
	ds_load_u8 v162, v104 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:7136
	ds_load_u8 v163, v104 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:6368
	ds_load_u8 v164, v104 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:6624
	ds_load_u8 v165, v104 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[11:12], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:7904
	ds_load_u8 v162, v104 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:8160
	ds_load_u8 v163, v104 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:7392
	ds_load_u8 v164, v104 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	ds_load_u8 v163, v104 offset:7648
	ds_load_u8 v165, v104 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[9:10], v[154:161] neg_lo:[1,1,0]
	ds_load_u8 v113, v104 offset:240
	ds_load_u8 v162, v104 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v162, v113, 0xc0c0004
	ds_load_u8 v162, v104 offset:496
	ds_load_u8 v163, v104 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v104 offset:752
	ds_load_u8 v164, v104 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v112, v112
	ds_load_u8 v164, v104 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v112, 0xc0c0004
	v_lshl_or_b32 v112, v162, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v164, 16, v163
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v104 offset:1264
	ds_load_u8 v24, v104 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v104 offset:1520
	ds_load_u8 v112, v104 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v112, v24, 0xc0c0004
	ds_load_u8 v112, v104 offset:1776
	ds_load_u8 v113, v104 offset:1648
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v111, v111
	ds_load_u8 v113, v104 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v113, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v111, 16, v112
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v104 offset:2288
	ds_load_u8 v22, v104 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v104 offset:2544
	ds_load_u8 v23, v104 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v104 offset:2800
	ds_load_u8 v24, v104 offset:2672
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v24, 0, v110
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v24, v24
	ds_load_u8 v110, v104 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v110, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v19, v104 offset:3312
	ds_load_u8 v20, v104 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v104 offset:3568
	ds_load_u8 v21, v104 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v104 offset:3824
	ds_load_u8 v22, v104 offset:3696
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v22, 0, v109
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v22, v22
	ds_load_u8 v23, v104 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v104 offset:4336
	ds_load_u8 v18, v104 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:4592
	ds_load_u8 v19, v104 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v104 offset:4848
	ds_load_u8 v20, v104 offset:4720
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0, v108
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v21, v104 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v104 offset:5360
	ds_load_u8 v16, v104 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v104 offset:5616
	ds_load_u8 v17, v104 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v104 offset:5872
	ds_load_u8 v18, v104 offset:5744
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v19, v104 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v104 offset:6384
	ds_load_u8 v14, v104 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v104 offset:6640
	ds_load_u8 v15, v104 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v104 offset:6896
	ds_load_u8 v16, v104 offset:6768
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v17, v104 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v104 offset:7408
	ds_load_u8 v12, v104 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104 offset:7664
	ds_load_u8 v13, v104 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v104 offset:7920
	ds_load_u8 v14, v104 offset:7792
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0, v105
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v104 offset:8048
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v9, s22, v36
	s_mul_i32 s1, s34, s22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s2, s3, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s9, 0xffff
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s2, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s2, s1, s2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v9, s2, v9, 1
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s3
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s21, s21, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v10, s1, v103, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s22, s10
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s23, s11
	v_add_lshl_u32 v101, s1, v101, 1
	v_cndmask_b32_e64 v13, 0x80000000, v10, s0
	v_add_lshl_u32 v102, s1, v102, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v34, 2, v34
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v199, 7, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v34, v36, 9, v34
	v_add_nc_u32_e32 v36, 0, v34
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 32, v10
	v_add_nc_u32_e32 v11, 4, v10
	v_add_nc_u32_e32 v20, 36, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v27, v27, v9 :: v_dual_add_nc_u32 v12, 8, v10
	v_dual_mul_f32 v114, v114, v9 :: v_dual_add_nc_u32 v21, 40, v10
	v_dual_mul_f32 v29, v29, v9 :: v_dual_add_nc_u32 v14, 12, v10
	v_dual_mul_f32 v117, v117, v9 :: v_dual_add_nc_u32 v22, 44, v10
	v_dual_mul_f32 v28, v28, v9 :: v_dual_add_nc_u32 v15, 16, v10
	v_dual_mul_f32 v31, v31, v9 :: v_dual_add_nc_u32 v16, 20, v10
	v_dual_mul_f32 v30, v30, v9 :: v_dual_add_nc_u32 v17, 24, v10
	v_dual_mul_f32 v33, v33, v9 :: v_dual_add_nc_u32 v18, 28, v10
	v_dual_mul_f32 v116, v116, v9 :: v_dual_add_nc_u32 v23, 48, v10
	v_dual_mul_f32 v119, v119, v9 :: v_dual_add_nc_u32 v24, 52, v10
	v_dual_mul_f32 v118, v118, v9 :: v_dual_add_nc_u32 v103, 56, v10
	v_dual_mul_f32 v121, v121, v9 :: v_dual_add_nc_u32 v104, 60, v10
	v_dual_mul_f32 v120, v120, v9 :: v_dual_add_nc_u32 v105, 64, v10
	v_dual_mul_f32 v161, v161, v9 :: v_dual_add_nc_u32 v192, 0xe0, v10
	v_dual_mul_f32 v123, v123, v9 :: v_dual_add_nc_u32 v106, 0x44, v10
	v_dual_mul_f32 v160, v160, v9 :: v_dual_add_nc_u32 v193, 0xe4, v10
	v_mul_f32_e32 v32, v32, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v122, v122, v9 :: v_dual_add_nc_u32 v107, 0x48, v10
	v_dual_mul_f32 v1, v1, v9 :: v_dual_add_nc_u32 v194, 0xe8, v10
	v_mul_f32_e32 v26, v26, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v115, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v125, v125, v9 :: v_dual_add_nc_u32 v108, 0x4c, v10
	v_dual_mul_f32 v2, v2, v9 :: v_dual_add_nc_u32 v195, 0xec, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v124, v124, v9 :: v_dual_add_nc_u32 v109, 0x50, v10
	v_dual_mul_f32 v127, v127, v9 :: v_dual_add_nc_u32 v110, 0x54, v10
	v_dual_mul_f32 v126, v126, v9 :: v_dual_add_nc_u32 v111, 0x58, v10
	v_dual_mul_f32 v129, v129, v9 :: v_dual_add_nc_u32 v112, 0x5c, v10
	v_dual_mul_f32 v128, v128, v9 :: v_dual_add_nc_u32 v113, 0x60, v10
	v_dual_mul_f32 v131, v131, v9 :: v_dual_add_nc_u32 v162, 0x64, v10
	v_dual_mul_f32 v130, v130, v9 :: v_dual_add_nc_u32 v163, 0x68, v10
	v_dual_mul_f32 v133, v133, v9 :: v_dual_add_nc_u32 v164, 0x6c, v10
	v_dual_mul_f32 v132, v132, v9 :: v_dual_add_nc_u32 v165, 0x70, v10
	v_dual_mul_f32 v135, v135, v9 :: v_dual_add_nc_u32 v166, 0x74, v10
	v_dual_mul_f32 v134, v134, v9 :: v_dual_add_nc_u32 v167, 0x78, v10
	v_dual_mul_f32 v137, v137, v9 :: v_dual_add_nc_u32 v168, 0x80, v10
	v_dual_mul_f32 v136, v136, v9 :: v_dual_add_nc_u32 v169, 0x84, v10
	v_dual_mul_f32 v139, v139, v9 :: v_dual_add_nc_u32 v170, 0x88, v10
	v_dual_mul_f32 v138, v138, v9 :: v_dual_add_nc_u32 v171, 0x8c, v10
	v_dual_mul_f32 v141, v141, v9 :: v_dual_add_nc_u32 v172, 0x90, v10
	v_dual_mul_f32 v140, v140, v9 :: v_dual_add_nc_u32 v173, 0x94, v10
	v_dual_mul_f32 v143, v143, v9 :: v_dual_add_nc_u32 v174, 0x98, v10
	v_dual_mul_f32 v142, v142, v9 :: v_dual_add_nc_u32 v175, 0x9c, v10
	v_dual_mul_f32 v145, v145, v9 :: v_dual_add_nc_u32 v176, 0xa0, v10
	v_dual_mul_f32 v144, v144, v9 :: v_dual_add_nc_u32 v177, 0xa4, v10
	v_dual_mul_f32 v147, v147, v9 :: v_dual_add_nc_u32 v178, 0xa8, v10
	v_dual_mul_f32 v146, v146, v9 :: v_dual_add_nc_u32 v179, 0xac, v10
	v_dual_mul_f32 v149, v149, v9 :: v_dual_add_nc_u32 v180, 0xb0, v10
	v_dual_mul_f32 v148, v148, v9 :: v_dual_add_nc_u32 v181, 0xb4, v10
	v_dual_mul_f32 v151, v151, v9 :: v_dual_add_nc_u32 v182, 0xb8, v10
	v_dual_mul_f32 v150, v150, v9 :: v_dual_add_nc_u32 v183, 0xbc, v10
	v_dual_mul_f32 v153, v153, v9 :: v_dual_add_nc_u32 v184, 0xc0, v10
	v_dual_mul_f32 v152, v152, v9 :: v_dual_add_nc_u32 v185, 0xc4, v10
	v_dual_mul_f32 v155, v155, v9 :: v_dual_add_nc_u32 v186, 0xc8, v10
	v_dual_mul_f32 v154, v154, v9 :: v_dual_add_nc_u32 v187, 0xcc, v10
	v_dual_mul_f32 v157, v157, v9 :: v_dual_add_nc_u32 v188, 0xd0, v10
	v_dual_mul_f32 v156, v156, v9 :: v_dual_add_nc_u32 v189, 0xd4, v10
	v_dual_mul_f32 v159, v159, v9 :: v_dual_add_nc_u32 v190, 0xd8, v10
	v_dual_mul_f32 v158, v158, v9 :: v_dual_add_nc_u32 v191, 0xdc, v10
	v_dual_mul_f32 v3, v3, v9 :: v_dual_add_nc_u32 v196, 0xf0, v10
	v_dual_mul_f32 v4, v4, v9 :: v_dual_add_nc_u32 v197, 0xf4, v10
	v_dual_mul_f32 v5, v5, v9 :: v_dual_add_nc_u32 v10, 0xf8, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v192, 0x80000000, v192, s0
	s_clause 0xf
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v103, v103, s[20:23], 0 offen
	buffer_load_u16 v104, v104, s[20:23], 0 offen
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v193, 0x80000000, v193, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v194, 0x80000000, v194, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v195, 0x80000000, v195, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v196, 0x80000000, v196, s0
	v_cndmask_b32_e64 v197, 0x80000000, v197, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	s_clause 0xf
	buffer_load_u16 v105, v105, s[20:23], 0 offen
	buffer_load_u16 v106, v106, s[20:23], 0 offen
	buffer_load_u16 v107, v107, s[20:23], 0 offen
	buffer_load_u16 v108, v108, s[20:23], 0 offen
	buffer_load_u16 v109, v109, s[20:23], 0 offen
	buffer_load_u16 v110, v110, s[20:23], 0 offen
	buffer_load_u16 v111, v111, s[20:23], 0 offen
	buffer_load_u16 v112, v112, s[20:23], 0 offen
	buffer_load_u16 v192, v192, s[20:23], 0 offen
	buffer_load_u16 v193, v193, s[20:23], 0 offen
	buffer_load_u16 v194, v194, s[20:23], 0 offen
	buffer_load_u16 v195, v195, s[20:23], 0 offen
	buffer_load_u16 v196, v196, s[20:23], 0 offen
	buffer_load_u16 v197, v197, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v101, v101, s[20:23], 0 offen
	v_cndmask_b32_e64 v168, 0x80000000, v168, s0
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v169, 0x80000000, v169, s0
	v_cndmask_b32_e64 v185, 0x80000000, v185, s0
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	v_cndmask_b32_e64 v186, 0x80000000, v186, s0
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v187, 0x80000000, v187, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v188, 0x80000000, v188, s0
	v_cndmask_b32_e64 v189, 0x80000000, v189, s0
	v_cndmask_b32_e64 v190, 0x80000000, v190, s0
	v_cndmask_b32_e64 v191, 0x80000000, v191, s0
	v_cndmask_b32_e64 v162, 0x80000000, v162, s0
	s_clause 0xf
	buffer_load_u16 v168, v168, s[20:23], 0 offen
	buffer_load_u16 v169, v169, s[20:23], 0 offen
	buffer_load_u16 v170, v170, s[20:23], 0 offen
	buffer_load_u16 v171, v171, s[20:23], 0 offen
	buffer_load_u16 v172, v172, s[20:23], 0 offen
	buffer_load_u16 v173, v173, s[20:23], 0 offen
	buffer_load_u16 v174, v174, s[20:23], 0 offen
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	buffer_load_u16 v184, v184, s[20:23], 0 offen
	buffer_load_u16 v185, v185, s[20:23], 0 offen
	buffer_load_u16 v186, v186, s[20:23], 0 offen
	buffer_load_u16 v187, v187, s[20:23], 0 offen
	buffer_load_u16 v188, v188, s[20:23], 0 offen
	buffer_load_u16 v189, v189, s[20:23], 0 offen
	buffer_load_u16 v190, v190, s[20:23], 0 offen
	buffer_load_u16 v191, v191, s[20:23], 0 offen
	v_cndmask_b32_e64 v163, 0x80000000, v163, s0
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	v_cndmask_b32_e64 v165, 0x80000000, v165, s0
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	s_clause 0x7
	buffer_load_u16 v113, v113, s[20:23], 0 offen
	buffer_load_u16 v162, v162, s[20:23], 0 offen
	buffer_load_u16 v163, v163, s[20:23], 0 offen
	buffer_load_u16 v164, v164, s[20:23], 0 offen
	buffer_load_u16 v165, v165, s[20:23], 0 offen
	buffer_load_u16 v166, v166, s[20:23], 0 offen
	buffer_load_u16 v167, v167, s[20:23], 0 offen
	buffer_load_u16 v102, v102, s[20:23], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s0
	v_cndmask_b32_e64 v178, 0x80000000, v178, s0
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v181, 0x80000000, v181, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s0
	v_cndmask_b32_e64 v183, 0x80000000, v183, s0
	s_clause 0x7
	buffer_load_u16 v176, v176, s[20:23], 0 offen
	buffer_load_u16 v177, v177, s[20:23], 0 offen
	buffer_load_u16 v178, v178, s[20:23], 0 offen
	buffer_load_u16 v179, v179, s[20:23], 0 offen
	buffer_load_u16 v180, v180, s[20:23], 0 offen
	buffer_load_u16 v181, v181, s[20:23], 0 offen
	buffer_load_u16 v182, v182, s[20:23], 0 offen
	buffer_load_u16 v183, v183, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v9 :: v_dual_and_b32 v198, 0x7f, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v9
	v_mul_f32_e32 v8, v8, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v26, v13, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v101, 16, v101
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v27, v11, v100
	v_fma_f32 v12, v28, v12, v99
	v_fma_f32 v13, v29, v14, v98
	v_fma_f32 v14, v30, v15, v97
	v_fma_f32 v15, v31, v16, v96
	v_fma_f32 v16, v32, v17, v95
	v_fma_f32 v17, v33, v18, v94
	v_fma_f32 v18, v114, v19, v93
	v_fma_f32 v19, v115, v20, v92
	v_fma_f32 v20, v116, v21, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v117, v22, v90
	v_fma_f32 v22, v118, v23, v89
	v_fma_f32 v23, v119, v24, v88
	v_fma_f32 v24, v120, v103, v87
	v_fma_f32 v26, v121, v104, v86
	v_fma_f32 v27, v122, v105, v85
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v127, v110, v80
	v_fma_f32 v33, v128, v111, v79
	v_fma_f32 v111, v138, v168, v69
	v_fma_f32 v127, v154, v184, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v123, v106, v84
	v_fma_f32 v103, v129, v112, v78
	v_fma_f32 v112, v139, v169, v68
	v_fma_f32 v128, v155, v185, v51
	v_fma_f32 v8, v8, v101, v37
	v_fma_f32 v29, v124, v107, v83
	v_fma_f32 v7, v7, v10, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v52, v9, s0
	v_cndmask_b32_e64 v10, v100, v11, s0
	v_cndmask_b32_e64 v11, v99, v12, s0
	v_cndmask_b32_e64 v12, v98, v13, s0
	v_cndmask_b32_e64 v13, v97, v14, s0
	v_cndmask_b32_e64 v14, v96, v15, s0
	v_cndmask_b32_e64 v15, v95, v16, s0
	v_cndmask_b32_e64 v16, v94, v17, s0
	v_cndmask_b32_e64 v17, v93, v18, s0
	v_cndmask_b32_e64 v18, v92, v19, s0
	v_cndmask_b32_e64 v19, v91, v20, s0
	v_cndmask_b32_e64 v20, v90, v21, s0
	v_cndmask_b32_e64 v21, v89, v22, s0
	v_cndmask_b32_e64 v22, v88, v23, s0
	v_cndmask_b32_e64 v23, v87, v24, s0
	v_cndmask_b32_e64 v24, v86, v26, s0
	v_cndmask_b32_e64 v26, v85, v27, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v104, v130, v113, v77
	v_fma_f32 v113, v140, v170, v67
	v_fma_f32 v129, v156, v186, v50
	v_fma_f32 v30, v125, v108, v82
	v_fma_f32 v114, v141, v171, v66
	v_fma_f32 v130, v157, v187, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v111, s0
	v_cndmask_b32_e64 v53, v53, v127, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v126, v109, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v84, v28, s0
	v_cndmask_b32_e64 v68, v68, v112, s0
	v_cndmask_b32_e64 v51, v51, v128, s0
	v_cndmask_b32_e64 v8, v37, v8, s0
	v_xad_u32 v37, v34, 4, 0
	v_cndmask_b32_e64 v28, v83, v29, s0
	ds_store_2addr_b32 v36, v9, v26 offset1:32
	v_xad_u32 v9, v34, 8, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v131, v162, v76
	v_fma_f32 v106, v132, v163, v75
	v_fma_f32 v115, v142, v172, v65
	v_fma_f32 v116, v143, v173, v64
	v_fma_f32 v131, v158, v188, v48
	v_fma_f32 v132, v159, v189, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v113, s0
	v_cndmask_b32_e64 v50, v50, v129, s0
	v_cndmask_b32_e64 v29, v82, v30, s0
	v_cndmask_b32_e64 v66, v66, v114, s0
	v_cndmask_b32_e64 v49, v49, v130, s0
	ds_store_2addr_b32 v36, v69, v53 offset0:64 offset1:96
	ds_store_2addr_b32 v37, v10, v27 offset1:32
	v_xad_u32 v10, v34, 12, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v81, v31, s0
	ds_store_2addr_b32 v37, v68, v51 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v11, v28 offset1:32
	v_xad_u32 v11, v34, 16, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v107, v133, v164, v74
	v_fma_f32 v117, v144, v174, v63
	v_fma_f32 v119, v146, v176, v61
	v_fma_f32 v133, v160, v190, v46
	v_fma_f32 v1, v1, v192, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v115, s0
	v_cndmask_b32_e64 v64, v64, v116, s0
	v_cndmask_b32_e64 v48, v48, v131, s0
	v_cndmask_b32_e64 v47, v47, v132, s0
	ds_store_2addr_b32 v9, v67, v50 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v12, v29 offset1:32
	v_xad_u32 v9, v34, 20, 0
	v_cndmask_b32_e64 v31, v80, v32, s0
	v_cndmask_b32_e64 v32, v79, v33, s0
	ds_store_2addr_b32 v10, v66, v49 offset0:64 offset1:96
	ds_store_2addr_b32 v11, v13, v30 offset1:32
	v_xad_u32 v10, v34, 24, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v108, v134, v165, v73
	v_fma_f32 v118, v145, v175, v62
	v_fma_f32 v134, v161, v191, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v194, 16, v194
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v196, 16, v196
	v_lshlrev_b32_e32 v197, 16, v197
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v117, s0
	v_cndmask_b32_e64 v61, v61, v119, s0
	v_cndmask_b32_e64 v46, v46, v133, s0
	v_cndmask_b32_e64 v1, v44, v1, s0
	ds_store_2addr_b32 v11, v65, v48 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v14, v31 offset1:32
	ds_store_2addr_b32 v9, v64, v47 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v15, v32 offset1:32
	v_xad_u32 v9, v34, 32, 0
	v_cndmask_b32_e64 v33, v78, v103, s0
	v_xad_u32 v11, v34, 28, 0
	v_cndmask_b32_e64 v62, v62, v118, s0
	v_cndmask_b32_e64 v45, v45, v134, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v135, v166, v72
	v_fma_f32 v110, v136, v167, v71
	v_fma_f32 v102, v137, v102, v70
	v_fma_f32 v120, v147, v177, v60
	v_fma_f32 v121, v148, v178, v59
	v_fma_f32 v122, v149, v179, v58
	v_fma_f32 v123, v150, v180, v57
	v_fma_f32 v124, v151, v181, v56
	v_fma_f32 v125, v152, v182, v55
	v_fma_f32 v126, v153, v183, v54
	v_fma_f32 v2, v2, v193, v43
	v_fma_f32 v3, v3, v194, v42
	v_fma_f32 v4, v4, v195, v41
	v_fma_f32 v5, v5, v196, v40
	v_fma_f32 v6, v6, v197, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v10, v63, v46 offset0:64 offset1:96
	ds_store_2addr_b32 v11, v16, v33 offset1:32
	ds_store_2addr_b32 v11, v62, v45 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v61, v1 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v199
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v77, v104, s0
	v_cndmask_b32_e64 v76, v76, v105, s0
	v_xad_u32 v10, v34, 36, 0
	v_cndmask_b32_e64 v75, v75, v106, s0
	v_cndmask_b32_e64 v74, v74, v107, s0
	v_cndmask_b32_e64 v73, v73, v108, s0
	v_cndmask_b32_e64 v72, v72, v109, s0
	v_cndmask_b32_e64 v71, v71, v110, s0
	v_cndmask_b32_e64 v70, v70, v102, s0
	v_cndmask_b32_e64 v60, v60, v120, s0
	v_cndmask_b32_e64 v59, v59, v121, s0
	v_cndmask_b32_e64 v58, v58, v122, s0
	v_cndmask_b32_e64 v57, v57, v123, s0
	v_cndmask_b32_e64 v56, v56, v124, s0
	v_cndmask_b32_e64 v55, v55, v125, s0
	v_cndmask_b32_e64 v54, v54, v126, s0
	v_cndmask_b32_e64 v2, v43, v2, s0
	v_cndmask_b32_e64 v3, v42, v3, s0
	v_cndmask_b32_e64 v4, v41, v4, s0
	v_cndmask_b32_e64 v5, v40, v5, s0
	v_cndmask_b32_e64 v6, v39, v6, s0
	v_cndmask_b32_e64 v7, v38, v7, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s34, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v11, v34, 40, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v9, v17, v52 offset1:32
	ds_store_2addr_b32 v10, v18, v76 offset1:32
	ds_store_2addr_b32 v10, v60, v2 offset0:64 offset1:96
	ds_store_2addr_b32 v11, v19, v75 offset1:32
	v_xad_u32 v2, v34, 44, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v198, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v11, v59, v3 offset0:64 offset1:96
	v_xad_u32 v3, v34, 48, 0
	ds_store_2addr_b32 v2, v20, v74 offset1:32
	ds_store_2addr_b32 v2, v58, v4 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v4, v34, 52, 0
	ds_store_2addr_b32 v3, v21, v73 offset1:32
	ds_store_2addr_b32 v3, v57, v5 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v22, v72 offset1:32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v9, v34, 56, 0
	ds_store_2addr_b32 v4, v56, v6 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v23, v71 offset1:32
	ds_store_2addr_b32 v9, v55, v7 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s40, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v4, v34, 60, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v4, v24, v70 offset1:32
	ds_store_2addr_b32 v4, v54, v8 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v6, 60, v35
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v4, 5, v4
	v_lshl_or_b32 v6, v25, 2, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 249
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_vgpr, 249
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28992
; TotalNumSgprs: 46
; NumVgprs: 249
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 249
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     249
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
