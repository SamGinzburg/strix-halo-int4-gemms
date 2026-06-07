	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 7, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v97, 15, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v10, 4, v0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 15
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
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_mul_i32 s8, s8, s5
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	s_xor_b32 s4, s4, s8
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	s_sub_i32 s14, s4, s8
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
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
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v75, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v98, v0, 4, 1
	v_or_b32_e32 v107, 0x3f0, v0
	v_or_b32_e32 v106, 0x7f0, v0
	v_or_b32_e32 v105, 0xbf0, v0
	v_or_b32_e32 v104, 0xff0, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 1, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s15
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	v_or_b32_e32 v103, 0x13f0, v0
	v_or_b32_e32 v102, 0x17f0, v0
	v_or_b32_e32 v101, 0x1bf0, v0
	s_cvt_u32_f32 s6, s16
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s22, v3, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s23, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v100, 0x1ff0, v0
	s_mul_hi_u32 s7, s6, s7
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v108, 0, v9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s14, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s15
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s14, s14, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s16, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s26, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s16, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s15, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s26, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s15, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s22, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s26, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s18, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s23, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s20, s34, v4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[4:7], v5, s[24:27], 0 offen
	s_load_b64 s[20:21], s[0:1], 0x20
	v_add_nc_u32_e32 v109, 0, v10
	v_add_nc_u32_e32 v99, 0, v97
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s35, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s19, 0x100
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v108, v8 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[4:7]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s16, 64
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v5, s34, v97
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v4, s3, v3
	v_sub_nc_u32_e32 v110, s15, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s35, v5
	s_lshl_b32 s0, s14, 8
	v_mul_lo_u32 v6, s23, v4
	v_mul_lo_u32 v4, s22, v4
	s_lshl_b32 s14, s14, 7
	s_lshl_b32 s15, s13, 8
	s_mov_b32 s16, s12
	s_sub_i32 s41, s0, s15
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	v_add3_u32 v2, v6, s14, v2
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v112, 1, v3
	v_subrev_nc_u32_e32 v113, s0, v2
	v_add3_u32 v114, v4, s34, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v111, 1, v98
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v115, 0, v107
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v116, 0, v106
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v117, 0, v105
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v118, 0, v104
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v119, 0, v103
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v120, 0, v102
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v121, 0, v101
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v122, 0, v100
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s40, s1, 1
	s_lshl_b32 s42, s23, 1
	s_lshl_b32 s43, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v110
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	s_add_i32 s3, s3, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v114, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v114, s22, v114
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v123, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:8272
	ds_load_u8 v11, v99 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8304
	ds_load_u8 v12, v99 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8208
	ds_load_u8 v13, v99 offset:8192
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v10, v99 offset:640
	ds_load_u8 v11, v99 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:8240
	ds_load_u8 v14, v99 offset:8224
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v13, 16, v12
	ds_load_u8 v11, v99 offset:896
	ds_load_u8 v12, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:128
	ds_load_u8 v13, v99
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:384
	ds_load_u8 v14, v99 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v99 offset:8400
	ds_load_u8 v13, v99 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:8432
	ds_load_u8 v14, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:8336
	ds_load_u8 v15, v99 offset:8320
	v_lshl_or_b32 v32, v13, 16, v12
	ds_load_u8 v12, v99 offset:1664
	ds_load_u8 v13, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:8368
	ds_load_u8 v16, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v15, 16, v14
	ds_load_u8 v13, v99 offset:1920
	ds_load_u8 v14, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:1152
	ds_load_u8 v15, v99 offset:1024
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:1408
	ds_load_u8 v16, v99 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v99 offset:8528
	ds_load_u8 v15, v99 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:8560
	ds_load_u8 v16, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:8464
	ds_load_u8 v17, v99 offset:8448
	v_lshl_or_b32 v28, v15, 16, v14
	ds_load_u8 v14, v99 offset:2688
	ds_load_u8 v15, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v99 offset:8496
	ds_load_u8 v18, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v17, 16, v16
	ds_load_u8 v15, v99 offset:2944
	ds_load_u8 v16, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:2176
	ds_load_u8 v17, v99 offset:2048
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v99 offset:2432
	ds_load_u8 v18, v99 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v17, 16, v16
	ds_load_u8 v16, v99 offset:8656
	ds_load_u8 v17, v99 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v99 offset:8688
	ds_load_u8 v18, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8592
	ds_load_u8 v19, v99 offset:8576
	v_lshl_or_b32 v26, v17, 16, v16
	ds_load_u8 v16, v99 offset:3712
	ds_load_u8 v17, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8624
	ds_load_u8 v20, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v19, 16, v18
	ds_load_u8 v17, v99 offset:3968
	ds_load_u8 v18, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:3200
	ds_load_u8 v19, v99 offset:3072
	v_lshl_or_b32 v125, v17, 16, v16
	ds_load_u8 v16, v99 offset:8784
	ds_load_u8 v17, v99 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:3456
	ds_load_u8 v20, v99 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v19, 16, v18
	ds_load_u8 v17, v99 offset:8816
	ds_load_u8 v18, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8720
	ds_load_u8 v19, v99 offset:8704
	v_lshl_or_b32 v24, v17, 16, v16
	ds_load_u8 v16, v99 offset:4736
	ds_load_u8 v17, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8752
	ds_load_u8 v20, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v19, 16, v18
	ds_load_u8 v17, v99 offset:4992
	ds_load_u8 v18, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:4224
	ds_load_u8 v19, v99 offset:4096
	v_lshl_or_b32 v127, v17, 16, v16
	ds_load_u8 v16, v99 offset:8912
	ds_load_u8 v17, v99 offset:8896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:4480
	ds_load_u8 v20, v99 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v19, 16, v18
	ds_load_u8 v17, v99 offset:8944
	ds_load_u8 v18, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8848
	ds_load_u8 v19, v99 offset:8832
	v_lshl_or_b32 v22, v17, 16, v16
	ds_load_u8 v16, v99 offset:5760
	ds_load_u8 v17, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8880
	ds_load_u8 v20, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v19, 16, v18
	ds_load_u8 v17, v99 offset:6016
	ds_load_u8 v18, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:5248
	ds_load_u8 v19, v99 offset:5120
	v_lshl_or_b32 v129, v17, 16, v16
	ds_load_u8 v16, v99 offset:9040
	ds_load_u8 v17, v99 offset:9024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:5504
	ds_load_u8 v20, v99 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v19, 16, v18
	ds_load_u8 v17, v99 offset:9072
	ds_load_u8 v18, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8976
	ds_load_u8 v19, v99 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:9008
	ds_load_u8 v20, v99 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v16
	ds_load_u8 v16, v99 offset:6784
	ds_load_u8 v17, v99 offset:6656
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v99 offset:7040
	ds_load_u8 v18, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:6272
	ds_load_u8 v130, v99 offset:6144
	v_lshl_or_b32 v140, v17, 16, v16
	ds_load_u8 v16, v99 offset:9104
	ds_load_u8 v17, v99 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v130, v18, 0xc0c0004
	ds_load_u8 v130, v99 offset:6528
	ds_load_u8 v131, v99 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v130, 16, v18
	ds_load_u8 v17, v99 offset:9136
	ds_load_u8 v18, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9168
	ds_load_u8 v130, v99 offset:9152
	v_lshl_or_b32 v17, v17, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v130, v18, 0xc0c0004
	ds_load_u8 v130, v115 offset:8192
	ds_load_u8 v131, v99 offset:9184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v130, 16, v18
	ds_load_u8 v16, v99 offset:7808
	ds_load_u8 v130, v99 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v130, v16, 0xc0c0004
	ds_load_u8 v130, v99 offset:8064
	ds_load_u8 v131, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v99 offset:7296
	ds_load_u8 v132, v99 offset:7168
	v_lshl_or_b32 v142, v130, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:7552
	ds_load_u8 v133, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[131:138], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v99 offset:656
	ds_load_u8 v11, v99 offset:528
	v_wmma_i32_16x16x16_iu4 v[131:138], v[12:13], v[31:32], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[14:15], v[27:28], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[124:125], v[25:26], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[126:127], v[23:24], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:912
	ds_load_u8 v12, v99 offset:784
	v_wmma_i32_16x16x16_iu4 v[131:138], v[128:129], v[21:22], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[139:140], v[19:20], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[141:142], v[17:18], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v129, v133
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v128, v134
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:16
	ds_load_u8 v13, v99 offset:144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v127, v135
	v_cvt_f32_i32_e32 v126, v136
	v_cvt_f32_i32_e32 v125, v137
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v124, v138
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v99 offset:400
	ds_load_u8 v14, v99 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v99 offset:1680
	ds_load_u8 v13, v99 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:1936
	ds_load_u8 v14, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:1168
	ds_load_u8 v15, v99 offset:1040
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:1424
	ds_load_u8 v16, v99 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v99 offset:2704
	ds_load_u8 v15, v99 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:2960
	ds_load_u8 v16, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:2192
	ds_load_u8 v132, v99 offset:2064
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v132, v16, 0xc0c0004
	ds_load_u8 v132, v99 offset:2448
	ds_load_u8 v133, v99 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v132, 16, v16
	ds_load_u8 v16, v99 offset:3728
	ds_load_u8 v132, v99 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v132, v16, 0xc0c0004
	ds_load_u8 v132, v99 offset:3984
	ds_load_u8 v133, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v99 offset:3216
	ds_load_u8 v134, v99 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v134, v133, 0xc0c0004
	ds_load_u8 v133, v99 offset:3472
	ds_load_u8 v135, v99 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v135, v133, 0xc0c0004
	v_lshl_or_b32 v133, v132, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v132, v135, 16, v134
	ds_load_u8 v16, v99 offset:4752
	ds_load_u8 v134, v99 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v134, v16, 0xc0c0004
	ds_load_u8 v134, v99 offset:5008
	ds_load_u8 v135, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:4240
	ds_load_u8 v136, v99 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v136, v135, 0xc0c0004
	ds_load_u8 v135, v99 offset:4496
	ds_load_u8 v137, v99 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v135, 0xc0c0004
	v_lshl_or_b32 v135, v134, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v134, v137, 16, v136
	ds_load_u8 v16, v99 offset:5776
	ds_load_u8 v136, v99 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v136, v16, 0xc0c0004
	ds_load_u8 v136, v99 offset:6032
	ds_load_u8 v137, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:5264
	ds_load_u8 v138, v99 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v138, v137, 0xc0c0004
	ds_load_u8 v137, v99 offset:5520
	ds_load_u8 v139, v99 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v137, 0xc0c0004
	v_lshl_or_b32 v137, v136, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v136, v139, 16, v138
	ds_load_u8 v16, v99 offset:6800
	ds_load_u8 v138, v99 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v138, v16, 0xc0c0004
	ds_load_u8 v138, v99 offset:7056
	ds_load_u8 v139, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v99 offset:6288
	ds_load_u8 v140, v99 offset:6160
	v_lshl_or_b32 v148, v138, 16, v16
	ds_load_u8 v16, v99 offset:7824
	ds_load_u8 v138, v99 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v99 offset:6544
	ds_load_u8 v141, v99 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v138, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v140, 16, v139
	ds_load_u8 v138, v99 offset:8080
	ds_load_u8 v139, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v99 offset:7312
	ds_load_u8 v140, v99 offset:7184
	v_lshl_or_b32 v150, v138, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v99 offset:7568
	ds_load_u8 v141, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[139:146], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v99 offset:672
	ds_load_u8 v11, v99 offset:544
	v_wmma_i32_16x16x16_iu4 v[139:146], v[12:13], v[31:32], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[14:15], v[27:28], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[132:133], v[25:26], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[134:135], v[23:24], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:928
	ds_load_u8 v12, v99 offset:800
	v_wmma_i32_16x16x16_iu4 v[139:146], v[136:137], v[21:22], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[19:20], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[149:150], v[17:18], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v137, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v136, v142
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:32
	ds_load_u8 v13, v99 offset:160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v143
	v_cvt_f32_i32_e32 v134, v144
	v_cvt_f32_i32_e32 v133, v145
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v146
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v99 offset:416
	ds_load_u8 v14, v99 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v99 offset:1696
	ds_load_u8 v13, v99 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:1952
	ds_load_u8 v14, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:1184
	ds_load_u8 v15, v99 offset:1056
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:1440
	ds_load_u8 v16, v99 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v99 offset:2720
	ds_load_u8 v15, v99 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:2976
	ds_load_u8 v16, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:2208
	ds_load_u8 v140, v99 offset:2080
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v140, v16, 0xc0c0004
	ds_load_u8 v140, v99 offset:2464
	ds_load_u8 v141, v99 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v140, 16, v16
	ds_load_u8 v16, v99 offset:3744
	ds_load_u8 v140, v99 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v140, v16, 0xc0c0004
	ds_load_u8 v140, v99 offset:4000
	ds_load_u8 v141, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v99 offset:3232
	ds_load_u8 v142, v99 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v142, v141, 0xc0c0004
	ds_load_u8 v141, v99 offset:3488
	ds_load_u8 v143, v99 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v143, v141, 0xc0c0004
	v_lshl_or_b32 v141, v140, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v140, v143, 16, v142
	ds_load_u8 v16, v99 offset:4768
	ds_load_u8 v142, v99 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v142, v16, 0xc0c0004
	ds_load_u8 v142, v99 offset:5024
	ds_load_u8 v143, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:4256
	ds_load_u8 v144, v99 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v143, 0xc0c0004
	ds_load_u8 v143, v99 offset:4512
	ds_load_u8 v145, v99 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v143, 0xc0c0004
	v_lshl_or_b32 v143, v142, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v142, v145, 16, v144
	ds_load_u8 v16, v99 offset:5792
	ds_load_u8 v144, v99 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v144, v16, 0xc0c0004
	ds_load_u8 v144, v99 offset:6048
	ds_load_u8 v145, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:5280
	ds_load_u8 v146, v99 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v146, v145, 0xc0c0004
	ds_load_u8 v145, v99 offset:5536
	ds_load_u8 v147, v99 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v147, v145, 0xc0c0004
	v_lshl_or_b32 v145, v144, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v144, v147, 16, v146
	ds_load_u8 v16, v99 offset:6816
	ds_load_u8 v146, v99 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v146, v16, 0xc0c0004
	ds_load_u8 v146, v99 offset:7072
	ds_load_u8 v147, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v99 offset:6304
	ds_load_u8 v148, v99 offset:6176
	v_lshl_or_b32 v156, v146, 16, v16
	ds_load_u8 v16, v99 offset:7840
	ds_load_u8 v146, v99 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v99 offset:6560
	ds_load_u8 v149, v99 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v146, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v148, 16, v147
	ds_load_u8 v146, v99 offset:8096
	ds_load_u8 v147, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v99 offset:7328
	ds_load_u8 v148, v99 offset:7200
	v_lshl_or_b32 v158, v146, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v99 offset:7584
	ds_load_u8 v149, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v148, 16, v147
	v_wmma_i32_16x16x16_iu4 v[147:154], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v99 offset:688
	ds_load_u8 v11, v99 offset:560
	v_wmma_i32_16x16x16_iu4 v[147:154], v[12:13], v[31:32], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[14:15], v[27:28], v[147:154] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[140:141], v[25:26], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[142:143], v[23:24], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:944
	ds_load_u8 v12, v99 offset:816
	v_wmma_i32_16x16x16_iu4 v[147:154], v[144:145], v[21:22], v[147:154] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[155:156], v[19:20], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[157:158], v[17:18], v[147:154] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v145, v149
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v144, v150
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:48
	ds_load_u8 v13, v99 offset:176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v142, v152
	v_cvt_f32_i32_e32 v141, v153
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v154
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v99 offset:432
	ds_load_u8 v14, v99 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v99 offset:1712
	ds_load_u8 v13, v99 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v99 offset:1968
	ds_load_u8 v14, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:1200
	ds_load_u8 v15, v99 offset:1072
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:1456
	ds_load_u8 v16, v99 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v99 offset:2736
	ds_load_u8 v15, v99 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:2992
	ds_load_u8 v16, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:2224
	ds_load_u8 v148, v99 offset:2096
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v148, v16, 0xc0c0004
	ds_load_u8 v148, v99 offset:2480
	ds_load_u8 v149, v99 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v148, 16, v16
	ds_load_u8 v16, v99 offset:3760
	ds_load_u8 v148, v99 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v148, v16, 0xc0c0004
	ds_load_u8 v148, v99 offset:4016
	ds_load_u8 v149, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v99 offset:3248
	ds_load_u8 v150, v99 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v149, 0xc0c0004
	ds_load_u8 v149, v99 offset:3504
	ds_load_u8 v151, v99 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v149, 0xc0c0004
	v_lshl_or_b32 v149, v148, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v148, v151, 16, v150
	ds_load_u8 v16, v99 offset:4784
	ds_load_u8 v150, v99 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v150, v16, 0xc0c0004
	ds_load_u8 v150, v99 offset:5040
	ds_load_u8 v151, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:4272
	ds_load_u8 v152, v99 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v151, 0xc0c0004
	ds_load_u8 v151, v99 offset:4528
	ds_load_u8 v153, v99 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v153, v151, 0xc0c0004
	v_lshl_or_b32 v151, v150, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v150, v153, 16, v152
	ds_load_u8 v16, v99 offset:5808
	ds_load_u8 v152, v99 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v152, v16, 0xc0c0004
	ds_load_u8 v152, v99 offset:6064
	ds_load_u8 v153, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:5296
	ds_load_u8 v154, v99 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v154, v153, 0xc0c0004
	ds_load_u8 v153, v99 offset:5552
	ds_load_u8 v155, v99 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v155, v153, 0xc0c0004
	v_lshl_or_b32 v153, v152, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v152, v155, 16, v154
	ds_load_u8 v16, v99 offset:6832
	ds_load_u8 v154, v99 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v154, v16, 0xc0c0004
	ds_load_u8 v154, v99 offset:7088
	ds_load_u8 v155, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v99 offset:6320
	ds_load_u8 v156, v99 offset:6192
	v_lshl_or_b32 v164, v154, 16, v16
	ds_load_u8 v16, v99 offset:7856
	ds_load_u8 v154, v99 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v99 offset:6576
	ds_load_u8 v157, v99 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v154, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v156, 16, v155
	ds_load_u8 v154, v99 offset:8112
	ds_load_u8 v155, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v99 offset:7344
	ds_load_u8 v156, v99 offset:7216
	v_lshl_or_b32 v166, v154, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v99 offset:7600
	ds_load_u8 v157, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v156, 16, v155
	v_wmma_i32_16x16x16_iu4 v[155:162], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v99 offset:576
	v_wmma_i32_16x16x16_iu4 v[155:162], v[12:13], v[31:32], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[14:15], v[27:28], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[148:149], v[25:26], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[150:151], v[23:24], v[155:162] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	v_wmma_i32_16x16x16_iu4 v[155:162], v[152:153], v[21:22], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[163:164], v[19:20], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[165:166], v[17:18], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v154, v156
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v151, v159
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v152, v158
	v_cvt_f32_i32_e32 v149, v161
	v_cvt_f32_i32_e32 v150, v160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v157, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v148, v162
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v99 offset:2752
	ds_load_u8 v10, v99 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v99 offset:3008
	ds_load_u8 v11, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2240
	ds_load_u8 v12, v99 offset:2112
	v_lshl_or_b32 v161, v10, 16, v9
	ds_load_u8 v9, v99 offset:3776
	ds_load_u8 v10, v99 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2496
	ds_load_u8 v13, v99 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	ds_load_u8 v10, v99 offset:4032
	ds_load_u8 v11, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3264
	ds_load_u8 v12, v99 offset:3136
	v_lshl_or_b32 v163, v10, 16, v9
	ds_load_u8 v9, v99 offset:4800
	ds_load_u8 v10, v99 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3520
	ds_load_u8 v13, v99 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v12, 16, v11
	ds_load_u8 v10, v99 offset:5056
	ds_load_u8 v11, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4288
	ds_load_u8 v12, v99 offset:4160
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v99 offset:5824
	ds_load_u8 v10, v99 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4544
	ds_load_u8 v13, v99 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v12, 16, v11
	ds_load_u8 v10, v99 offset:6080
	ds_load_u8 v11, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5312
	ds_load_u8 v12, v99 offset:5184
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v99 offset:6848
	ds_load_u8 v10, v99 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5568
	ds_load_u8 v13, v99 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v99 offset:7104
	ds_load_u8 v11, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6336
	ds_load_u8 v12, v99 offset:6208
	v_lshl_or_b32 v169, v10, 16, v9
	ds_load_u8 v9, v99 offset:7872
	ds_load_u8 v10, v99 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6592
	ds_load_u8 v13, v99 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	ds_load_u8 v10, v99 offset:8128
	ds_load_u8 v11, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7360
	ds_load_u8 v12, v99 offset:7232
	v_lshl_or_b32 v171, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7616
	ds_load_u8 v13, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v163, v9
	v_cvt_f32_i32_e32 v162, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
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
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v99 offset:2768
	ds_load_u8 v10, v99 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v99 offset:3024
	ds_load_u8 v11, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2256
	ds_load_u8 v12, v99 offset:2128
	v_lshl_or_b32 v169, v10, 16, v9
	ds_load_u8 v9, v99 offset:3792
	ds_load_u8 v10, v99 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2512
	ds_load_u8 v13, v99 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	ds_load_u8 v10, v99 offset:4048
	ds_load_u8 v11, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3280
	ds_load_u8 v12, v99 offset:3152
	v_lshl_or_b32 v171, v10, 16, v9
	ds_load_u8 v9, v99 offset:4816
	ds_load_u8 v10, v99 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3536
	ds_load_u8 v13, v99 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v12, 16, v11
	ds_load_u8 v10, v99 offset:5072
	ds_load_u8 v11, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4304
	ds_load_u8 v12, v99 offset:4176
	v_lshl_or_b32 v173, v10, 16, v9
	ds_load_u8 v9, v99 offset:5840
	ds_load_u8 v10, v99 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4560
	ds_load_u8 v13, v99 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v12, 16, v11
	ds_load_u8 v10, v99 offset:6096
	ds_load_u8 v11, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5328
	ds_load_u8 v12, v99 offset:5200
	v_lshl_or_b32 v175, v10, 16, v9
	ds_load_u8 v9, v99 offset:6864
	ds_load_u8 v10, v99 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5584
	ds_load_u8 v13, v99 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v12, 16, v11
	ds_load_u8 v10, v99 offset:7120
	ds_load_u8 v11, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6352
	ds_load_u8 v12, v99 offset:6224
	v_lshl_or_b32 v177, v10, 16, v9
	ds_load_u8 v9, v99 offset:7888
	ds_load_u8 v10, v99 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6608
	ds_load_u8 v13, v99 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v12, 16, v11
	ds_load_u8 v10, v99 offset:8144
	ds_load_u8 v11, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7376
	ds_load_u8 v12, v99 offset:7248
	v_lshl_or_b32 v179, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7632
	ds_load_u8 v13, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[174:175], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[178:179], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v171, v9
	v_cvt_f32_i32_e32 v170, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
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
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v173, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v175, v10, 16, v9
	ds_load_u8 v9, v99 offset:2784
	ds_load_u8 v10, v99 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v12, 16, v11
	ds_load_u8 v10, v99 offset:3040
	ds_load_u8 v11, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2272
	ds_load_u8 v12, v99 offset:2144
	v_lshl_or_b32 v177, v10, 16, v9
	ds_load_u8 v9, v99 offset:3808
	ds_load_u8 v10, v99 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2528
	ds_load_u8 v13, v99 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v12, 16, v11
	ds_load_u8 v10, v99 offset:4064
	ds_load_u8 v11, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3296
	ds_load_u8 v12, v99 offset:3168
	v_lshl_or_b32 v179, v10, 16, v9
	ds_load_u8 v9, v99 offset:4832
	ds_load_u8 v10, v99 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3552
	ds_load_u8 v13, v99 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v12, 16, v11
	ds_load_u8 v10, v99 offset:5088
	ds_load_u8 v11, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4320
	ds_load_u8 v12, v99 offset:4192
	v_lshl_or_b32 v181, v10, 16, v9
	ds_load_u8 v9, v99 offset:5856
	ds_load_u8 v10, v99 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4576
	ds_load_u8 v13, v99 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v12, 16, v11
	ds_load_u8 v10, v99 offset:6112
	ds_load_u8 v11, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5344
	ds_load_u8 v12, v99 offset:5216
	v_lshl_or_b32 v183, v10, 16, v9
	ds_load_u8 v9, v99 offset:6880
	ds_load_u8 v10, v99 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5600
	ds_load_u8 v13, v99 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v12, 16, v11
	ds_load_u8 v10, v99 offset:7136
	ds_load_u8 v11, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6368
	ds_load_u8 v12, v99 offset:6240
	v_lshl_or_b32 v185, v10, 16, v9
	ds_load_u8 v9, v99 offset:7904
	ds_load_u8 v10, v99 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6624
	ds_load_u8 v13, v99 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v12, 16, v11
	ds_load_u8 v10, v99 offset:8160
	ds_load_u8 v11, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7392
	ds_load_u8 v12, v99 offset:7264
	v_lshl_or_b32 v187, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7648
	ds_load_u8 v13, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[174:175], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[178:179], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[180:181], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v179, v9
	v_cvt_f32_i32_e32 v178, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:240
	ds_load_u8 v10, v99 offset:112
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
	ds_load_u8 v10, v99 offset:496
	ds_load_u8 v11, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:752
	ds_load_u8 v12, v99 offset:624
	v_lshl_or_b32 v180, v10, 16, v9
	ds_load_u8 v9, v99 offset:1264
	ds_load_u8 v10, v99 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115
	ds_load_u8 v13, v99 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	ds_load_u8 v10, v99 offset:1520
	ds_load_u8 v11, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1776
	ds_load_u8 v12, v99 offset:1648
	v_lshl_or_b32 v182, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v116
	ds_load_u8 v13, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[180:181], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v99 offset:2288
	ds_load_u8 v30, v99 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v99 offset:2544
	ds_load_u8 v31, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v99 offset:2800
	ds_load_u8 v32, v99 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v117
	ds_load_u8 v180, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v180, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v27, v99 offset:3312
	ds_load_u8 v28, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v99 offset:3568
	ds_load_u8 v29, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v99 offset:3824
	ds_load_u8 v30, v99 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v118
	ds_load_u8 v31, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v99 offset:4336
	ds_load_u8 v26, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v99 offset:4592
	ds_load_u8 v27, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v99 offset:4848
	ds_load_u8 v28, v99 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v119
	ds_load_u8 v29, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v23, v99 offset:5360
	ds_load_u8 v24, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v99 offset:5616
	ds_load_u8 v25, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v99 offset:5872
	ds_load_u8 v26, v99 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v120
	ds_load_u8 v27, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v99 offset:6384
	ds_load_u8 v22, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v99 offset:6640
	ds_load_u8 v23, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v99 offset:6896
	ds_load_u8 v24, v99 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v121
	ds_load_u8 v25, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v19, v99 offset:7408
	ds_load_u8 v20, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:7664
	ds_load_u8 v21, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v99 offset:7920
	ds_load_u8 v22, v99 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v122
	ds_load_u8 v23, v99 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v18, 0x80000000, v113, s0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v232, v112, s[28:31], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, s41, v111
	s_clause 0x1f
	buffer_load_u16 v22, v16, s[36:39], 0 offen
	buffer_load_u16 v23, v16, s[36:39], 0 offen offset:4
	buffer_load_u16 v24, v16, s[36:39], 0 offen offset:8
	buffer_load_u16 v25, v16, s[36:39], 0 offen offset:12
	buffer_load_u16 v26, v16, s[36:39], 0 offen offset:16
	buffer_load_u16 v27, v16, s[36:39], 0 offen offset:20
	buffer_load_u16 v28, v16, s[36:39], 0 offen offset:24
	buffer_load_u16 v29, v16, s[36:39], 0 offen offset:28
	buffer_load_u16 v30, v16, s[36:39], 0 offen offset:32
	buffer_load_u16 v31, v16, s[36:39], 0 offen offset:36
	buffer_load_u16 v32, v16, s[36:39], 0 offen offset:40
	buffer_load_u16 v180, v16, s[36:39], 0 offen offset:44
	buffer_load_u16 v181, v16, s[36:39], 0 offen offset:48
	buffer_load_u16 v182, v16, s[36:39], 0 offen offset:52
	buffer_load_u16 v183, v16, s[36:39], 0 offen offset:56
	buffer_load_u16 v184, v16, s[36:39], 0 offen offset:60
	buffer_load_u16 v185, v16, s[36:39], 0 offen offset:64
	buffer_load_u16 v186, v16, s[36:39], 0 offen offset:68
	buffer_load_u16 v187, v16, s[36:39], 0 offen offset:72
	buffer_load_u16 v188, v16, s[36:39], 0 offen offset:76
	buffer_load_u16 v189, v16, s[36:39], 0 offen offset:80
	buffer_load_u16 v190, v16, s[36:39], 0 offen offset:84
	buffer_load_u16 v191, v16, s[36:39], 0 offen offset:88
	buffer_load_u16 v192, v16, s[36:39], 0 offen offset:92
	buffer_load_u16 v193, v16, s[36:39], 0 offen offset:96
	buffer_load_u16 v194, v16, s[36:39], 0 offen offset:100
	buffer_load_u16 v195, v16, s[36:39], 0 offen offset:104
	buffer_load_u16 v196, v16, s[36:39], 0 offen offset:108
	buffer_load_u16 v197, v16, s[36:39], 0 offen offset:112
	buffer_load_u16 v198, v16, s[36:39], 0 offen offset:116
	buffer_load_u16 v199, v16, s[36:39], 0 offen offset:120
	buffer_load_u16 v200, v16, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v201, v16, s[36:39], 0 offen offset:128
	buffer_load_u16 v202, v16, s[36:39], 0 offen offset:132
	buffer_load_u16 v203, v16, s[36:39], 0 offen offset:136
	buffer_load_u16 v204, v16, s[36:39], 0 offen offset:140
	buffer_load_u16 v205, v16, s[36:39], 0 offen offset:144
	buffer_load_u16 v206, v16, s[36:39], 0 offen offset:148
	buffer_load_u16 v207, v16, s[36:39], 0 offen offset:152
	buffer_load_u16 v208, v16, s[36:39], 0 offen offset:156
	buffer_load_u16 v209, v16, s[36:39], 0 offen offset:160
	buffer_load_u16 v210, v16, s[36:39], 0 offen offset:164
	buffer_load_u16 v211, v16, s[36:39], 0 offen offset:168
	buffer_load_u16 v212, v16, s[36:39], 0 offen offset:172
	buffer_load_u16 v213, v16, s[36:39], 0 offen offset:176
	buffer_load_u16 v214, v16, s[36:39], 0 offen offset:180
	buffer_load_u16 v215, v16, s[36:39], 0 offen offset:184
	buffer_load_u16 v216, v16, s[36:39], 0 offen offset:188
	buffer_load_u16 v217, v16, s[36:39], 0 offen offset:192
	buffer_load_u16 v218, v16, s[36:39], 0 offen offset:196
	buffer_load_u16 v219, v16, s[36:39], 0 offen offset:200
	buffer_load_u16 v220, v16, s[36:39], 0 offen offset:204
	buffer_load_u16 v221, v16, s[36:39], 0 offen offset:208
	buffer_load_u16 v222, v16, s[36:39], 0 offen offset:212
	buffer_load_u16 v223, v16, s[36:39], 0 offen offset:216
	buffer_load_u16 v224, v16, s[36:39], 0 offen offset:220
	buffer_load_u16 v225, v16, s[36:39], 0 offen offset:224
	buffer_load_u16 v226, v16, s[36:39], 0 offen offset:228
	buffer_load_u16 v227, v16, s[36:39], 0 offen offset:232
	buffer_load_u16 v228, v16, s[36:39], 0 offen offset:236
	buffer_load_u16 v229, v16, s[36:39], 0 offen offset:240
	buffer_load_u16 v230, v16, s[36:39], 0 offen offset:244
	buffer_load_u16 v231, v16, s[36:39], 0 offen offset:248
	buffer_load_u16 v16, v16, s[36:39], 0 offen offset:252
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v113, s43, v113
	s_add_i32 s41, s41, s42
	s_cmp_lg_u32 s40, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b16 v108, v123 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v112, 2, v112
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v109, v[18:21]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v18, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v131
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(62)
	v_dual_mul_f32 v20, v18, v130 :: v_dual_lshlrev_b32 v19, 16, v23
	v_mul_f32_e32 v17, v18, v17
	v_mul_f32_e32 v9, v18, v9
	v_mul_f32_e32 v10, v18, v10
	v_mul_f32_e32 v11, v18, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(61)
	v_dual_fmac_f32 v96, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v95, v20, v19 :: v_dual_mul_f32 v20, v18, v128
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(59)
	v_dual_fmac_f32 v94, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v26
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v93, v20, v19 :: v_dual_mul_f32 v20, v18, v126
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(57)
	v_dual_fmac_f32 v92, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v91, v20, v19 :: v_dual_mul_f32 v20, v18, v124
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v19, 16, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(55)
	v_dual_fmac_f32 v90, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v30
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v89, v20, v19 :: v_dual_mul_f32 v20, v18, v138
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v19, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(53)
	v_dual_fmac_f32 v88, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v87, v20, v19 :: v_dual_mul_f32 v20, v18, v136
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v19, 16, v180
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(51)
	v_dual_fmac_f32 v86, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v181
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v85, v20, v19 :: v_dual_mul_f32 v20, v18, v134
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v19, 16, v182
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(49)
	v_dual_mul_f32 v20, v18, v133 :: v_dual_lshlrev_b32 v19, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v83, v20, v19 :: v_dual_mul_f32 v20, v18, v132
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v19, 16, v184
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(47)
	v_dual_fmac_f32 v82, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v185
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v81, v20, v19 :: v_dual_mul_f32 v20, v18, v146
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v19, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(45)
	v_dual_mul_f32 v20, v18, v145 :: v_dual_lshlrev_b32 v19, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v79, v20, v19 :: v_dual_mul_f32 v20, v18, v144
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v19, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(43)
	v_dual_fmac_f32 v78, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v189
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v77, v20, v19 :: v_dual_mul_f32 v20, v18, v142
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v19, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(41)
	v_dual_mul_f32 v20, v18, v141 :: v_dual_lshlrev_b32 v19, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v73, v20, v19 :: v_dual_mul_f32 v20, v18, v140
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v19, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(39)
	v_dual_fmac_f32 v74, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v193
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v71, v20, v19 :: v_dual_mul_f32 v20, v18, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v19, 16, v194
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v20, v18, v153 :: v_dual_lshlrev_b32 v19, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v20, v19 :: v_dual_mul_f32 v20, v18, v152
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v19, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v70, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v197
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v20, v19 :: v_dual_mul_f32 v20, v18, v150
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v19, 16, v198
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v20, v18, v149 :: v_dual_lshlrev_b32 v19, 16, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v65, v20, v19 :: v_dual_mul_f32 v20, v18, v148
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v19, 16, v200
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v66, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v201
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v20, v19 :: v_dual_mul_f32 v20, v18, v162
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v19, 16, v202
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v20, v18, v161 :: v_dual_lshlrev_b32 v19, 16, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v61, v20, v19 :: v_dual_mul_f32 v20, v18, v160
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v19, 16, v204
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v62, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v205
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v20, v19 :: v_dual_mul_f32 v20, v18, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v19, 16, v206
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v20, v18, v157 :: v_dual_lshlrev_b32 v19, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v57, v20, v19 :: v_dual_mul_f32 v20, v18, v156
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v19, 16, v208
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(23)
	v_dual_fmac_f32 v58, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v209
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v20, v19 :: v_dual_mul_f32 v20, v18, v170
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v19, 16, v210
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v20, v18, v169 :: v_dual_lshlrev_b32 v19, 16, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v53, v20, v19 :: v_dual_mul_f32 v20, v18, v168
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v19, 16, v212
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v54, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v213
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v20, v19 :: v_dual_mul_f32 v20, v18, v166
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v19, 16, v214
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v20, v18, v165 :: v_dual_lshlrev_b32 v19, 16, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v49, v20, v19 :: v_dual_mul_f32 v20, v18, v164
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v19, 16, v216
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v50, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v217
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v20, v19 :: v_dual_mul_f32 v20, v18, v178
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v19, 16, v218
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v20, v18, v177 :: v_dual_lshlrev_b32 v19, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v45, v20, v19 :: v_dual_mul_f32 v20, v18, v176
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v19, 16, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v46, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v221
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v18, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v20, v19 :: v_dual_mul_f32 v20, v18, v174
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v19, 16, v222
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v20, v18, v173 :: v_dual_lshlrev_b32 v19, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v20, v19 :: v_dual_mul_f32 v20, v18, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v19, 16, v224
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v42, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v17, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v226
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v40, v9, v17 :: v_dual_lshlrev_b32 v9, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v11, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v228
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v10, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v9, 16, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v35, v10, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v10, v18, v12 :: v_dual_lshlrev_b32 v9, 16, v230
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v36, v10, v9 :: v_dual_lshlrev_b32 v9, 16, v231
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v10, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v18, v14 :: v_dual_lshlrev_b32 v10, 16, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v33, v9, v10
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow1030
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v108, 16, v0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v99 offset:8272
	ds_load_u8 v2, v99 offset:8256
	ds_load_u8 v3, v99 offset:8304
	ds_load_u8 v4, v99 offset:8288
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	v_add_nc_u32_e32 v107, 0, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:8208
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8192
	v_lshl_or_b32 v30, v3, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v99 offset:8240
	ds_load_u8 v5, v99 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v4, 16, v2
	ds_load_u8 v1, v99 offset:640
	ds_load_u8 v2, v99 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:896
	ds_load_u8 v3, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:128
	ds_load_u8 v4, v99
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v99 offset:8400
	ds_load_u8 v2, v99 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:384
	ds_load_u8 v5, v99 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v4, 16, v3
	ds_load_u8 v2, v99 offset:8432
	ds_load_u8 v3, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:8336
	ds_load_u8 v4, v99 offset:8320
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v99 offset:1664
	ds_load_u8 v2, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8368
	ds_load_u8 v5, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v4, 16, v3
	ds_load_u8 v2, v99 offset:1920
	ds_load_u8 v3, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:1152
	ds_load_u8 v4, v99 offset:1024
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:1408
	ds_load_u8 v5, v99 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8528
	ds_load_u8 v18, v99 offset:8512
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8560
	ds_load_u8 v19, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8464
	ds_load_u8 v20, v99 offset:8448
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v99 offset:2688
	ds_load_u8 v18, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8496
	ds_load_u8 v21, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v18, v99 offset:2944
	ds_load_u8 v19, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:2176
	ds_load_u8 v20, v99 offset:2048
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:2432
	ds_load_u8 v21, v99 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8656
	ds_load_u8 v18, v99 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8688
	ds_load_u8 v19, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8592
	ds_load_u8 v20, v99 offset:8576
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v99 offset:3712
	ds_load_u8 v18, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8624
	ds_load_u8 v21, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	ds_load_u8 v18, v99 offset:3968
	ds_load_u8 v19, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:3200
	ds_load_u8 v20, v99 offset:3072
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:3456
	ds_load_u8 v21, v99 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8784
	ds_load_u8 v18, v99 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8816
	ds_load_u8 v19, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8720
	ds_load_u8 v20, v99 offset:8704
	v_lshl_or_b32 v24, v18, 16, v17
	ds_load_u8 v17, v99 offset:4736
	ds_load_u8 v18, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8752
	ds_load_u8 v21, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	ds_load_u8 v18, v99 offset:4992
	ds_load_u8 v19, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:4224
	ds_load_u8 v20, v99 offset:4096
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:4480
	ds_load_u8 v21, v99 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8912
	ds_load_u8 v18, v99 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8944
	ds_load_u8 v19, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8848
	ds_load_u8 v20, v99 offset:8832
	v_lshl_or_b32 v22, v18, 16, v17
	ds_load_u8 v17, v99 offset:5760
	ds_load_u8 v18, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8880
	ds_load_u8 v21, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	ds_load_u8 v18, v99 offset:6016
	ds_load_u8 v19, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:5248
	ds_load_u8 v20, v99 offset:5120
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:5504
	ds_load_u8 v109, v99 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v109, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9040
	ds_load_u8 v18, v99 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9072
	ds_load_u8 v19, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8976
	ds_load_u8 v20, v99 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:9008
	ds_load_u8 v109, v99 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v109, v20, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v99 offset:6784
	ds_load_u8 v18, v99 offset:6656
	v_lshl_or_b32 v19, v109, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:7040
	ds_load_u8 v109, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v109, v18, 0xc0c0004
	ds_load_u8 v109, v99 offset:6272
	ds_load_u8 v110, v99 offset:6144
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v99 offset:6528
	ds_load_u8 v111, v99 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v110, 16, v109
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9104
	ds_load_u8 v18, v99 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9136
	ds_load_u8 v109, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v109, v18, 0xc0c0004
	ds_load_u8 v109, v99 offset:9168
	ds_load_u8 v110, v99 offset:9152
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v99 offset:9184
	ds_load_u8 v111, v107 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v110, 16, v109
	ds_load_u8 v109, v99 offset:7808
	ds_load_u8 v110, v99 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v99 offset:8064
	ds_load_u8 v111, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:7296
	ds_load_u8 v112, v99 offset:7168
	v_lshl_or_b32 v110, v110, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v99 offset:7552
	ds_load_u8 v113, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v112, 16, v111
	v_wmma_i32_16x16x16_iu4 v[9:16], v[109:110], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v109, v9
	v_cvt_f32_i32_e32 v110, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:656
	ds_load_u8 v10, v99 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v11
	v_cvt_f32_i32_e32 v114, v12
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v115, v15
	v_cvt_f32_i32_e32 v116, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:912
	ds_load_u8 v11, v99 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:16
	ds_load_u8 v12, v99 offset:144
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v99 offset:1680
	ds_load_u8 v10, v99 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:400
	ds_load_u8 v13, v99 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v99 offset:1936
	ds_load_u8 v11, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1168
	ds_load_u8 v12, v99 offset:1040
	v_lshl_or_b32 v120, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1424
	ds_load_u8 v13, v99 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:2704
	ds_load_u8 v118, v99 offset:2576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:2960
	ds_load_u8 v119, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2192
	ds_load_u8 v120, v99 offset:2064
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2448
	ds_load_u8 v121, v99 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:3728
	ds_load_u8 v118, v99 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:3984
	ds_load_u8 v119, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3216
	ds_load_u8 v120, v99 offset:3088
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3472
	ds_load_u8 v121, v99 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:4752
	ds_load_u8 v118, v99 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:5008
	ds_load_u8 v119, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:4240
	ds_load_u8 v120, v99 offset:4112
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4496
	ds_load_u8 v121, v99 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:5776
	ds_load_u8 v118, v99 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:6032
	ds_load_u8 v119, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5264
	ds_load_u8 v120, v99 offset:5136
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5520
	ds_load_u8 v121, v99 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:6800
	ds_load_u8 v118, v99 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:7056
	ds_load_u8 v119, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6288
	ds_load_u8 v120, v99 offset:6160
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6544
	ds_load_u8 v121, v99 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:7824
	ds_load_u8 v118, v99 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:8080
	ds_load_u8 v119, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7312
	ds_load_u8 v120, v99 offset:7184
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7568
	ds_load_u8 v121, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v123, v9
	v_cvt_f32_i32_e32 v124, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:672
	ds_load_u8 v10, v99 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v127, v11
	v_cvt_f32_i32_e32 v128, v12
	v_cvt_f32_i32_e32 v125, v13
	v_cvt_f32_i32_e32 v126, v14
	v_cvt_f32_i32_e32 v129, v15
	v_cvt_f32_i32_e32 v130, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:928
	ds_load_u8 v11, v99 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:32
	ds_load_u8 v12, v99 offset:160
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v99 offset:1696
	ds_load_u8 v10, v99 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:416
	ds_load_u8 v13, v99 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v99 offset:1952
	ds_load_u8 v11, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1184
	ds_load_u8 v12, v99 offset:1056
	v_lshl_or_b32 v120, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1440
	ds_load_u8 v13, v99 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:2720
	ds_load_u8 v118, v99 offset:2592
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:2976
	ds_load_u8 v119, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2208
	ds_load_u8 v120, v99 offset:2080
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2464
	ds_load_u8 v121, v99 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:3744
	ds_load_u8 v118, v99 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:4000
	ds_load_u8 v119, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3232
	ds_load_u8 v120, v99 offset:3104
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3488
	ds_load_u8 v121, v99 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:4768
	ds_load_u8 v118, v99 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:5024
	ds_load_u8 v119, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:4256
	ds_load_u8 v120, v99 offset:4128
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4512
	ds_load_u8 v121, v99 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:5792
	ds_load_u8 v118, v99 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:6048
	ds_load_u8 v119, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5280
	ds_load_u8 v120, v99 offset:5152
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5536
	ds_load_u8 v121, v99 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:6816
	ds_load_u8 v118, v99 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:7072
	ds_load_u8 v119, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6304
	ds_load_u8 v120, v99 offset:6176
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6560
	ds_load_u8 v121, v99 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:7840
	ds_load_u8 v118, v99 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:8096
	ds_load_u8 v119, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7328
	ds_load_u8 v120, v99 offset:7200
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7584
	ds_load_u8 v121, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v149, v9
	v_cvt_f32_i32_e32 v150, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:688
	ds_load_u8 v10, v99 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v11
	v_cvt_f32_i32_e32 v154, v12
	v_cvt_f32_i32_e32 v151, v13
	v_cvt_f32_i32_e32 v152, v14
	v_cvt_f32_i32_e32 v155, v15
	v_cvt_f32_i32_e32 v156, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:944
	ds_load_u8 v11, v99 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:48
	ds_load_u8 v12, v99 offset:176
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v99 offset:1712
	ds_load_u8 v10, v99 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:432
	ds_load_u8 v13, v99 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v99 offset:1968
	ds_load_u8 v11, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1200
	ds_load_u8 v12, v99 offset:1072
	v_lshl_or_b32 v120, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1456
	ds_load_u8 v13, v99 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:2736
	ds_load_u8 v118, v99 offset:2608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:2992
	ds_load_u8 v119, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2224
	ds_load_u8 v120, v99 offset:2096
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2480
	ds_load_u8 v121, v99 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:3760
	ds_load_u8 v118, v99 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:4016
	ds_load_u8 v119, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3248
	ds_load_u8 v120, v99 offset:3120
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3504
	ds_load_u8 v121, v99 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:4784
	ds_load_u8 v118, v99 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:5040
	ds_load_u8 v119, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:4272
	ds_load_u8 v120, v99 offset:4144
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4528
	ds_load_u8 v121, v99 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:5808
	ds_load_u8 v118, v99 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:6064
	ds_load_u8 v119, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5296
	ds_load_u8 v120, v99 offset:5168
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5552
	ds_load_u8 v121, v99 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:6832
	ds_load_u8 v118, v99 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:7088
	ds_load_u8 v119, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6320
	ds_load_u8 v120, v99 offset:6192
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6576
	ds_load_u8 v121, v99 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:7856
	ds_load_u8 v118, v99 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:8112
	ds_load_u8 v119, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7344
	ds_load_u8 v120, v99 offset:7216
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7600
	ds_load_u8 v121, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v9
	v_cvt_f32_i32_e32 v148, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v141, v11
	v_cvt_f32_i32_e32 v142, v12
	v_cvt_f32_i32_e32 v135, v13
	v_cvt_f32_i32_e32 v136, v14
	v_cvt_f32_i32_e32 v121, v15
	v_cvt_f32_i32_e32 v122, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v120, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:2752
	ds_load_u8 v118, v99 offset:2624
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:3008
	ds_load_u8 v119, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2240
	ds_load_u8 v120, v99 offset:2112
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2496
	ds_load_u8 v131, v99 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:3776
	ds_load_u8 v118, v99 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:4032
	ds_load_u8 v119, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3264
	ds_load_u8 v120, v99 offset:3136
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3520
	ds_load_u8 v131, v99 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:4800
	ds_load_u8 v118, v99 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:5056
	ds_load_u8 v119, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:4288
	ds_load_u8 v120, v99 offset:4160
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4544
	ds_load_u8 v131, v99 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:5824
	ds_load_u8 v118, v99 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:6080
	ds_load_u8 v119, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5312
	ds_load_u8 v120, v99 offset:5184
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5568
	ds_load_u8 v131, v99 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:6848
	ds_load_u8 v118, v99 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:7104
	ds_load_u8 v119, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6336
	ds_load_u8 v120, v99 offset:6208
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6592
	ds_load_u8 v131, v99 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:7872
	ds_load_u8 v118, v99 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:8128
	ds_load_u8 v119, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7360
	ds_load_u8 v120, v99 offset:7232
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7616
	ds_load_u8 v131, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v131, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v9
	v_cvt_f32_i32_e32 v146, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v139, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v133, v13
	v_cvt_f32_i32_e32 v134, v14
	v_cvt_f32_i32_e32 v119, v15
	v_cvt_f32_i32_e32 v120, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v132, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:2768
	ds_load_u8 v118, v99 offset:2640
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:3024
	ds_load_u8 v131, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:2256
	ds_load_u8 v132, v99 offset:2128
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:2512
	ds_load_u8 v137, v99 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:3792
	ds_load_u8 v118, v99 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:4048
	ds_load_u8 v131, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:3280
	ds_load_u8 v132, v99 offset:3152
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:3536
	ds_load_u8 v137, v99 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:4816
	ds_load_u8 v118, v99 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:5072
	ds_load_u8 v131, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:4304
	ds_load_u8 v132, v99 offset:4176
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:4560
	ds_load_u8 v137, v99 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:5840
	ds_load_u8 v118, v99 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:6096
	ds_load_u8 v131, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:5328
	ds_load_u8 v132, v99 offset:5200
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:5584
	ds_load_u8 v137, v99 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:6864
	ds_load_u8 v118, v99 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:7120
	ds_load_u8 v131, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:6352
	ds_load_u8 v132, v99 offset:6224
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:6608
	ds_load_u8 v137, v99 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v99 offset:7888
	ds_load_u8 v118, v99 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v99 offset:8144
	ds_load_u8 v131, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	ds_load_u8 v131, v99 offset:7376
	ds_load_u8 v132, v99 offset:7248
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v99 offset:7632
	ds_load_u8 v137, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v137, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v9
	v_cvt_f32_i32_e32 v144, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v11
	v_cvt_f32_i32_e32 v138, v12
	v_cvt_f32_i32_e32 v131, v13
	v_cvt_f32_i32_e32 v132, v14
	v_cvt_f32_i32_e32 v117, v15
	v_cvt_f32_i32_e32 v118, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v160, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:2784
	ds_load_u8 v158, v99 offset:2656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:3040
	ds_load_u8 v159, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:2272
	ds_load_u8 v160, v99 offset:2144
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:2528
	ds_load_u8 v161, v99 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:3808
	ds_load_u8 v158, v99 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:4064
	ds_load_u8 v159, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:3296
	ds_load_u8 v160, v99 offset:3168
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:3552
	ds_load_u8 v161, v99 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:4832
	ds_load_u8 v158, v99 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:5088
	ds_load_u8 v159, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:4320
	ds_load_u8 v160, v99 offset:4192
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:4576
	ds_load_u8 v161, v99 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:5856
	ds_load_u8 v158, v99 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:6112
	ds_load_u8 v159, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:5344
	ds_load_u8 v160, v99 offset:5216
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:5600
	ds_load_u8 v161, v99 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:6880
	ds_load_u8 v158, v99 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:7136
	ds_load_u8 v159, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:6368
	ds_load_u8 v160, v99 offset:6240
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:6624
	ds_load_u8 v161, v99 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v157, v99 offset:7904
	ds_load_u8 v158, v99 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v99 offset:8160
	ds_load_u8 v159, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:7392
	ds_load_u8 v160, v99 offset:7264
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:7648
	ds_load_u8 v161, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v160, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v157, v11
	v_cvt_f32_i32_e32 v158, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v99 offset:240
	ds_load_u8 v14, v99 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v159, v9
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v160, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:496
	ds_load_u8 v15, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:752
	ds_load_u8 v16, v99 offset:624
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v107
	ds_load_u8 v107, v99 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v107, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:1264
	ds_load_u8 v14, v99 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:1520
	ds_load_u8 v15, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:1776
	ds_load_u8 v16, v99 offset:1648
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v29, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v29, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:2288
	ds_load_u8 v14, v99 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:2544
	ds_load_u8 v15, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:2800
	ds_load_u8 v16, v99 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v105
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v29, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v29, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:3312
	ds_load_u8 v14, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:3568
	ds_load_u8 v15, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:3824
	ds_load_u8 v16, v99 offset:3696
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v27, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v27, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:4336
	ds_load_u8 v14, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:4592
	ds_load_u8 v15, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:4848
	ds_load_u8 v16, v99 offset:4720
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v103
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v25, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v25, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:5360
	ds_load_u8 v14, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:5616
	ds_load_u8 v15, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:5872
	ds_load_u8 v16, v99 offset:5744
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v102
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v23, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v23, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:6384
	ds_load_u8 v14, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:6640
	ds_load_u8 v15, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:6896
	ds_load_u8 v16, v99 offset:6768
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v101
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v21, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v99 offset:7408
	ds_load_u8 v14, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v99 offset:7664
	ds_load_u8 v15, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v99 offset:7920
	ds_load_u8 v16, v99 offset:7792
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v100
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v99 offset:8048
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v19, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v15, v1
	v_cvt_f32_i32_e32 v16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v3
	v_cvt_f32_i32_e32 v14, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v1, v8
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s35, v97
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s34, s35
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s25, s9, 0xffff
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s24, s8
	v_add_lshl_u32 v5, s1, v5, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s23
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s23
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v17, s0, v98, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s26
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v8, v5, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v17, s2
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	v_add_nc_u32_e32 v204, 0xe8, v17
	v_add_nc_u32_e32 v208, 0xf8, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 4, v17
	v_add_nc_u32_e32 v18, 8, v17
	v_add_nc_u32_e32 v19, 16, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v111, v111, v8 :: v_dual_add_nc_u32 v20, 20, v17
	v_mul_f32_e32 v110, v110, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v7, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v109, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v7, 0x80000000, v18, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v113, v113, v8 :: v_dual_add_nc_u32 v18, 12, v17
	v_dual_mul_f32 v112, v112, v8 :: v_dual_add_nc_u32 v21, 24, v17
	v_dual_mul_f32 v115, v115, v8 :: v_dual_add_nc_u32 v22, 28, v17
	v_dual_mul_f32 v116, v116, v8 :: v_dual_add_nc_u32 v23, 32, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v123, v123, v8 :: v_dual_add_nc_u32 v24, 36, v17
	v_dual_mul_f32 v127, v127, v8 :: v_dual_add_nc_u32 v98, 40, v17
	v_mul_f32_e32 v114, v114, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	s_clause 0x7
	buffer_load_u16 v25, v6, s[24:27], 0 offen
	buffer_load_u16 v26, v5, s[24:27], 0 offen
	buffer_load_u16 v27, v7, s[24:27], 0 offen
	buffer_load_u16 v28, v18, s[24:27], 0 offen
	buffer_load_u16 v29, v19, s[24:27], 0 offen
	buffer_load_u16 v30, v20, s[24:27], 0 offen
	buffer_load_u16 v31, v21, s[24:27], 0 offen
	buffer_load_u16 v32, v22, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v125, v125, v8 :: v_dual_add_nc_u32 v18, 44, v17
	v_dual_mul_f32 v124, v124, v8 :: v_dual_add_nc_u32 v19, 48, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v23, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v129, v8 :: v_dual_add_nc_u32 v20, 52, v17
	v_dual_mul_f32 v128, v128, v8 :: v_dual_add_nc_u32 v21, 56, v17
	v_dual_mul_f32 v149, v149, v8 :: v_dual_add_nc_u32 v22, 60, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v24, s2
	v_cndmask_b32_e64 v7, 0x80000000, v98, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v126, v126, v8 :: v_dual_add_nc_u32 v23, 64, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v153, v153, v8 :: v_dual_add_nc_u32 v24, 0x44, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v151, v151, v8 :: v_dual_add_nc_u32 v98, 0x48, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	s_clause 0x7
	buffer_load_u16 v164, v5, s[24:27], 0 offen
	buffer_load_u16 v165, v6, s[24:27], 0 offen
	buffer_load_u16 v166, v7, s[24:27], 0 offen
	buffer_load_u16 v167, v18, s[24:27], 0 offen
	buffer_load_u16 v168, v19, s[24:27], 0 offen
	buffer_load_u16 v169, v20, s[24:27], 0 offen
	buffer_load_u16 v170, v21, s[24:27], 0 offen
	buffer_load_u16 v171, v22, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v155, v155, v8 :: v_dual_add_nc_u32 v18, 0x4c, v17
	v_dual_mul_f32 v130, v130, v8 :: v_dual_add_nc_u32 v19, 0x50, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v23, s2
	v_add_nc_u32_e32 v20, 0x54, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v150, v150, v8 :: v_dual_add_nc_u32 v21, 0x58, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x5c, v17
	v_cndmask_b32_e64 v6, 0x80000000, v24, s2
	v_cndmask_b32_e64 v7, 0x80000000, v98, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	s_clause 0x7
	buffer_load_u16 v176, v5, s[24:27], 0 offen
	buffer_load_u16 v177, v6, s[24:27], 0 offen
	buffer_load_u16 v178, v7, s[24:27], 0 offen
	buffer_load_u16 v179, v18, s[24:27], 0 offen
	buffer_load_u16 v180, v19, s[24:27], 0 offen
	buffer_load_u16 v181, v20, s[24:27], 0 offen
	buffer_load_u16 v172, v21, s[24:27], 0 offen
	buffer_load_u16 v173, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x60, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v154, v154, v8 :: v_dual_add_nc_u32 v19, 0x64, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, 0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v152, v152, v8 :: v_dual_add_nc_u32 v21, 0x6c, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x1
	buffer_load_u16 v193, v18, s[24:27], 0 offen
	buffer_load_u16 v194, v19, s[24:27], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v182.h, v6.h
	v_mov_b16_e64 v183.h, v6.h
	v_mov_b16_e64 v184.h, v6.h
	v_mov_b16_e64 v185.h, v6.h
	v_mov_b16_e64 v186.h, v6.h
	v_mov_b16_e64 v187.h, v6.h
	v_mov_b16_e64 v188.h, v6.h
	v_mov_b16_e64 v189.h, v6.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, s23, v97
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 0x68, v17
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v190.h, v6.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_add_nc_u32_e32 v22, 0x70, v17
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x1
	buffer_load_u16 v195, v20, s[24:27], 0 offen
	buffer_load_u16 v196, v21, s[24:27], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v7, s34, s33, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 0x74, v17
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v156, v156, v8 :: v_dual_add_nc_u32 v19, 0x78, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v5, v7, v5, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_clause 0x1
	buffer_load_u16 v205, v22, s[24:27], 0 offen
	buffer_load_u16 v206, v18, s[24:27], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v191.h, v6.h
	v_mov_b16_e64 v192.h, v6.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x7c, v17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_add_nc_u32_e32 v24, 0x80, v17
	v_add_nc_u32_e32 v97, 0x84, v17
	v_add_nc_u32_e32 v99, 0x8c, v17
	v_add_nc_u32_e32 v101, 0x94, v17
	v_add_nc_u32_e32 v103, 0x9c, v17
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_add_nc_u32_e32 v98, 0x88, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v8 :: v_dual_add_nc_u32 v100, 0x90, v17
	v_dual_mul_f32 v9, v9, v8 :: v_dual_add_nc_u32 v102, 0x98, v17
	v_dual_mul_f32 v15, v15, v8 :: v_dual_add_nc_u32 v104, 0xa0, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v105, 0xa4, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v13, v13, v8 :: v_dual_add_nc_u32 v106, 0xa8, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v107, 0xac, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v8 :: v_dual_add_nc_u32 v20, 0xb0, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0xb4, v17
	v_add_nc_u32_e32 v161, 0xb8, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v1, v1, v8 :: v_dual_add_nc_u32 v162, 0xbc, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v163, 0xc0, v17
	v_add_nc_u32_e32 v175, 0xc8, v17
	v_add_nc_u32_e32 v197, 0xcc, v17
	v_add_nc_u32_e32 v199, 0xd4, v17
	v_add_nc_u32_e32 v201, 0xdc, v17
	v_add_nc_u32_e32 v203, 0xe4, v17
	v_add_nc_u32_e32 v18, 0xec, v17
	v_add_nc_u32_e32 v22, 0xf0, v17
	v_add_nc_u32_e32 v207, 0xf4, v17
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v211, 0x80000000, v162, s2
	v_cndmask_b32_e64 v212, 0x80000000, v163, s2
	v_cndmask_b32_e64 v214, 0x80000000, v175, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v199, 0x80000000, v199, s2
	v_cndmask_b32_e64 v201, 0x80000000, v201, s2
	v_cndmask_b32_e64 v203, 0x80000000, v203, s2
	v_cndmask_b32_e64 v217, 0x80000000, v22, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s23, s27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v12, v8
	v_mul_f32_e32 v10, v10, v8
	v_mul_f32_e32 v16, v16, v8
	v_mul_f32_e32 v14, v14, v8
	v_mul_f32_e32 v4, v4, v8
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v2, v2, v8 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v109, v25, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v110, v26, v96
	v_fma_f32 v28, v114, v28, v94
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v75, v25, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v113, v27, v95
	v_fma_f32 v30, v112, v30, v92
	v_fma_f32 v32, v116, v32, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v96, v26, s2
	v_cndmask_b32_e64 v28, v94, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v25.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v111, v29, v93
	v_fma_f32 v31, v115, v31, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v95, v27, s2
	v_cndmask_b32_e64 v92, v92, v30, s2
	v_cndmask_b32_e64 v90, v90, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v182.l, v26.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v93, v29, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v123, v164, v89
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v112, v127, v166, v87
	v_fma_f32 v111, v128, v167, v86
	v_fma_f32 v114, v125, v168, v85
	v_fma_f32 v109, v124, v165, v88
	v_fma_f32 v116, v129, v170, v83
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v87, v112, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v87, 1, v6
	v_mov_b16_e32 v6.l, v28.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v91, v31, s2
	v_cndmask_b32_e64 v31, v89, v110, s2
	v_cndmask_b32_e64 v86, v86, v111, s2
	v_cndmask_b32_e64 v75, v85, v114, s2
	v_cndmask_b32_e64 v83, v83, v116, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v183.l, v27.h
	v_and_b32_e32 v111, 1, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v92.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v88, v88, v109, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v152, v181, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v25, v25
	v_mov_b16_e64 v184.l, v29.h
	v_mov_b16_e64 v185.l, v30.h
	v_mov_b16_e64 v186.l, v31.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v85, v76, v127, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v76, 1, v182
	v_mov_b16_e64 v187.l, v32.h
	v_mov_b16_e64 v188.l, v75.h
	v_mov_b16_e64 v189.l, v83.h
	v_and_b32_e32 v89, 1, v183
	v_add3_u32 v87, v25, v87, 0x7fff
	v_add3_u32 v25, v26, v76, 0x7fff
	v_and_b32_e32 v76, 1, v6
	v_mov_b16_e32 v6.l, v90.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v113, v126, v169, v84
	v_fma_f32 v124, v149, v176, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v91, 1, v184
	v_and_b32_e32 v93, 1, v185
	v_and_b32_e32 v94, 1, v186
	v_and_b32_e32 v95, 1, v187
	v_and_b32_e32 v96, 1, v188
	v_and_b32_e32 v109, 1, v189
	v_add3_u32 v26, v27, v89, 0x7fff
	v_and_b32_e32 v89, 1, v6
	v_mov_b16_e32 v6.l, v88.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v84, v84, v113, s2
	v_cndmask_b32_e64 v81, v81, v124, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v27, v27
	v_cmp_o_f32_e64 s5, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s9, v31, v31
	v_cmp_o_f32_e64 s11, v32, v32
	v_cmp_o_f32_e64 s13, v75, v75
	v_cmp_o_f32_e64 s15, v83, v83
	v_add3_u32 v27, v29, v91, 0x7fff
	v_add3_u32 v29, v30, v93, 0x7fff
	v_add3_u32 v30, v31, v94, 0x7fff
	v_add3_u32 v31, v32, v95, 0x7fff
	v_add3_u32 v32, v75, v96, 0x7fff
	v_add3_u32 v75, v83, v109, 0x7fff
	v_and_b32_e32 v83, 1, v6
	v_mov_b16_e32 v6.l, v86.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v130, v171, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v92, v92
	v_mov_b16_e64 v190.l, v81.h
	v_cndmask_b16 v25.l, 0x7fff, v87.h, s0
	v_and_b32_e32 v87, 1, v6
	v_mov_b16_e32 v6.l, v84.h
	v_add3_u32 v76, v92, v76, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	v_add3_u32 v28, v28, v111, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v123, v150, v177, v80
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v82, v82, v115, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s8, v88, v88
	v_and_b32_e32 v110, 1, v190
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s5
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s9
	v_and_b32_e32 v91, 1, v6
	v_add3_u32 v83, v88, v83, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v76.h, s4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v126, v153, v178, v79
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v80, v80, v123, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s12, v84, v84
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v154, v179, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s17, v81, v81
	v_add3_u32 v81, v81, v110, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_mov_b16_e32 v6.l, v82.h
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v83.h, s8
	v_add3_u32 v83, v84, v91, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v151, v180, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v79, v79, v126, s2
	v_cndmask_b32_e64 v78, v78, v125, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v75.l, 0x7fff, v32.h, s13
	v_cndmask_b16 v32.l, 0x7fff, v75.h, s15
	v_cndmask_b16 v31.l, 0x7fff, v81.h, s17
	v_and_b32_e32 v81, 1, v6
	v_mov_b16_e32 v6.l, v80.h
	v_cndmask_b16 v75.h, 0x7fff, v83.h, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v77, v77, v128, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s10, v86, v86
	v_mov_b16_e64 v191.l, v79.h
	v_add3_u32 v86, v86, v87, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v156, v173, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v87, 1, v6
	v_mov_b16_e32 v6.l, v78.h
	v_cmp_o_f32_e64 s14, v82, v82
	v_mov_b16_e64 v192.l, v77.h
	v_and_b32_e32 v112, 1, v191
	v_add3_u32 v81, v82, v81, 0x7fff
	v_and_b32_e32 v76, 1, v6
	v_mov_b16_e32 v6.l, v85.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v74, v129, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s16, v80, v80
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v79, v79, v112, 0x7fff
	v_add3_u32 v80, v80, v87, 0x7fff
	v_add3_u32 v76, v78, v76, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v81.h, s14
	v_and_b32_e32 v78, 1, v6
	v_and_b32_e32 v81, 1, v192
	v_mov_b16_e32 v6.l, v74.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v147, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_clause 0x1
	buffer_load_u16 v209, v19, s[24:27], 0 offen
	buffer_load_u16 v210, v23, s[24:27], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v31.h, s11
	v_cndmask_b16 v31.h, 0x7fff, v80.h, s16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v155, v172, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v78, v85, v78, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s19
	v_add3_u32 v79, v77, v81, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v81, 16, v193
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v83, v148, v8 :: v_dual_lshlrev_b32 v82, 16, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v85, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v80, v73, v80, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v73.h, 0x7fff, v78.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v77, v83, v82, v72
	v_fma_f32 v81, v84, v81, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v82, v74, v85, 0x7fff
	v_cmp_o_f32_e64 s0, v74, v74
	v_mov_b16_e32 v78.l, v80.h
	v_mov_b16_e32 v78.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v71, v81, s2
	v_cndmask_b32_e64 v72, v72, v77, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v71.h, 0x7fff, v82.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v82, v142, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	s_clause 0x1
	buffer_load_u16 v215, v24, s[24:27], 0 offen
	buffer_load_u16 v216, v97, s[24:27], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v78
	v_mov_b16_e32 v6.l, v72.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v81, 16, v196
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v73.l, 0x7fff, v79.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v79, 16, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v77, v80, v78, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v83, v141, v8 :: v_dual_and_b32 v84, 1, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v82, v81, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v74.h
	v_mov_b16_e32 v78.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v79, v83, v79, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v81, v72, v84, 0x7fff
	v_cmp_o_f32_e64 s0, v72, v72
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v70, v70, v80, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v69, v79, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v80, 16, v206
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v69.h, 0x7fff, v81.h, s0
	v_mov_b16_e32 v6.l, v70.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v136, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v71.l, 0x7fff, v77.h, vcc_lo
	v_add3_u32 v77, v74, v78, 0x7fff
	v_mov_b16_e32 v78.l, v72.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v82, v135, v8 :: v_dual_lshlrev_b32 v79, 16, v205
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.h, v6.h
	v_and_b32_e32 v83, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v74, v81, v80, v68
	v_fma_f32 v79, v82, v79, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v80, v70, v83, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v74, s2
	v_cndmask_b32_e64 v70, v67, v79, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v74, v72, v78, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v121, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v67.h, 0x7fff, v80.h, s0
	v_mov_b16_e32 v6.l, v68.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v80, v122, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v69.l, 0x7fff, v77.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_mov_b16_e32 v77.l, v70.h
	v_and_b32_e32 v82, 1, v6
	v_mov_b16_e32 v77.h, v6.h
	v_cmp_o_f32_e64 s0, v68, v68
	v_cndmask_b16 v67.l, 0x7fff, v74.h, vcc_lo
	v_mov_b16_e32 v74.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_and_b32_e32 v77, 1, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v174, 0xc4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.h, 0x7fff, v86.h, s10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v198, 0xd0, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v200, 0xd8, v17
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v19, 0x80000000, v106, s2
	v_cndmask_b32_e64 v23, 0x80000000, v107, s2
	v_cndmask_b32_e64 v106, 0x80000000, v161, s2
	v_cndmask_b32_e64 v213, 0x80000000, v174, s2
	v_cndmask_b32_e64 v198, 0x80000000, v198, s2
	v_cndmask_b32_e64 v200, 0x80000000, v200, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v90, v90
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v78, 16, v209
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v79, 16, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v78, v81, v78, v65
	v_fma_f32 v72, v80, v79, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v79, v68, v82, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v80, v145, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v65, v78, s2
	v_cndmask_b32_e64 v66, v66, v72, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v79.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v79, v146, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v72, v70, v77, 0x7fff
	v_mov_b16_e32 v74.l, v68.h
	v_mov_b16_e32 v6.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v72.h, vcc_lo
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v81, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_mov_b16_e32 v72.h, v6.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v77, 16, v215
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v77, v80, v77, v63
	v_fma_f32 v70, v79, v78, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v78, v66, v81, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v79, v139, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v63, v77, s2
	v_cndmask_b32_e64 v64, v64, v70, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v70, v68, v74, 0x7fff
	v_cndmask_b16 v63.h, 0x7fff, v78.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v78, v140, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v64.h
	v_cndmask_b16 v63.l, 0x7fff, v70.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v202, 0xe0, v17
	v_add_nc_u32_e32 v17, 0xfc, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v72.l, v66.h
	v_and_b32_e32 v80, 1, v6
	v_cmp_o_f32_e64 s0, v64, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v202, 0x80000000, v202, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x1d
	buffer_load_u16 v218, v98, s[24:27], 0 offen
	buffer_load_u16 v219, v99, s[24:27], 0 offen
	buffer_load_u16 v220, v100, s[24:27], 0 offen
	buffer_load_u16 v221, v101, s[24:27], 0 offen
	buffer_load_u16 v222, v102, s[24:27], 0 offen
	buffer_load_u16 v223, v103, s[24:27], 0 offen
	buffer_load_u16 v174, v104, s[24:27], 0 offen
	buffer_load_u16 v175, v105, s[24:27], 0 offen
	buffer_load_u16 v162, v19, s[24:27], 0 offen
	buffer_load_u16 v163, v23, s[24:27], 0 offen
	buffer_load_u16 v107, v20, s[24:27], 0 offen
	buffer_load_u16 v161, v21, s[24:27], 0 offen
	buffer_load_u16 v105, v106, s[24:27], 0 offen
	buffer_load_u16 v106, v211, s[24:27], 0 offen
	buffer_load_u16 v103, v212, s[24:27], 0 offen
	buffer_load_u16 v104, v213, s[24:27], 0 offen
	buffer_load_u16 v101, v214, s[24:27], 0 offen
	buffer_load_u16 v102, v197, s[24:27], 0 offen
	buffer_load_u16 v99, v198, s[24:27], 0 offen
	buffer_load_u16 v100, v199, s[24:27], 0 offen
	buffer_load_u16 v97, v200, s[24:27], 0 offen
	buffer_load_u16 v98, v201, s[24:27], 0 offen
	buffer_load_u16 v23, v202, s[24:27], 0 offen
	buffer_load_u16 v24, v203, s[24:27], 0 offen
	buffer_load_u16 v21, v204, s[24:27], 0 offen
	buffer_load_u16 v22, v18, s[24:27], 0 offen
	buffer_load_u16 v19, v217, s[24:27], 0 offen
	buffer_load_u16 v20, v207, s[24:27], 0 offen
	buffer_load_u16 v18, v208, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v72, 1, v72
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_mov_b16_e32 v70.h, v6.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v74, 16, v218
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v77, 16, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v74, v79, v74, v61
	v_fma_f32 v68, v78, v77, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v77, v64, v80, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v78, v133, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v61, v74, s2
	v_cndmask_b32_e64 v62, v62, v68, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.h, 0x7fff, v77.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v77, v134, v8 :: v_dual_lshlrev_b32 v74, 16, v221
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v66, v72, 0x7fff
	v_mov_b16_e32 v6.l, v62.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v72, 16, v220
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v70.l, v64.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v66, v77, v74, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v62, v62
	v_and_b32_e32 v79, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v72, v78, v72, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v70, 1, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v66, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.l, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v74, v62, v79, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v72, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v72, 16, v223
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v60.h
	v_add3_u32 v62, v64, v70, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v74.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v74, v120, v8
	v_dual_mul_f32 v77, v119, v8 :: v_dual_lshlrev_b32 v70, 16, v222
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v74, v72, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.l, v59.h
	v_mov_b16_e32 v68.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v70, v77, v70, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v72, v60, v78, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v64, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v70, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v66.l, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v72.h, s0
	v_mov_b16_e32 v6.l, v58.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v70, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v72, v144, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v59, v68, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v68, 16, v174
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v74, v143, v8 :: v_dual_and_b32 v77, 1, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v59, v72, v70, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v57.h
	v_mov_b16_e32 v64.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v68, v74, v68, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v70, v58, v77, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v56, v59, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v68, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v68, 16, v163
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v59.h, 0x7fff, v70.h, s0
	v_mov_b16_e32 v6.l, v56.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v70, v138, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v62.l, 0x7fff, v60.h, vcc_lo
	v_add3_u32 v58, v57, v64, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v64, 16, v162
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v72, v137, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v74, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v57, v70, v68, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v55.h
	v_mov_b16_e32 v60.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v72, v64, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v56, v74, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v54, v57, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v64, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v64, 16, v161
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.h, 0x7fff, v68.h, s0
	v_mov_b16_e32 v6.l, v54.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v132, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v59.l, 0x7fff, v58.h, vcc_lo
	v_add3_u32 v56, v55, v60, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v60, 16, v107
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v70, v131, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v72, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v55, v68, v64, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.l, v53.h
	v_mov_b16_e32 v58.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v60, v70, v60, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v54, v72, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v52, v55, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v60, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v60, 16, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.h, 0x7fff, v64.h, s0
	v_mov_b16_e32 v6.l, v52.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v118, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v54, v53, v58, 0x7fff
	v_mov_b16_e32 v56.l, v51.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v58, 16, v105
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v117, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.h, v6.h
	v_and_b32_e32 v70, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v64, v60, v50
	v_fma_f32 v58, v68, v58, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v56
	v_add3_u32 v60, v52, v70, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v53, s2
	v_cndmask_b32_e64 v49, v49, v58, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v51, v56, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v56, 16, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.h, 0x7fff, v60.h, s0
	v_mov_b16_e32 v6.l, v50.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v58, 16, v104
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v60, v160, v8
	v_mul_f32_e32 v64, v159, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.l, 0x7fff, v54.h, vcc_lo
	v_mov_b16_e32 v54.l, v49.h
	v_mov_b16_e32 v54.h, v6.h
	v_and_b32_e32 v68, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v60, v58, v48
	v_fma_f32 v56, v64, v56, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v54
	v_add3_u32 v58, v50, v68, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v51, s2
	v_cndmask_b32_e64 v47, v47, v56, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v50, v49, v54, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v58.h, s0
	v_mov_b16_e32 v6.l, v48.h
	v_mov_b16_e32 v52.l, v47.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v54, 16, v101
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v56, 16, v102
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v58, v158, v8
	v_mul_f32_e32 v60, v157, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.h, v6.h
	v_and_b32_e32 v64, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v58, v56, v46
	v_fma_f32 v54, v60, v54, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v56, v48, v64, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v46, v49, s2
	v_cndmask_b32_e64 v45, v45, v54, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.l, 0x7fff, v50.h, vcc_lo
	v_add3_u32 v48, v47, v52, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v52, 16, v99
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_mov_b16_e32 v6.l, v46.h
	v_mov_b16_e32 v50.l, v45.h
	v_mov_b16_e32 v50.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v54, v44
	v_fma_f32 v11, v11, v52, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.l, 0x7fff, v48.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v48, 16, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v56.h, s0
	v_and_b32_e32 v56, 1, v6
	v_and_b32_e32 v47, 1, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v44, v12, s2
	v_cndmask_b32_e64 v11, v43, v11, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v48, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v50, v46, v56, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v43, v45, v47, 0x7fff
	v_mov_b16_e32 v6.l, v12.h
	v_mov_b16_e32 v46.l, v11.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v97
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v42, v10, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v50.h, s0
	v_and_b32_e32 v50, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v47, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v46
	v_mov_b16_e32 v6.l, v10.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v46, v12, v50, 0x7fff
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v41, v9, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v12, v11, v45, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v16, v24, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v46.h, s0
	v_mov_b16_e32 v42.l, v9.h
	v_mov_b16_e32 v42.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v15, v23, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v10, v43, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v40, v11, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v39, v15, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v10.h
	v_cndmask_b16 v41.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v12, v9, v16, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v23.h, s0
	v_mov_b16_e32 v16.l, v11.h
	v_mov_b16_e32 v16.h, v6.h
	v_and_b32_e32 v23, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v14, v22, v38
	v_fma_f32 v13, v13, v21, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v16
	v_add3_u32 v16, v10, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v38, v9, s2
	v_cndmask_b32_e64 v10, v37, v13, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v12, v11, v14, 0x7fff
	v_mov_b16_e32 v14.h, v6.h
	v_mov_b16_e32 v6.l, v9.h
	v_mov_b16_e32 v14.l, v10.h
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v6
	v_and_b32_e32 v14, 1, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v11, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v9, v16, 0x7fff
	v_add3_u32 v11, v10, v14, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v19, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v36, v4, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v35, v3, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v14, v34
	v_fma_f32 v1, v1, v16, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v8.l, v3.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v34, v2, s2
	v_cndmask_b32_e64 v1, v33, v1, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v10, v10
	v_and_b32_e32 v9, 1, v6
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v10.h, v6.h
	v_mov_b16_e32 v6.l, v1.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s0
	v_add3_u32 v8, v3, v8, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v3, v2, v10, 0x7fff
	v_add3_u32 v4, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s2, v2, v2
	v_cndmask_b16 v1.h, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v108
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s2
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e32 v9, v75, v28, vcc_lo
	v_cndmask_b32_e32 v35, v1, v13, vcc_lo
	v_cndmask_b32_e32 v1, v13, v1, vcc_lo
	v_dual_mov_b32 v13, 0x5410 :: v_dual_cndmask_b32 v36, v2, v12
	v_cndmask_b32_e32 v2, v12, v2, vcc_lo
	v_cndmask_b32_e32 v10, v28, v75, vcc_lo
	v_cndmask_b32_e32 v28, v53, v57, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v12, 0x1054, v13, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v37, vcc_lo
	v_add3_u32 v89, v90, v89, 0x7fff
	v_cndmask_b32_e32 v4, v25, v30, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b16 v29.h, 0x7fff, v89.h, s6
	v_dual_cndmask_b32 v14, v27, v32 :: v_dual_cndmask_b32 v3, v30, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v13, 0x760076, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v8, v26, v29, vcc_lo
	v_dual_cndmask_b32 v6, v29, v26 :: v_dual_cndmask_b32 v17, v31, v73
	v_lshl_or_b32 v12, v12, 4, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 4, v13
	v_cndmask_b32_e32 v19, v76, v71, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v12
	v_dual_cndmask_b32 v11, v32, v27 :: v_dual_and_b32 v38, 0x7060706, v13
	v_cndmask_b32_e32 v16, v73, v31, vcc_lo
	v_cndmask_b32_e32 v18, v71, v76, vcc_lo
	v_cndmask_b32_e32 v20, v65, v69, vcc_lo
	v_dual_cndmask_b32 v21, v69, v65 :: v_dual_cndmask_b32 v22, v63, v67
	v_dual_cndmask_b32 v23, v67, v63 :: v_dual_cndmask_b32 v24, v62, v61
	v_cndmask_b32_e32 v25, v61, v62, vcc_lo
	v_dual_cndmask_b32 v26, v59, v66 :: v_dual_cndmask_b32 v27, v66, v59
	v_dual_cndmask_b32 v29, v57, v53 :: v_dual_cndmask_b32 v30, v51, v55
	v_dual_cndmask_b32 v31, v55, v51 :: v_dual_cndmask_b32 v32, v41, v49
	v_dual_cndmask_b32 v33, v49, v41 :: v_dual_cndmask_b32 v34, v15, v44
	v_cndmask_b32_e32 v15, v44, v15, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v0, 32, v5
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v37
	v_perm_b32 v2, v4, v3, v38
	v_perm_b32 v3, v8, v6, v37
	v_perm_b32 v4, v8, v6, v38
	v_add_nc_u32_e32 v6, 64, v5
	v_cndmask_b32_e32 v7, 0x80000000, v5, vcc_lo
	v_perm_b32 v8, v10, v9, v37
	v_perm_b32 v9, v10, v9, v38
	v_perm_b32 v10, v14, v11, v37
	v_perm_b32 v11, v14, v11, v38
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_permlanex16_b32 v39, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v17, v16, v37
	v_perm_b32 v13, v17, v16, v38
	v_perm_b32 v14, v19, v18, v37
	v_perm_b32 v15, v19, v18, v38
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_permlanex16_b32 v21, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[1:4], v7, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v0, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v6, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v5
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0x80, v5
	v_permlanex16_b32 v29, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0xa0, v5
	v_permlanex16_b32 v33, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xc0, v5
	v_add_nc_u32_e32 v4, 0xe0, v5
	v_perm_b32 v16, v21, v20, v37
	v_perm_b32 v17, v21, v20, v38
	v_perm_b32 v18, v23, v22, v37
	v_perm_b32 v19, v23, v22, v38
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v20, v25, v24, v37
	v_perm_b32 v21, v25, v24, v38
	v_perm_b32 v22, v27, v26, v37
	v_perm_b32 v23, v27, v26, v38
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_perm_b32 v24, v29, v28, v37
	v_perm_b32 v25, v29, v28, v38
	v_perm_b32 v26, v31, v30, v37
	v_perm_b32 v27, v31, v30, v38
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v28, v33, v32, v37
	v_perm_b32 v29, v33, v32, v38
	v_perm_b32 v30, v39, v34, v37
	v_perm_b32 v31, v39, v34, v38
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v32, v40, v35, v37
	v_perm_b32 v33, v40, v35, v38
	v_perm_b32 v34, v41, v36, v37
	v_perm_b32 v35, v41, v36, v38
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v0, s[20:23], 0 offen
	buffer_store_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v2, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v3, s[20:23], 0 offen
	buffer_store_b128 v[32:35], v4, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 233
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 233
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33928
; TotalNumSgprs: 46
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 233
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
