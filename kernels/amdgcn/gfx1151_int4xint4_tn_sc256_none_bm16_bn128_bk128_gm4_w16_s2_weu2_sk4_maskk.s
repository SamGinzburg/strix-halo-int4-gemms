	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v2, 7, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v0
	s_load_b64 s[40:41], s[0:1], 0x20
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v33, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v34, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v10, 4, v0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
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
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	s_mul_i32 s8, s8, s5
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	s_xor_b32 s4, s4, s8
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
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
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v57, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v101, v0, 4, 1
	v_or_b32_e32 v110, 0x3f0, v0
	v_or_b32_e32 v109, 0x7f0, v0
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
	v_or_b32_e32 v108, 0xbf0, v0
	v_or_b32_e32 v107, 0xff0, v0
	v_or_b32_e32 v106, 0x13f0, v0
	s_cvt_u32_f32 s6, s16
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v105, 0x17f0, v0
	s_mul_hi_u32 s7, s6, s7
	v_or_b32_e32 v104, 0x1bf0, v0
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
	s_mov_b32 s26, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s14, s14, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s15, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s12, 0xff
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s16, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s22, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s16, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s34, s15
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s22, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s22, s18, 8
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s42, s2, 4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s35, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s20, s42, v4
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
	s_mov_b32 s27, s7
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[4:7], v5, s[24:27], 0 offen
	v_or_b32_e32 v103, 0x1ff0, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v100, 62, v9
	v_or_b32_e32 v99, 0x7e, v9
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v111, 0, v33
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v112, 0, v10
	v_add_nc_u32_e32 v102, 0, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s22, -1
	s_mov_b32 s12, 0
	s_mov_b64 s[20:21], s[10:11]
	s_cmpk_lt_i32 s19, 0x200
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v111, v8 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[4:7]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s10, s15, 0x80
	v_sub_nc_u32_e32 v113, s16, v3
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v3, s10, v3
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v5, s42, v34
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v4, 1, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v6, s35, v3
	s_lshl_b32 s0, s13, 8
	v_mul_lo_u32 v5, s22, v5
	v_mul_lo_u32 v3, s34, v3
	s_lshl_b32 s11, s14, 8
	v_subrev_nc_u32_e32 v114, s0, v4
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v4, 1, v101
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v7, 1, v100
	s_lshl_b32 s14, s14, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v115, s0, v4
	v_add3_u32 v2, v6, s14, v2
	v_subrev_nc_u32_e32 v116, s0, v7
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v117, 1, v5
	v_subrev_nc_u32_e32 v118, s0, v2
	v_add3_u32 v119, v3, s42, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v120, 0, v110
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v121, 0, v109
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v122, 0, v108
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v123, 0, v107
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v124, 0, v106
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v125, 0, v105
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v126, 0, v104
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v127, 0, v103
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
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
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_max_i32 s3, s1, 1
	s_lshl_b32 s23, s35, 1
	s_lshl_b32 s43, s35, 7
	s_lshl_b32 s34, s34, 7
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s10, v113
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	s_addk_i32 s10, 0x80
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s3, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v119, s0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v233, 0x80000000, v118, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v119, s34, v119
	v_add_nc_u32_e32 v118, s43, v118
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v128, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:704
	ds_load_u8 v10, v102 offset:8272
	ds_load_u8 v11, v102 offset:8256
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v237, v117, s[28:31], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[233:236], v233, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v117, 2, v117
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:8304
	ds_load_u8 v12, v102 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:8208
	ds_load_u8 v13, v102 offset:8192
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v10, v102 offset:640
	ds_load_u8 v11, v102 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:8240
	ds_load_u8 v14, v102 offset:8224
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v13, 16, v12
	ds_load_u8 v11, v102 offset:896
	ds_load_u8 v12, v102 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:128
	ds_load_u8 v13, v102
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:384
	ds_load_u8 v14, v102 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v102 offset:8400
	ds_load_u8 v13, v102 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:8432
	ds_load_u8 v14, v102 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v102 offset:8336
	ds_load_u8 v15, v102 offset:8320
	v_lshl_or_b32 v32, v13, 16, v12
	ds_load_u8 v12, v102 offset:1664
	ds_load_u8 v13, v102 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:8368
	ds_load_u8 v16, v102 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v15, 16, v14
	ds_load_u8 v13, v102 offset:1920
	ds_load_u8 v14, v102 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v102 offset:1152
	ds_load_u8 v15, v102 offset:1024
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:1408
	ds_load_u8 v16, v102 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v102 offset:8528
	ds_load_u8 v15, v102 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:8560
	ds_load_u8 v16, v102 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v102 offset:8464
	ds_load_u8 v17, v102 offset:8448
	v_lshl_or_b32 v28, v15, 16, v14
	ds_load_u8 v14, v102 offset:2688
	ds_load_u8 v15, v102 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v102 offset:8496
	ds_load_u8 v18, v102 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v17, 16, v16
	ds_load_u8 v15, v102 offset:2944
	ds_load_u8 v16, v102 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v102 offset:2176
	ds_load_u8 v17, v102 offset:2048
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v102 offset:2432
	ds_load_u8 v18, v102 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v17, 16, v16
	ds_load_u8 v16, v102 offset:8656
	ds_load_u8 v17, v102 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v102 offset:8688
	ds_load_u8 v18, v102 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8592
	ds_load_u8 v19, v102 offset:8576
	v_lshl_or_b32 v26, v17, 16, v16
	ds_load_u8 v16, v102 offset:3712
	ds_load_u8 v17, v102 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8624
	ds_load_u8 v20, v102 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v19, 16, v18
	ds_load_u8 v17, v102 offset:3968
	ds_load_u8 v18, v102 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:3200
	ds_load_u8 v19, v102 offset:3072
	v_lshl_or_b32 v130, v17, 16, v16
	ds_load_u8 v16, v102 offset:8784
	ds_load_u8 v17, v102 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:3456
	ds_load_u8 v20, v102 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v19, 16, v18
	ds_load_u8 v17, v102 offset:8816
	ds_load_u8 v18, v102 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8720
	ds_load_u8 v19, v102 offset:8704
	v_lshl_or_b32 v24, v17, 16, v16
	ds_load_u8 v16, v102 offset:4736
	ds_load_u8 v17, v102 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8752
	ds_load_u8 v20, v102 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v19, 16, v18
	ds_load_u8 v17, v102 offset:4992
	ds_load_u8 v18, v102 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:4224
	ds_load_u8 v19, v102 offset:4096
	v_lshl_or_b32 v132, v17, 16, v16
	ds_load_u8 v16, v102 offset:8912
	ds_load_u8 v17, v102 offset:8896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:4480
	ds_load_u8 v20, v102 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v19, 16, v18
	ds_load_u8 v17, v102 offset:8944
	ds_load_u8 v18, v102 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8848
	ds_load_u8 v19, v102 offset:8832
	v_lshl_or_b32 v22, v17, 16, v16
	ds_load_u8 v16, v102 offset:5760
	ds_load_u8 v17, v102 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8880
	ds_load_u8 v20, v102 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v19, 16, v18
	ds_load_u8 v17, v102 offset:6016
	ds_load_u8 v18, v102 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:5248
	ds_load_u8 v19, v102 offset:5120
	v_lshl_or_b32 v134, v17, 16, v16
	ds_load_u8 v16, v102 offset:9040
	ds_load_u8 v17, v102 offset:9024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:5504
	ds_load_u8 v20, v102 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v19, 16, v18
	ds_load_u8 v17, v102 offset:9072
	ds_load_u8 v18, v102 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8976
	ds_load_u8 v19, v102 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:9008
	ds_load_u8 v20, v102 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v16
	ds_load_u8 v16, v102 offset:6784
	ds_load_u8 v17, v102 offset:6656
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v102 offset:7040
	ds_load_u8 v18, v102 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:6272
	ds_load_u8 v135, v102 offset:6144
	v_lshl_or_b32 v145, v17, 16, v16
	ds_load_u8 v16, v102 offset:9104
	ds_load_u8 v17, v102 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v135, v18, 0xc0c0004
	ds_load_u8 v135, v102 offset:6528
	ds_load_u8 v136, v102 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v135, 16, v18
	ds_load_u8 v17, v102 offset:9136
	ds_load_u8 v18, v102 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:9168
	ds_load_u8 v135, v102 offset:9152
	v_lshl_or_b32 v17, v17, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v135, v18, 0xc0c0004
	ds_load_u8 v135, v120 offset:8192
	ds_load_u8 v136, v102 offset:9184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v135, 16, v18
	ds_load_u8 v16, v102 offset:7808
	ds_load_u8 v135, v102 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v135, v16, 0xc0c0004
	ds_load_u8 v135, v102 offset:8064
	ds_load_u8 v136, v102 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:7296
	ds_load_u8 v137, v102 offset:7168
	v_lshl_or_b32 v147, v135, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:7552
	ds_load_u8 v138, v102 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[136:143], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v102 offset:656
	ds_load_u8 v11, v102 offset:528
	v_wmma_i32_16x16x16_iu4 v[136:143], v[12:13], v[31:32], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[14:15], v[27:28], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[129:130], v[25:26], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[131:132], v[23:24], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:912
	ds_load_u8 v12, v102 offset:784
	v_wmma_i32_16x16x16_iu4 v[136:143], v[133:134], v[21:22], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[19:20], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[146:147], v[17:18], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v134, v138
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v133, v139
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:16
	ds_load_u8 v13, v102 offset:144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v131, v141
	v_cvt_f32_i32_e32 v130, v142
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v143
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v231, s11, v114
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v114, s23, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v231, v231, s[36:39], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v102 offset:400
	ds_load_u8 v14, v102 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v102 offset:1680
	ds_load_u8 v13, v102 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:1936
	ds_load_u8 v14, v102 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v102 offset:1168
	ds_load_u8 v15, v102 offset:1040
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:1424
	ds_load_u8 v16, v102 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v102 offset:2704
	ds_load_u8 v15, v102 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:2960
	ds_load_u8 v16, v102 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v102 offset:2192
	ds_load_u8 v137, v102 offset:2064
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v137, v16, 0xc0c0004
	ds_load_u8 v137, v102 offset:2448
	ds_load_u8 v138, v102 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v137, 16, v16
	ds_load_u8 v16, v102 offset:3728
	ds_load_u8 v137, v102 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v137, v16, 0xc0c0004
	ds_load_u8 v137, v102 offset:3984
	ds_load_u8 v138, v102 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:3216
	ds_load_u8 v139, v102 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v138, 0xc0c0004
	ds_load_u8 v138, v102 offset:3472
	ds_load_u8 v140, v102 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v137, v140, 16, v139
	ds_load_u8 v16, v102 offset:4752
	ds_load_u8 v139, v102 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v139, v16, 0xc0c0004
	ds_load_u8 v139, v102 offset:5008
	ds_load_u8 v140, v102 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v102 offset:4240
	ds_load_u8 v141, v102 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v140, 0xc0c0004
	ds_load_u8 v140, v102 offset:4496
	ds_load_u8 v142, v102 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v142, v140, 0xc0c0004
	v_lshl_or_b32 v140, v139, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v139, v142, 16, v141
	ds_load_u8 v16, v102 offset:5776
	ds_load_u8 v141, v102 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v141, v16, 0xc0c0004
	ds_load_u8 v141, v102 offset:6032
	ds_load_u8 v142, v102 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v102 offset:5264
	ds_load_u8 v143, v102 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v143, v142, 0xc0c0004
	ds_load_u8 v142, v102 offset:5520
	ds_load_u8 v144, v102 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v142, 0xc0c0004
	v_lshl_or_b32 v142, v141, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v141, v144, 16, v143
	ds_load_u8 v16, v102 offset:6800
	ds_load_u8 v143, v102 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v143, v16, 0xc0c0004
	ds_load_u8 v143, v102 offset:7056
	ds_load_u8 v144, v102 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:6288
	ds_load_u8 v145, v102 offset:6160
	v_lshl_or_b32 v153, v143, 16, v16
	ds_load_u8 v16, v102 offset:7824
	ds_load_u8 v143, v102 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:6544
	ds_load_u8 v146, v102 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v143, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v145, 16, v144
	ds_load_u8 v143, v102 offset:8080
	ds_load_u8 v144, v102 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:7312
	ds_load_u8 v145, v102 offset:7184
	v_lshl_or_b32 v155, v143, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:7568
	ds_load_u8 v146, v102 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[144:151], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v102 offset:672
	ds_load_u8 v11, v102 offset:544
	v_wmma_i32_16x16x16_iu4 v[144:151], v[12:13], v[31:32], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[14:15], v[27:28], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[137:138], v[25:26], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[139:140], v[23:24], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:928
	ds_load_u8 v12, v102 offset:800
	v_wmma_i32_16x16x16_iu4 v[144:151], v[141:142], v[21:22], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[152:153], v[19:20], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[154:155], v[17:18], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v142, v146
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v141, v147
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:32
	ds_load_u8 v13, v102 offset:160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v148
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v138, v150
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v151
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v102 offset:416
	ds_load_u8 v14, v102 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v102 offset:1696
	ds_load_u8 v13, v102 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:1952
	ds_load_u8 v14, v102 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v102 offset:1184
	ds_load_u8 v15, v102 offset:1056
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:1440
	ds_load_u8 v16, v102 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v102 offset:2720
	ds_load_u8 v15, v102 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:2976
	ds_load_u8 v16, v102 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v102 offset:2208
	ds_load_u8 v145, v102 offset:2080
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v145, v16, 0xc0c0004
	ds_load_u8 v145, v102 offset:2464
	ds_load_u8 v146, v102 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v145, 16, v16
	ds_load_u8 v16, v102 offset:3744
	ds_load_u8 v145, v102 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v145, v16, 0xc0c0004
	ds_load_u8 v145, v102 offset:4000
	ds_load_u8 v146, v102 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:3232
	ds_load_u8 v147, v102 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v147, v146, 0xc0c0004
	ds_load_u8 v146, v102 offset:3488
	ds_load_u8 v148, v102 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v146, 0xc0c0004
	v_lshl_or_b32 v146, v145, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v145, v148, 16, v147
	ds_load_u8 v16, v102 offset:4768
	ds_load_u8 v147, v102 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v147, v16, 0xc0c0004
	ds_load_u8 v147, v102 offset:5024
	ds_load_u8 v148, v102 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v102 offset:4256
	ds_load_u8 v149, v102 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v148, 0xc0c0004
	ds_load_u8 v148, v102 offset:4512
	ds_load_u8 v150, v102 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v148, 0xc0c0004
	v_lshl_or_b32 v148, v147, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v147, v150, 16, v149
	ds_load_u8 v16, v102 offset:5792
	ds_load_u8 v149, v102 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v149, v16, 0xc0c0004
	ds_load_u8 v149, v102 offset:6048
	ds_load_u8 v150, v102 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v102 offset:5280
	ds_load_u8 v151, v102 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v150, 0xc0c0004
	ds_load_u8 v150, v102 offset:5536
	ds_load_u8 v152, v102 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v150, 0xc0c0004
	v_lshl_or_b32 v150, v149, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v149, v152, 16, v151
	ds_load_u8 v16, v102 offset:6816
	ds_load_u8 v151, v102 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v151, v16, 0xc0c0004
	ds_load_u8 v151, v102 offset:7072
	ds_load_u8 v152, v102 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:6304
	ds_load_u8 v153, v102 offset:6176
	v_lshl_or_b32 v161, v151, 16, v16
	ds_load_u8 v16, v102 offset:7840
	ds_load_u8 v151, v102 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:6560
	ds_load_u8 v154, v102 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v151, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v153, 16, v152
	ds_load_u8 v151, v102 offset:8096
	ds_load_u8 v152, v102 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:7328
	ds_load_u8 v153, v102 offset:7200
	v_lshl_or_b32 v163, v151, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:7584
	ds_load_u8 v154, v102 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[152:159], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v102 offset:688
	ds_load_u8 v11, v102 offset:560
	v_wmma_i32_16x16x16_iu4 v[152:159], v[12:13], v[31:32], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[14:15], v[27:28], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[145:146], v[25:26], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[147:148], v[23:24], v[152:159] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:944
	ds_load_u8 v12, v102 offset:816
	v_wmma_i32_16x16x16_iu4 v[152:159], v[149:150], v[21:22], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[160:161], v[19:20], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[162:163], v[17:18], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v151, v153
	v_cvt_f32_i32_e32 v150, v154
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v149, v155
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:48
	ds_load_u8 v13, v102 offset:176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v147, v157
	v_cvt_f32_i32_e32 v146, v158
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v159
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v102 offset:432
	ds_load_u8 v14, v102 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v102 offset:1712
	ds_load_u8 v13, v102 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v102 offset:1968
	ds_load_u8 v14, v102 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v102 offset:1200
	ds_load_u8 v15, v102 offset:1072
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:1456
	ds_load_u8 v16, v102 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v15, 16, v14
	ds_load_u8 v14, v102 offset:2736
	ds_load_u8 v15, v102 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v102 offset:2992
	ds_load_u8 v16, v102 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v102 offset:2224
	ds_load_u8 v153, v102 offset:2096
	v_lshl_or_b32 v15, v15, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v153, v16, 0xc0c0004
	ds_load_u8 v153, v102 offset:2480
	ds_load_u8 v154, v102 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v153, 16, v16
	ds_load_u8 v16, v102 offset:3760
	ds_load_u8 v153, v102 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v153, v16, 0xc0c0004
	ds_load_u8 v153, v102 offset:4016
	ds_load_u8 v154, v102 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:3248
	ds_load_u8 v155, v102 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v155, v154, 0xc0c0004
	ds_load_u8 v154, v102 offset:3504
	ds_load_u8 v156, v102 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v154, 0xc0c0004
	v_lshl_or_b32 v154, v153, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v153, v156, 16, v155
	ds_load_u8 v16, v102 offset:4784
	ds_load_u8 v155, v102 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v155, v16, 0xc0c0004
	ds_load_u8 v155, v102 offset:5040
	ds_load_u8 v156, v102 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v102 offset:4272
	ds_load_u8 v157, v102 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v156, 0xc0c0004
	ds_load_u8 v156, v102 offset:4528
	ds_load_u8 v158, v102 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v158, v156, 0xc0c0004
	v_lshl_or_b32 v156, v155, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v155, v158, 16, v157
	ds_load_u8 v16, v102 offset:5808
	ds_load_u8 v157, v102 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v157, v16, 0xc0c0004
	ds_load_u8 v157, v102 offset:6064
	ds_load_u8 v158, v102 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v102 offset:5296
	ds_load_u8 v159, v102 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v159, v158, 0xc0c0004
	ds_load_u8 v158, v102 offset:5552
	ds_load_u8 v160, v102 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v160, v158, 0xc0c0004
	v_lshl_or_b32 v158, v157, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v157, v160, 16, v159
	ds_load_u8 v16, v102 offset:6832
	ds_load_u8 v159, v102 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v159, v16, 0xc0c0004
	ds_load_u8 v159, v102 offset:7088
	ds_load_u8 v160, v102 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:6320
	ds_load_u8 v161, v102 offset:6192
	v_lshl_or_b32 v169, v159, 16, v16
	ds_load_u8 v16, v102 offset:7856
	ds_load_u8 v159, v102 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:6576
	ds_load_u8 v162, v102 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v159, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v161, 16, v160
	ds_load_u8 v159, v102 offset:8112
	ds_load_u8 v160, v102 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:7344
	ds_load_u8 v161, v102 offset:7216
	v_lshl_or_b32 v171, v159, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:7600
	ds_load_u8 v162, v102 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[160:167], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v102 offset:576
	v_wmma_i32_16x16x16_iu4 v[160:167], v[12:13], v[31:32], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[14:15], v[27:28], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[153:154], v[25:26], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[155:156], v[23:24], v[160:167] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:960
	ds_load_u8 v11, v102 offset:832
	v_wmma_i32_16x16x16_iu4 v[160:167], v[157:158], v[21:22], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[168:169], v[19:20], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[170:171], v[17:18], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v159, v161
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v156, v164
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:192
	ds_load_u8 v12, v102 offset:64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v157, v163
	v_cvt_f32_i32_e32 v154, v166
	v_cvt_f32_i32_e32 v155, v165
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v102 offset:1728
	ds_load_u8 v10, v102 offset:1600
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v167
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:448
	ds_load_u8 v13, v102 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v102 offset:1984
	ds_load_u8 v11, v102 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1216
	ds_load_u8 v12, v102 offset:1088
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v102 offset:2752
	ds_load_u8 v10, v102 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1472
	ds_load_u8 v13, v102 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	ds_load_u8 v10, v102 offset:3008
	ds_load_u8 v11, v102 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:2240
	ds_load_u8 v12, v102 offset:2112
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v102 offset:3776
	ds_load_u8 v10, v102 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:2496
	ds_load_u8 v13, v102 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v102 offset:4032
	ds_load_u8 v11, v102 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:3264
	ds_load_u8 v12, v102 offset:3136
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v102 offset:4800
	ds_load_u8 v10, v102 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:3520
	ds_load_u8 v13, v102 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v102 offset:5056
	ds_load_u8 v11, v102 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:4288
	ds_load_u8 v12, v102 offset:4160
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v102 offset:5824
	ds_load_u8 v10, v102 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:4544
	ds_load_u8 v13, v102 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v102 offset:6080
	ds_load_u8 v11, v102 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:5312
	ds_load_u8 v12, v102 offset:5184
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v102 offset:6848
	ds_load_u8 v10, v102 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:5568
	ds_load_u8 v13, v102 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v102 offset:7104
	ds_load_u8 v11, v102 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:6336
	ds_load_u8 v12, v102 offset:6208
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v102 offset:7872
	ds_load_u8 v10, v102 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:6592
	ds_load_u8 v13, v102 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v102 offset:8128
	ds_load_u8 v11, v102 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:7360
	ds_load_u8 v12, v102 offset:7232
	v_lshl_or_b32 v176, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:7616
	ds_load_u8 v13, v102 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v168, v9
	v_cvt_f32_i32_e32 v167, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:720
	ds_load_u8 v10, v102 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v166, v11
	v_cvt_f32_i32_e32 v165, v12
	v_cvt_f32_i32_e32 v164, v13
	v_cvt_f32_i32_e32 v163, v14
	v_cvt_f32_i32_e32 v162, v15
	v_cvt_f32_i32_e32 v161, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:976
	ds_load_u8 v11, v102 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:208
	ds_load_u8 v12, v102 offset:80
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v102 offset:1744
	ds_load_u8 v10, v102 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:464
	ds_load_u8 v13, v102 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v102 offset:2000
	ds_load_u8 v11, v102 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1232
	ds_load_u8 v12, v102 offset:1104
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v102 offset:2768
	ds_load_u8 v10, v102 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1488
	ds_load_u8 v13, v102 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v102 offset:3024
	ds_load_u8 v11, v102 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:2256
	ds_load_u8 v12, v102 offset:2128
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v102 offset:3792
	ds_load_u8 v10, v102 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:2512
	ds_load_u8 v13, v102 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v102 offset:4048
	ds_load_u8 v11, v102 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:3280
	ds_load_u8 v12, v102 offset:3152
	v_lshl_or_b32 v176, v10, 16, v9
	ds_load_u8 v9, v102 offset:4816
	ds_load_u8 v10, v102 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:3536
	ds_load_u8 v13, v102 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	ds_load_u8 v10, v102 offset:5072
	ds_load_u8 v11, v102 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:4304
	ds_load_u8 v12, v102 offset:4176
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v102 offset:5840
	ds_load_u8 v10, v102 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:4560
	ds_load_u8 v13, v102 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v102 offset:6096
	ds_load_u8 v11, v102 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:5328
	ds_load_u8 v12, v102 offset:5200
	v_lshl_or_b32 v180, v10, 16, v9
	ds_load_u8 v9, v102 offset:6864
	ds_load_u8 v10, v102 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:5584
	ds_load_u8 v13, v102 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	ds_load_u8 v10, v102 offset:7120
	ds_load_u8 v11, v102 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:6352
	ds_load_u8 v12, v102 offset:6224
	v_lshl_or_b32 v182, v10, 16, v9
	ds_load_u8 v9, v102 offset:7888
	ds_load_u8 v10, v102 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:6608
	ds_load_u8 v13, v102 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	ds_load_u8 v10, v102 offset:8144
	ds_load_u8 v11, v102 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:7376
	ds_load_u8 v12, v102 offset:7248
	v_lshl_or_b32 v184, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:7632
	ds_load_u8 v13, v102 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v176, v9
	v_cvt_f32_i32_e32 v175, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:736
	ds_load_u8 v10, v102 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v174, v11
	v_cvt_f32_i32_e32 v173, v12
	v_cvt_f32_i32_e32 v172, v13
	v_cvt_f32_i32_e32 v171, v14
	v_cvt_f32_i32_e32 v170, v15
	v_cvt_f32_i32_e32 v169, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:992
	ds_load_u8 v11, v102 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:224
	ds_load_u8 v12, v102 offset:96
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v102 offset:1760
	ds_load_u8 v10, v102 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:480
	ds_load_u8 v13, v102 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v102 offset:2016
	ds_load_u8 v11, v102 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1248
	ds_load_u8 v12, v102 offset:1120
	v_lshl_or_b32 v180, v10, 16, v9
	ds_load_u8 v9, v102 offset:2784
	ds_load_u8 v10, v102 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1504
	ds_load_u8 v13, v102 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	ds_load_u8 v10, v102 offset:3040
	ds_load_u8 v11, v102 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:2272
	ds_load_u8 v12, v102 offset:2144
	v_lshl_or_b32 v182, v10, 16, v9
	ds_load_u8 v9, v102 offset:3808
	ds_load_u8 v10, v102 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:2528
	ds_load_u8 v13, v102 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	ds_load_u8 v10, v102 offset:4064
	ds_load_u8 v11, v102 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:3296
	ds_load_u8 v12, v102 offset:3168
	v_lshl_or_b32 v184, v10, 16, v9
	ds_load_u8 v9, v102 offset:4832
	ds_load_u8 v10, v102 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:3552
	ds_load_u8 v13, v102 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v12, 16, v11
	ds_load_u8 v10, v102 offset:5088
	ds_load_u8 v11, v102 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:4320
	ds_load_u8 v12, v102 offset:4192
	v_lshl_or_b32 v186, v10, 16, v9
	ds_load_u8 v9, v102 offset:5856
	ds_load_u8 v10, v102 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:4576
	ds_load_u8 v13, v102 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v12, 16, v11
	ds_load_u8 v10, v102 offset:6112
	ds_load_u8 v11, v102 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:5344
	ds_load_u8 v12, v102 offset:5216
	v_lshl_or_b32 v188, v10, 16, v9
	ds_load_u8 v9, v102 offset:6880
	ds_load_u8 v10, v102 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:5600
	ds_load_u8 v13, v102 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v12, 16, v11
	ds_load_u8 v10, v102 offset:7136
	ds_load_u8 v11, v102 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:6368
	ds_load_u8 v12, v102 offset:6240
	v_lshl_or_b32 v190, v10, 16, v9
	ds_load_u8 v9, v102 offset:7904
	ds_load_u8 v10, v102 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:6624
	ds_load_u8 v13, v102 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v12, 16, v11
	ds_load_u8 v10, v102 offset:8160
	ds_load_u8 v11, v102 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:7392
	ds_load_u8 v12, v102 offset:7264
	v_lshl_or_b32 v192, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:7648
	ds_load_u8 v13, v102 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[187:188], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v184, v9
	v_cvt_f32_i32_e32 v183, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:240
	ds_load_u8 v10, v102 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v182, v11
	v_cvt_f32_i32_e32 v181, v12
	v_cvt_f32_i32_e32 v180, v13
	v_cvt_f32_i32_e32 v179, v14
	v_cvt_f32_i32_e32 v178, v15
	v_cvt_f32_i32_e32 v177, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:496
	ds_load_u8 v11, v102 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:752
	ds_load_u8 v12, v102 offset:624
	v_lshl_or_b32 v185, v10, 16, v9
	ds_load_u8 v9, v102 offset:1264
	ds_load_u8 v10, v102 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v120
	ds_load_u8 v13, v102 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v12, 16, v11
	ds_load_u8 v10, v102 offset:1520
	ds_load_u8 v11, v102 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1776
	ds_load_u8 v12, v102 offset:1648
	v_lshl_or_b32 v187, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v121
	ds_load_u8 v13, v102 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v102 offset:2288
	ds_load_u8 v30, v102 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[187:188], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v102 offset:2544
	ds_load_u8 v31, v102 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v102 offset:2800
	ds_load_u8 v32, v102 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v122
	ds_load_u8 v185, v102 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v185, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v27, v102 offset:3312
	ds_load_u8 v28, v102 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v102 offset:3568
	ds_load_u8 v29, v102 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v102 offset:3824
	ds_load_u8 v30, v102 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v123
	ds_load_u8 v31, v102 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v102 offset:4336
	ds_load_u8 v26, v102 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:4592
	ds_load_u8 v27, v102 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v102 offset:4848
	ds_load_u8 v28, v102 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v124
	ds_load_u8 v29, v102 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v23, v102 offset:5360
	ds_load_u8 v24, v102 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v102 offset:5616
	ds_load_u8 v25, v102 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v102 offset:5872
	ds_load_u8 v26, v102 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v125
	ds_load_u8 v27, v102 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v102 offset:6384
	ds_load_u8 v22, v102 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v102 offset:6640
	ds_load_u8 v23, v102 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v102 offset:6896
	ds_load_u8 v24, v102 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v126
	ds_load_u8 v25, v102 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v19, v102 offset:7408
	ds_load_u8 v20, v102 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:7664
	ds_load_u8 v21, v102 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v102 offset:7920
	ds_load_u8 v22, v102 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v127
	ds_load_u8 v23, v102 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, s11, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v20, v9
	v_cvt_f32_i32_e32 v19, v10
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v32, v13, s[36:39], 0 offen
	v_add_nc_u32_e32 v13, s11, v115
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v232, v13, s[36:39], 0 offen
	buffer_load_u16 v230, v13, s[36:39], 0 offen offset:4
	buffer_load_u16 v229, v13, s[36:39], 0 offen offset:8
	buffer_load_u16 v228, v13, s[36:39], 0 offen offset:12
	buffer_load_u16 v227, v13, s[36:39], 0 offen offset:16
	buffer_load_u16 v226, v13, s[36:39], 0 offen offset:20
	buffer_load_u16 v225, v13, s[36:39], 0 offen offset:24
	buffer_load_u16 v224, v13, s[36:39], 0 offen offset:28
	buffer_load_u16 v223, v13, s[36:39], 0 offen offset:32
	buffer_load_u16 v222, v13, s[36:39], 0 offen offset:36
	buffer_load_u16 v221, v13, s[36:39], 0 offen offset:40
	buffer_load_u16 v220, v13, s[36:39], 0 offen offset:44
	buffer_load_u16 v219, v13, s[36:39], 0 offen offset:48
	buffer_load_u16 v218, v13, s[36:39], 0 offen offset:52
	buffer_load_u16 v217, v13, s[36:39], 0 offen offset:56
	buffer_load_u16 v216, v13, s[36:39], 0 offen offset:60
	buffer_load_u16 v215, v13, s[36:39], 0 offen offset:64
	buffer_load_u16 v214, v13, s[36:39], 0 offen offset:68
	buffer_load_u16 v213, v13, s[36:39], 0 offen offset:72
	buffer_load_u16 v212, v13, s[36:39], 0 offen offset:76
	buffer_load_u16 v211, v13, s[36:39], 0 offen offset:80
	buffer_load_u16 v210, v13, s[36:39], 0 offen offset:84
	buffer_load_u16 v209, v13, s[36:39], 0 offen offset:88
	buffer_load_u16 v208, v13, s[36:39], 0 offen offset:92
	buffer_load_u16 v207, v13, s[36:39], 0 offen offset:96
	buffer_load_u16 v206, v13, s[36:39], 0 offen offset:100
	buffer_load_u16 v205, v13, s[36:39], 0 offen offset:104
	buffer_load_u16 v204, v13, s[36:39], 0 offen offset:108
	buffer_load_u16 v203, v13, s[36:39], 0 offen offset:112
	buffer_load_u16 v202, v13, s[36:39], 0 offen offset:116
	buffer_load_u16 v201, v13, s[36:39], 0 offen offset:120
	buffer_load_u16 v200, v13, s[36:39], 0 offen offset:128
	s_clause 0x1d
	buffer_load_u16 v199, v13, s[36:39], 0 offen offset:132
	buffer_load_u16 v198, v13, s[36:39], 0 offen offset:136
	buffer_load_u16 v197, v13, s[36:39], 0 offen offset:140
	buffer_load_u16 v196, v13, s[36:39], 0 offen offset:144
	buffer_load_u16 v195, v13, s[36:39], 0 offen offset:148
	buffer_load_u16 v194, v13, s[36:39], 0 offen offset:152
	buffer_load_u16 v193, v13, s[36:39], 0 offen offset:156
	buffer_load_u16 v192, v13, s[36:39], 0 offen offset:160
	buffer_load_u16 v191, v13, s[36:39], 0 offen offset:164
	buffer_load_u16 v190, v13, s[36:39], 0 offen offset:168
	buffer_load_u16 v189, v13, s[36:39], 0 offen offset:172
	buffer_load_u16 v188, v13, s[36:39], 0 offen offset:176
	buffer_load_u16 v187, v13, s[36:39], 0 offen offset:180
	buffer_load_u16 v186, v13, s[36:39], 0 offen offset:184
	buffer_load_u16 v185, v13, s[36:39], 0 offen offset:188
	buffer_load_u16 v31, v13, s[36:39], 0 offen offset:192
	buffer_load_u16 v30, v13, s[36:39], 0 offen offset:196
	buffer_load_u16 v29, v13, s[36:39], 0 offen offset:200
	buffer_load_u16 v28, v13, s[36:39], 0 offen offset:204
	buffer_load_u16 v27, v13, s[36:39], 0 offen offset:208
	buffer_load_u16 v26, v13, s[36:39], 0 offen offset:212
	buffer_load_u16 v25, v13, s[36:39], 0 offen offset:216
	buffer_load_u16 v24, v13, s[36:39], 0 offen offset:220
	buffer_load_u16 v23, v13, s[36:39], 0 offen offset:224
	buffer_load_u16 v22, v13, s[36:39], 0 offen offset:228
	buffer_load_u16 v21, v13, s[36:39], 0 offen offset:232
	buffer_load_u16 v16, v13, s[36:39], 0 offen offset:236
	buffer_load_u16 v15, v13, s[36:39], 0 offen offset:240
	buffer_load_u16 v14, v13, s[36:39], 0 offen offset:244
	buffer_load_u16 v13, v13, s[36:39], 0 offen offset:248
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v112, v[233:236]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b16 v111, v128 offset:8192
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v233, 16, v237
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v116, s23, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v136, v136, v233 :: v_dual_add_nc_u32 v115, s23, v115
	v_mul_f32_e32 v135, v135, v233
	v_mul_f32_e32 v134, v134, v233
	s_waitcnt vmcnt(61)
	v_dual_mul_f32 v133, v133, v233 :: v_dual_lshlrev_b32 v232, 16, v232
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(60)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, v136, v232 :: v_dual_lshlrev_b32 v136, 16, v230
	s_waitcnt vmcnt(59)
	v_dual_fmac_f32 v98, v135, v136 :: v_dual_lshlrev_b32 v135, 16, v229
	s_waitcnt vmcnt(58)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v134, v135 :: v_dual_lshlrev_b32 v134, 16, v228
	s_waitcnt vmcnt(57)
	v_dual_fmac_f32 v96, v133, v134 :: v_dual_lshlrev_b32 v133, 16, v227
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v132, v132, v233
	v_mul_f32_e32 v129, v129, v233
	v_mul_f32_e32 v130, v130, v233
	v_mul_f32_e32 v20, v20, v233
	v_mul_f32_e32 v19, v19, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(56)
	v_dual_fmac_f32 v95, v132, v133 :: v_dual_lshlrev_b32 v132, 16, v226
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v18, v233
	v_mul_f32_e32 v17, v17, v233
	v_mul_f32_e32 v12, v12, v233
	v_mul_f32_e32 v11, v11, v233
	v_mul_f32_e32 v9, v9, v233
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v10, v10, v233 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v131, v131, v233 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v94, v131, v132 :: v_dual_lshlrev_b32 v15, 16, v15
	v_dual_fmac_f32 v42, v20, v23 :: v_dual_lshlrev_b32 v131, 16, v225
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v20, 16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v12, v15
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v93, v130, v131 :: v_dual_lshlrev_b32 v12, 16, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v130, 16, v224
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v19, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v11, v12
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v92, v129, v130 :: v_dual_lshlrev_b32 v11, 16, v13
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v144, v233 :: v_dual_lshlrev_b32 v129, 16, v223
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v40, v18, v19 :: v_dual_lshlrev_b32 v29, 16, v29
	v_dual_fmac_f32 v36, v10, v11 :: v_dual_fmac_f32 v39, v17, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v143, v233 :: v_dual_lshlrev_b32 v129, 16, v222
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v90, v130, v129
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v142, v233 :: v_dual_fmac_f32 v35, v9, v10
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v89, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v141, v233 :: v_dual_lshlrev_b32 v129, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v88, v130, v129 :: v_dual_lshlrev_b32 v129, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v140, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v87, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v139, v233 :: v_dual_lshlrev_b32 v129, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v86, v130, v129
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v217
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v138, v233
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v85, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v137, v233 :: v_dual_lshlrev_b32 v129, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v84, v130, v129 :: v_dual_lshlrev_b32 v129, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v152, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v83, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v151, v233 :: v_dual_lshlrev_b32 v129, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v82, v130, v129
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v213
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v150, v233
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v81, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v149, v233 :: v_dual_lshlrev_b32 v129, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v80, v130, v129 :: v_dual_lshlrev_b32 v129, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v148, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v79, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v147, v233 :: v_dual_lshlrev_b32 v129, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v78, v130, v129
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v146, v233
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v77, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v145, v233 :: v_dual_lshlrev_b32 v129, 16, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v76, v130, v129 :: v_dual_lshlrev_b32 v129, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v160, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v159, v233 :: v_dual_lshlrev_b32 v129, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v130, v129
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v205
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v158, v233
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v157, v233 :: v_dual_lshlrev_b32 v129, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v72, v130, v129 :: v_dual_lshlrev_b32 v129, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v156, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v130, v155, v233 :: v_dual_lshlrev_b32 v129, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v130, v129
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v129, 16, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v154, v233
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v130, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v153, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v168, v233 :: v_dual_lshlrev_b32 v32, 16, v200
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v199
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v167, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v66, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v166, v233 :: v_dual_lshlrev_b32 v32, 16, v198
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v65, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v197
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v165, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v164, v233 :: v_dual_lshlrev_b32 v32, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v195
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v163, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v62, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v162, v233 :: v_dual_lshlrev_b32 v32, 16, v194
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v61, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v193
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v161, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v176, v233 :: v_dual_lshlrev_b32 v32, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v191
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v175, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v129, v32 :: v_dual_mul_f32 v129, v174, v233
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v32, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v129, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v32, 16, v189
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v173, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v129, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v172, v233 :: v_dual_lshlrev_b32 v32, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v54, v129, v32 :: v_dual_mul_f32 v129, v171, v233
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v32, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v53, v129, v32 :: v_dual_lshlrev_b32 v32, 16, v186
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v170, v233
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v129, v32
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v32, 16, v185
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v129, v169, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v129, v32 :: v_dual_mul_f32 v32, v184, v233
	v_dual_fmac_f32 v50, v32, v31 :: v_dual_mul_f32 v31, v183, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v31, v30 :: v_dual_mul_f32 v30, v182, v233
	v_fmac_f32_e32 v48, v30, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v181, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v29, v28 :: v_dual_mul_f32 v28, v180, v233
	v_dual_fmac_f32 v46, v28, v27 :: v_dual_mul_f32 v27, v179, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v45, v27, v26 :: v_dual_mul_f32 v26, v178, v233
	v_fmac_f32_e32 v44, v26, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v177, v233
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v43, v25, v24
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
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
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v102 offset:8272
	ds_load_u8 v2, v102 offset:8256
	ds_load_u8 v3, v102 offset:8304
	ds_load_u8 v4, v102 offset:8288
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	v_add_nc_u32_e32 v110, 0, v110
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v109, 0, v109
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v102 offset:8208
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v102 offset:8192
	v_lshl_or_b32 v30, v3, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v102 offset:8240
	ds_load_u8 v5, v102 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v4, 16, v2
	ds_load_u8 v1, v102 offset:640
	ds_load_u8 v2, v102 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v102 offset:896
	ds_load_u8 v3, v102 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v102 offset:128
	ds_load_u8 v4, v102
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v102 offset:8400
	ds_load_u8 v2, v102 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v102 offset:384
	ds_load_u8 v5, v102 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v4, 16, v3
	ds_load_u8 v2, v102 offset:8432
	ds_load_u8 v3, v102 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v102 offset:8336
	ds_load_u8 v4, v102 offset:8320
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v102 offset:1664
	ds_load_u8 v2, v102 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v102 offset:8368
	ds_load_u8 v5, v102 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v4, 16, v3
	ds_load_u8 v2, v102 offset:1920
	ds_load_u8 v3, v102 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v102 offset:1152
	ds_load_u8 v4, v102 offset:1024
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v102 offset:1408
	ds_load_u8 v5, v102 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:8528
	ds_load_u8 v18, v102 offset:8512
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8560
	ds_load_u8 v19, v102 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8464
	ds_load_u8 v20, v102 offset:8448
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v102 offset:2688
	ds_load_u8 v18, v102 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:8496
	ds_load_u8 v21, v102 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v18, v102 offset:2944
	ds_load_u8 v19, v102 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:2176
	ds_load_u8 v20, v102 offset:2048
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:2432
	ds_load_u8 v21, v102 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:8656
	ds_load_u8 v18, v102 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8688
	ds_load_u8 v19, v102 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8592
	ds_load_u8 v20, v102 offset:8576
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v102 offset:3712
	ds_load_u8 v18, v102 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:8624
	ds_load_u8 v21, v102 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	ds_load_u8 v18, v102 offset:3968
	ds_load_u8 v19, v102 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:3200
	ds_load_u8 v20, v102 offset:3072
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:3456
	ds_load_u8 v21, v102 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:8784
	ds_load_u8 v18, v102 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8816
	ds_load_u8 v19, v102 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8720
	ds_load_u8 v20, v102 offset:8704
	v_lshl_or_b32 v24, v18, 16, v17
	ds_load_u8 v17, v102 offset:4736
	ds_load_u8 v18, v102 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:8752
	ds_load_u8 v21, v102 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	ds_load_u8 v18, v102 offset:4992
	ds_load_u8 v19, v102 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:4224
	ds_load_u8 v20, v102 offset:4096
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:4480
	ds_load_u8 v21, v102 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:8912
	ds_load_u8 v18, v102 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:8944
	ds_load_u8 v19, v102 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8848
	ds_load_u8 v20, v102 offset:8832
	v_lshl_or_b32 v22, v18, 16, v17
	ds_load_u8 v17, v102 offset:5760
	ds_load_u8 v18, v102 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:8880
	ds_load_u8 v21, v102 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	ds_load_u8 v18, v102 offset:6016
	ds_load_u8 v19, v102 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:5248
	ds_load_u8 v20, v102 offset:5120
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:5504
	ds_load_u8 v111, v102 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v111, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:9040
	ds_load_u8 v18, v102 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:9072
	ds_load_u8 v19, v102 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v102 offset:8976
	ds_load_u8 v20, v102 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:9008
	ds_load_u8 v111, v102 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v20, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v102 offset:6784
	ds_load_u8 v18, v102 offset:6656
	v_lshl_or_b32 v19, v111, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:7040
	ds_load_u8 v111, v102 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v111, v18, 0xc0c0004
	ds_load_u8 v111, v102 offset:6272
	ds_load_u8 v112, v102 offset:6144
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v102 offset:6528
	ds_load_u8 v113, v102 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v112, 16, v111
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v102 offset:9104
	ds_load_u8 v18, v102 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:9136
	ds_load_u8 v111, v102 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v111, v18, 0xc0c0004
	ds_load_u8 v111, v102 offset:9168
	ds_load_u8 v112, v102 offset:9152
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v102 offset:9184
	ds_load_u8 v113, v110 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v112, 16, v111
	ds_load_u8 v111, v102 offset:7808
	ds_load_u8 v112, v102 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v102 offset:8064
	ds_load_u8 v113, v102 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v102 offset:7296
	ds_load_u8 v114, v102 offset:7168
	v_lshl_or_b32 v112, v112, 16, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v102 offset:7552
	ds_load_u8 v115, v102 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v114, 16, v113
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v111, v9
	v_cvt_f32_i32_e32 v112, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:656
	ds_load_u8 v10, v102 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v11
	v_cvt_f32_i32_e32 v114, v12
	v_cvt_f32_i32_e32 v115, v13
	v_cvt_f32_i32_e32 v116, v14
	v_cvt_f32_i32_e32 v117, v15
	v_cvt_f32_i32_e32 v118, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:912
	ds_load_u8 v11, v102 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:16
	ds_load_u8 v12, v102 offset:144
	v_lshl_or_b32 v120, v10, 16, v9
	ds_load_u8 v9, v102 offset:1680
	ds_load_u8 v10, v102 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v102 offset:400
	ds_load_u8 v13, v102 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	ds_load_u8 v10, v102 offset:1936
	ds_load_u8 v11, v102 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1168
	ds_load_u8 v12, v102 offset:1040
	v_lshl_or_b32 v122, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1424
	ds_load_u8 v13, v102 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:2704
	ds_load_u8 v120, v102 offset:2576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:2960
	ds_load_u8 v121, v102 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:2192
	ds_load_u8 v122, v102 offset:2064
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:2448
	ds_load_u8 v123, v102 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:3728
	ds_load_u8 v120, v102 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:3984
	ds_load_u8 v121, v102 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:3216
	ds_load_u8 v122, v102 offset:3088
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:3472
	ds_load_u8 v123, v102 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:4752
	ds_load_u8 v120, v102 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:5008
	ds_load_u8 v121, v102 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:4240
	ds_load_u8 v122, v102 offset:4112
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:4496
	ds_load_u8 v123, v102 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:5776
	ds_load_u8 v120, v102 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:6032
	ds_load_u8 v121, v102 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:5264
	ds_load_u8 v122, v102 offset:5136
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:5520
	ds_load_u8 v123, v102 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:6800
	ds_load_u8 v120, v102 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:7056
	ds_load_u8 v121, v102 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:6288
	ds_load_u8 v122, v102 offset:6160
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:6544
	ds_load_u8 v123, v102 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v119, v102 offset:7824
	ds_load_u8 v120, v102 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v102 offset:8080
	ds_load_u8 v121, v102 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v102 offset:7312
	ds_load_u8 v122, v102 offset:7184
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v102 offset:7568
	ds_load_u8 v123, v102 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v9
	v_cvt_f32_i32_e32 v120, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:672
	ds_load_u8 v10, v102 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v11
	v_cvt_f32_i32_e32 v122, v12
	v_cvt_f32_i32_e32 v123, v13
	v_cvt_f32_i32_e32 v124, v14
	v_cvt_f32_i32_e32 v125, v15
	v_cvt_f32_i32_e32 v126, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:928
	ds_load_u8 v11, v102 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:32
	ds_load_u8 v12, v102 offset:160
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v102 offset:1696
	ds_load_u8 v10, v102 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v102 offset:416
	ds_load_u8 v13, v102 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v102 offset:1952
	ds_load_u8 v11, v102 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1184
	ds_load_u8 v12, v102 offset:1056
	v_lshl_or_b32 v130, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1440
	ds_load_u8 v13, v102 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:2720
	ds_load_u8 v128, v102 offset:2592
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:2976
	ds_load_u8 v129, v102 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:2208
	ds_load_u8 v130, v102 offset:2080
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:2464
	ds_load_u8 v131, v102 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:3744
	ds_load_u8 v128, v102 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:4000
	ds_load_u8 v129, v102 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:3232
	ds_load_u8 v130, v102 offset:3104
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:3488
	ds_load_u8 v131, v102 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:4768
	ds_load_u8 v128, v102 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:5024
	ds_load_u8 v129, v102 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:4256
	ds_load_u8 v130, v102 offset:4128
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:4512
	ds_load_u8 v131, v102 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:5792
	ds_load_u8 v128, v102 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:6048
	ds_load_u8 v129, v102 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:5280
	ds_load_u8 v130, v102 offset:5152
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:5536
	ds_load_u8 v131, v102 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:6816
	ds_load_u8 v128, v102 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:7072
	ds_load_u8 v129, v102 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:6304
	ds_load_u8 v130, v102 offset:6176
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:6560
	ds_load_u8 v131, v102 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v127, v102 offset:7840
	ds_load_u8 v128, v102 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v102 offset:8096
	ds_load_u8 v129, v102 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v102 offset:7328
	ds_load_u8 v130, v102 offset:7200
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v102 offset:7584
	ds_load_u8 v131, v102 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v127, v9
	v_cvt_f32_i32_e32 v128, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:688
	ds_load_u8 v10, v102 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v11
	v_cvt_f32_i32_e32 v130, v12
	v_cvt_f32_i32_e32 v131, v13
	v_cvt_f32_i32_e32 v132, v14
	v_cvt_f32_i32_e32 v133, v15
	v_cvt_f32_i32_e32 v134, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:944
	ds_load_u8 v11, v102 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:48
	ds_load_u8 v12, v102 offset:176
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v102 offset:1712
	ds_load_u8 v10, v102 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v102 offset:432
	ds_load_u8 v13, v102 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v102 offset:1968
	ds_load_u8 v11, v102 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1200
	ds_load_u8 v12, v102 offset:1072
	v_lshl_or_b32 v138, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1456
	ds_load_u8 v13, v102 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:2736
	ds_load_u8 v136, v102 offset:2608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:2992
	ds_load_u8 v137, v102 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:2224
	ds_load_u8 v138, v102 offset:2096
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:2480
	ds_load_u8 v139, v102 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:3760
	ds_load_u8 v136, v102 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:4016
	ds_load_u8 v137, v102 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:3248
	ds_load_u8 v138, v102 offset:3120
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:3504
	ds_load_u8 v139, v102 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:4784
	ds_load_u8 v136, v102 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:5040
	ds_load_u8 v137, v102 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:4272
	ds_load_u8 v138, v102 offset:4144
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:4528
	ds_load_u8 v139, v102 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:5808
	ds_load_u8 v136, v102 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:6064
	ds_load_u8 v137, v102 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:5296
	ds_load_u8 v138, v102 offset:5168
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:5552
	ds_load_u8 v139, v102 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:6832
	ds_load_u8 v136, v102 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:7088
	ds_load_u8 v137, v102 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:6320
	ds_load_u8 v138, v102 offset:6192
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:6576
	ds_load_u8 v139, v102 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v135, v102 offset:7856
	ds_load_u8 v136, v102 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v102 offset:8112
	ds_load_u8 v137, v102 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v102 offset:7344
	ds_load_u8 v138, v102 offset:7216
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v102 offset:7600
	ds_load_u8 v139, v102 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v9
	v_cvt_f32_i32_e32 v136, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:704
	ds_load_u8 v10, v102 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v11
	v_cvt_f32_i32_e32 v138, v12
	v_cvt_f32_i32_e32 v139, v13
	v_cvt_f32_i32_e32 v140, v14
	v_cvt_f32_i32_e32 v141, v15
	v_cvt_f32_i32_e32 v142, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:960
	ds_load_u8 v11, v102 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:192
	ds_load_u8 v12, v102 offset:64
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v102 offset:1728
	ds_load_u8 v10, v102 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:448
	ds_load_u8 v13, v102 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v102 offset:1984
	ds_load_u8 v11, v102 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1216
	ds_load_u8 v12, v102 offset:1088
	v_lshl_or_b32 v146, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1472
	ds_load_u8 v13, v102 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:2752
	ds_load_u8 v144, v102 offset:2624
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:3008
	ds_load_u8 v145, v102 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:2240
	ds_load_u8 v146, v102 offset:2112
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:2496
	ds_load_u8 v147, v102 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:3776
	ds_load_u8 v144, v102 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:4032
	ds_load_u8 v145, v102 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:3264
	ds_load_u8 v146, v102 offset:3136
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:3520
	ds_load_u8 v147, v102 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:4800
	ds_load_u8 v144, v102 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:5056
	ds_load_u8 v145, v102 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:4288
	ds_load_u8 v146, v102 offset:4160
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:4544
	ds_load_u8 v147, v102 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:5824
	ds_load_u8 v144, v102 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:6080
	ds_load_u8 v145, v102 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:5312
	ds_load_u8 v146, v102 offset:5184
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:5568
	ds_load_u8 v147, v102 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:6848
	ds_load_u8 v144, v102 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:7104
	ds_load_u8 v145, v102 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:6336
	ds_load_u8 v146, v102 offset:6208
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:6592
	ds_load_u8 v147, v102 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v143, v102 offset:7872
	ds_load_u8 v144, v102 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v102 offset:8128
	ds_load_u8 v145, v102 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v102 offset:7360
	ds_load_u8 v146, v102 offset:7232
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v102 offset:7616
	ds_load_u8 v147, v102 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v9
	v_cvt_f32_i32_e32 v144, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:720
	ds_load_u8 v10, v102 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v11
	v_cvt_f32_i32_e32 v146, v12
	v_cvt_f32_i32_e32 v147, v13
	v_cvt_f32_i32_e32 v148, v14
	v_cvt_f32_i32_e32 v149, v15
	v_cvt_f32_i32_e32 v150, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:976
	ds_load_u8 v11, v102 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:208
	ds_load_u8 v12, v102 offset:80
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v102 offset:1744
	ds_load_u8 v10, v102 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:464
	ds_load_u8 v13, v102 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v102 offset:2000
	ds_load_u8 v11, v102 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1232
	ds_load_u8 v12, v102 offset:1104
	v_lshl_or_b32 v154, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1488
	ds_load_u8 v13, v102 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:2768
	ds_load_u8 v152, v102 offset:2640
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:3024
	ds_load_u8 v153, v102 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:2256
	ds_load_u8 v154, v102 offset:2128
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:2512
	ds_load_u8 v155, v102 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:3792
	ds_load_u8 v152, v102 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:4048
	ds_load_u8 v153, v102 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:3280
	ds_load_u8 v154, v102 offset:3152
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:3536
	ds_load_u8 v155, v102 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:4816
	ds_load_u8 v152, v102 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:5072
	ds_load_u8 v153, v102 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:4304
	ds_load_u8 v154, v102 offset:4176
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:4560
	ds_load_u8 v155, v102 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:5840
	ds_load_u8 v152, v102 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:6096
	ds_load_u8 v153, v102 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:5328
	ds_load_u8 v154, v102 offset:5200
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:5584
	ds_load_u8 v155, v102 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:6864
	ds_load_u8 v152, v102 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:7120
	ds_load_u8 v153, v102 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:6352
	ds_load_u8 v154, v102 offset:6224
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:6608
	ds_load_u8 v155, v102 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v151, v102 offset:7888
	ds_load_u8 v152, v102 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v102 offset:8144
	ds_load_u8 v153, v102 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v102 offset:7376
	ds_load_u8 v154, v102 offset:7248
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v102 offset:7632
	ds_load_u8 v155, v102 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v151, v9
	v_cvt_f32_i32_e32 v152, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v102 offset:736
	ds_load_u8 v10, v102 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v11
	v_cvt_f32_i32_e32 v154, v12
	v_cvt_f32_i32_e32 v155, v13
	v_cvt_f32_i32_e32 v156, v14
	v_cvt_f32_i32_e32 v157, v15
	v_cvt_f32_i32_e32 v158, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:992
	ds_load_u8 v11, v102 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:224
	ds_load_u8 v12, v102 offset:96
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v102 offset:1760
	ds_load_u8 v10, v102 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:480
	ds_load_u8 v13, v102 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v102 offset:2016
	ds_load_u8 v11, v102 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v102 offset:1248
	ds_load_u8 v12, v102 offset:1120
	v_lshl_or_b32 v162, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v102 offset:1504
	ds_load_u8 v13, v102 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:2784
	ds_load_u8 v160, v102 offset:2656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:3040
	ds_load_u8 v161, v102 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:2272
	ds_load_u8 v162, v102 offset:2144
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:2528
	ds_load_u8 v163, v102 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:3808
	ds_load_u8 v160, v102 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:4064
	ds_load_u8 v161, v102 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:3296
	ds_load_u8 v162, v102 offset:3168
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:3552
	ds_load_u8 v163, v102 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:4832
	ds_load_u8 v160, v102 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:5088
	ds_load_u8 v161, v102 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:4320
	ds_load_u8 v162, v102 offset:4192
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:4576
	ds_load_u8 v163, v102 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:5856
	ds_load_u8 v160, v102 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:6112
	ds_load_u8 v161, v102 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:5344
	ds_load_u8 v162, v102 offset:5216
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:5600
	ds_load_u8 v163, v102 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:6880
	ds_load_u8 v160, v102 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:7136
	ds_load_u8 v161, v102 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:6368
	ds_load_u8 v162, v102 offset:6240
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:6624
	ds_load_u8 v163, v102 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:7904
	ds_load_u8 v160, v102 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:8160
	ds_load_u8 v161, v102 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:7392
	ds_load_u8 v162, v102 offset:7264
	v_lshl_or_b32 v160, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v102 offset:7648
	ds_load_u8 v163, v102 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v159, v102 offset:240
	ds_load_u8 v160, v102 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v102 offset:496
	ds_load_u8 v161, v102 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v102 offset:752
	ds_load_u8 v162, v102 offset:624
	v_lshl_or_b32 v159, v160, 16, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v110, v110
	ds_load_u8 v162, v102 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v162, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v110, 16, v161
	v_wmma_i32_16x16x16_iu4 v[1:8], v[159:160], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v102 offset:1264
	ds_load_u8 v30, v102 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v102 offset:1520
	ds_load_u8 v110, v102 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v110, v30, 0xc0c0004
	ds_load_u8 v110, v102 offset:1776
	ds_load_u8 v159, v102 offset:1648
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v159, v110, 0xc0c0004
	ds_load_u8 v109, v109
	ds_load_u8 v159, v102 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v159, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v109, 16, v110
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v102 offset:2288
	ds_load_u8 v30, v102 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v102 offset:2544
	ds_load_u8 v31, v102 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v102 offset:2800
	ds_load_u8 v32, v102 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, 0, v108
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v32, v32
	ds_load_u8 v108, v102 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v108, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v102 offset:3312
	ds_load_u8 v28, v102 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v102 offset:3568
	ds_load_u8 v29, v102 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v102 offset:3824
	ds_load_u8 v30, v102 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v30, v30
	ds_load_u8 v31, v102 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v102 offset:4336
	ds_load_u8 v26, v102 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:4592
	ds_load_u8 v27, v102 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v102 offset:4848
	ds_load_u8 v28, v102 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v28, 0, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v28, v28
	ds_load_u8 v29, v102 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v102 offset:5360
	ds_load_u8 v24, v102 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v102 offset:5616
	ds_load_u8 v25, v102 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v102 offset:5872
	ds_load_u8 v26, v102 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v26, 0, v105
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v26, v26
	ds_load_u8 v27, v102 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v102 offset:6384
	ds_load_u8 v22, v102 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v102 offset:6640
	ds_load_u8 v23, v102 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v102 offset:6896
	ds_load_u8 v24, v102 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v24, 0, v104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v24, v24
	ds_load_u8 v25, v102 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v19, v102 offset:7408
	ds_load_u8 v20, v102 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v102 offset:7664
	ds_load_u8 v21, v102 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v102 offset:7920
	ds_load_u8 v22, v102 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v22, 0, v103
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v23, v102 offset:8048
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[17:18], v[1:8] neg_lo:[1,1,0]
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
	v_mul_i32_i24_e32 v17, s22, v34
	s_mul_i32 s0, s42, s22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s9, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s11, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v17, s0, v17, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s21, s21, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v18, s0, v101, 1
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v100, s0, v100, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v18, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_add_lshl_u32 v99, s0, v99, 1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v197, 7, v0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s42, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s0, s33
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, 32, v18
	v_add_nc_u32_e32 v103, 64, v18
	v_add_nc_u32_e32 v166, 0x80, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v149, v149, v17 :: v_dual_add_nc_u32 v174, 0xa0, v18
	v_dual_mul_f32 v112, v112, v17 :: v_dual_add_nc_u32 v19, 4, v18
	v_dual_mul_f32 v119, v119, v17 :: v_dual_add_nc_u32 v28, 36, v18
	v_dual_mul_f32 v127, v127, v17 :: v_dual_add_nc_u32 v104, 0x44, v18
	v_dual_mul_f32 v134, v134, v17 :: v_dual_add_nc_u32 v159, 0x60, v18
	v_dual_mul_f32 v142, v142, v17 :: v_dual_add_nc_u32 v167, 0x84, v18
	v_dual_mul_f32 v150, v150, v17 :: v_dual_add_nc_u32 v175, 0xa4, v18
	v_dual_mul_f32 v111, v111, v17 :: v_dual_add_nc_u32 v20, 8, v18
	v_dual_mul_f32 v120, v120, v17 :: v_dual_add_nc_u32 v29, 40, v18
	v_dual_mul_f32 v128, v128, v17 :: v_dual_add_nc_u32 v105, 0x48, v18
	v_dual_mul_f32 v135, v135, v17 :: v_dual_add_nc_u32 v160, 0x64, v18
	v_dual_mul_f32 v143, v143, v17 :: v_dual_add_nc_u32 v168, 0x88, v18
	v_dual_mul_f32 v151, v151, v17 :: v_dual_add_nc_u32 v176, 0xa8, v18
	v_dual_mul_f32 v113, v113, v17 :: v_dual_add_nc_u32 v22, 12, v18
	v_dual_mul_f32 v121, v121, v17 :: v_dual_add_nc_u32 v30, 44, v18
	v_dual_mul_f32 v129, v129, v17 :: v_dual_add_nc_u32 v106, 0x4c, v18
	v_dual_mul_f32 v136, v136, v17 :: v_dual_add_nc_u32 v161, 0x68, v18
	v_dual_mul_f32 v144, v144, v17 :: v_dual_add_nc_u32 v169, 0x8c, v18
	v_dual_mul_f32 v152, v152, v17 :: v_dual_add_nc_u32 v177, 0xac, v18
	v_dual_mul_f32 v114, v114, v17 :: v_dual_add_nc_u32 v23, 16, v18
	v_dual_mul_f32 v115, v115, v17 :: v_dual_add_nc_u32 v24, 20, v18
	v_dual_mul_f32 v116, v116, v17 :: v_dual_add_nc_u32 v25, 24, v18
	v_dual_mul_f32 v117, v117, v17 :: v_dual_add_nc_u32 v26, 28, v18
	v_dual_mul_f32 v122, v122, v17 :: v_dual_add_nc_u32 v31, 48, v18
	v_dual_mul_f32 v123, v123, v17 :: v_dual_add_nc_u32 v32, 52, v18
	v_dual_mul_f32 v124, v124, v17 :: v_dual_add_nc_u32 v101, 56, v18
	v_dual_mul_f32 v125, v125, v17 :: v_dual_add_nc_u32 v102, 60, v18
	v_dual_mul_f32 v130, v130, v17 :: v_dual_add_nc_u32 v107, 0x50, v18
	v_dual_mul_f32 v131, v131, v17 :: v_dual_add_nc_u32 v108, 0x54, v18
	v_dual_mul_f32 v132, v132, v17 :: v_dual_add_nc_u32 v109, 0x58, v18
	v_dual_mul_f32 v133, v133, v17 :: v_dual_add_nc_u32 v110, 0x5c, v18
	v_dual_mul_f32 v137, v137, v17 :: v_dual_add_nc_u32 v162, 0x6c, v18
	v_dual_mul_f32 v145, v145, v17 :: v_dual_add_nc_u32 v170, 0x90, v18
	v_dual_mul_f32 v146, v146, v17 :: v_dual_add_nc_u32 v171, 0x94, v18
	v_dual_mul_f32 v147, v147, v17 :: v_dual_add_nc_u32 v172, 0x98, v18
	v_dual_mul_f32 v148, v148, v17 :: v_dual_add_nc_u32 v173, 0x9c, v18
	v_dual_mul_f32 v153, v153, v17 :: v_dual_add_nc_u32 v178, 0xb0, v18
	v_dual_mul_f32 v154, v154, v17 :: v_dual_add_nc_u32 v179, 0xb4, v18
	v_dual_mul_f32 v155, v155, v17 :: v_dual_add_nc_u32 v180, 0xb8, v18
	v_dual_mul_f32 v156, v156, v17 :: v_dual_add_nc_u32 v181, 0xbc, v18
	v_dual_mul_f32 v138, v138, v17 :: v_dual_add_nc_u32 v163, 0x70, v18
	v_dual_mul_f32 v139, v139, v17 :: v_dual_add_nc_u32 v164, 0x74, v18
	v_dual_mul_f32 v140, v140, v17 :: v_dual_add_nc_u32 v165, 0x78, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v157, v157, v17 :: v_dual_add_nc_u32 v182, 0xc0, v18
	v_mul_f32_e32 v118, v118, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v126, v126, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v141, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v158, v158, v17 :: v_dual_add_nc_u32 v183, 0xc4, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v9, v17 :: v_dual_add_nc_u32 v184, 0xc8, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v17 :: v_dual_add_nc_u32 v185, 0xcc, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v17 :: v_dual_add_nc_u32 v186, 0xd0, v18
	v_dual_mul_f32 v12, v12, v17 :: v_dual_add_nc_u32 v187, 0xd4, v18
	v_dual_mul_f32 v13, v13, v17 :: v_dual_add_nc_u32 v188, 0xd8, v18
	v_dual_mul_f32 v14, v14, v17 :: v_dual_add_nc_u32 v189, 0xdc, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x17
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v101, v101, s[20:23], 0 offen
	buffer_load_u16 v102, v102, s[20:23], 0 offen
	buffer_load_u16 v103, v103, s[20:23], 0 offen
	buffer_load_u16 v104, v104, s[20:23], 0 offen
	buffer_load_u16 v105, v105, s[20:23], 0 offen
	buffer_load_u16 v106, v106, s[20:23], 0 offen
	buffer_load_u16 v107, v107, s[20:23], 0 offen
	buffer_load_u16 v108, v108, s[20:23], 0 offen
	buffer_load_u16 v109, v109, s[20:23], 0 offen
	buffer_load_u16 v110, v110, s[20:23], 0 offen
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	s_clause 0xf
	buffer_load_u16 v166, v166, s[20:23], 0 offen
	buffer_load_u16 v167, v167, s[20:23], 0 offen
	buffer_load_u16 v168, v168, s[20:23], 0 offen
	buffer_load_u16 v169, v169, s[20:23], 0 offen
	buffer_load_u16 v170, v170, s[20:23], 0 offen
	buffer_load_u16 v171, v171, s[20:23], 0 offen
	buffer_load_u16 v172, v172, s[20:23], 0 offen
	buffer_load_u16 v173, v173, s[20:23], 0 offen
	buffer_load_u16 v174, v174, s[20:23], 0 offen
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	buffer_load_u16 v176, v176, s[20:23], 0 offen
	buffer_load_u16 v177, v177, s[20:23], 0 offen
	buffer_load_u16 v178, v178, s[20:23], 0 offen
	buffer_load_u16 v179, v179, s[20:23], 0 offen
	buffer_load_u16 v180, v180, s[20:23], 0 offen
	buffer_load_u16 v181, v181, s[20:23], 0 offen
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	s_clause 0x7
	buffer_load_u16 v159, v159, s[20:23], 0 offen
	buffer_load_u16 v160, v160, s[20:23], 0 offen
	buffer_load_u16 v161, v161, s[20:23], 0 offen
	buffer_load_u16 v162, v162, s[20:23], 0 offen
	buffer_load_u16 v163, v163, s[20:23], 0 offen
	buffer_load_u16 v164, v164, s[20:23], 0 offen
	buffer_load_u16 v165, v165, s[20:23], 0 offen
	buffer_load_u16 v100, v100, s[20:23], 0 offen
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	s_clause 0x7
	buffer_load_u16 v182, v182, s[20:23], 0 offen
	buffer_load_u16 v183, v183, s[20:23], 0 offen
	buffer_load_u16 v184, v184, s[20:23], 0 offen
	buffer_load_u16 v185, v185, s[20:23], 0 offen
	buffer_load_u16 v186, v186, s[20:23], 0 offen
	buffer_load_u16 v187, v187, s[20:23], 0 offen
	buffer_load_u16 v188, v188, s[20:23], 0 offen
	buffer_load_u16 v189, v189, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v15, v15, v17 :: v_dual_add_nc_u32 v190, 0xe0, v18
	v_dual_mul_f32 v16, v16, v17 :: v_dual_add_nc_u32 v191, 0xe4, v18
	v_dual_mul_f32 v1, v1, v17 :: v_dual_add_nc_u32 v192, 0xe8, v18
	v_dual_mul_f32 v2, v2, v17 :: v_dual_add_nc_u32 v193, 0xec, v18
	v_dual_mul_f32 v3, v3, v17 :: v_dual_add_nc_u32 v194, 0xf0, v18
	v_dual_mul_f32 v4, v4, v17 :: v_dual_add_nc_u32 v195, 0xf4, v18
	v_dual_mul_f32 v5, v5, v17 :: v_dual_add_nc_u32 v18, 0xf8, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_clause 0x7
	buffer_load_u16 v190, v190, s[20:23], 0 offen
	buffer_load_u16 v191, v191, s[20:23], 0 offen
	buffer_load_u16 v192, v192, s[20:23], 0 offen
	buffer_load_u16 v193, v193, s[20:23], 0 offen
	buffer_load_u16 v194, v194, s[20:23], 0 offen
	buffer_load_u16 v195, v195, s[20:23], 0 offen
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	buffer_load_u16 v99, v99, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v17 :: v_dual_and_b32 v196, 0x7f, v0
	v_mul_f32_e32 v6, v6, v17
	v_mul_f32_e32 v8, v8, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v17, 16, v19
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v19, 16, v20
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v20, 16, v22
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v24, 16, v25
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v25, 16, v26
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v27, 16, v28
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v28, 16, v29
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v29, 16, v30
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v30, 16, v31
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v31, 16, v32
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v32, 16, v101
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v101, 16, v102
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v102, 16, v103
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v103, 16, v104
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v104, 16, v105
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v105, 16, v106
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v106, 16, v107
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v107, 16, v108
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v108, 16, v109
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v109, 16, v110
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v110, 16, v159
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v159, 16, v160
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v160, 16, v161
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v161, 16, v162
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v162, 16, v163
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v163, 16, v164
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v164, 16, v165
	v_lshlrev_b32_e32 v165, 16, v166
	v_lshlrev_b32_e32 v166, 16, v167
	v_lshlrev_b32_e32 v167, 16, v168
	v_lshlrev_b32_e32 v168, 16, v169
	v_lshlrev_b32_e32 v169, 16, v170
	v_lshlrev_b32_e32 v170, 16, v171
	v_lshlrev_b32_e32 v171, 16, v172
	v_lshlrev_b32_e32 v172, 16, v173
	v_lshlrev_b32_e32 v173, 16, v174
	v_lshlrev_b32_e32 v174, 16, v175
	v_lshlrev_b32_e32 v175, 16, v176
	v_lshlrev_b32_e32 v176, 16, v177
	v_lshlrev_b32_e32 v177, 16, v178
	v_lshlrev_b32_e32 v178, 16, v179
	v_lshlrev_b32_e32 v179, 16, v180
	v_lshlrev_b32_e32 v180, 16, v181
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v181, 16, v182
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v182, 16, v183
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v183, 16, v184
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v184, 16, v185
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v185, 16, v186
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v186, 16, v187
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v187, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v183, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v111, v21, v57
	v_fma_f32 v15, v15, v187, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v48, v11, s2
	v_lshlrev_b32_e32 v48, 2, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v102, v127, v102, v83
	v_fma_f32 v7, v7, v18, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v44, v15, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v117, v24, v93
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v44, 0x7c, v48
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v117, v143, v165, v67
	v_fma_f32 v9, v9, v181, v50
	v_fma_f32 v17, v112, v17, v98
	v_fma_f32 v25, v118, v25, v92
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v34, v34, 9, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v103, v128, v103, v82
	v_fma_f32 v118, v144, v166, v66
	v_fma_f32 v10, v10, v182, v49
	v_fma_f32 v8, v8, v99, v35
	v_fma_f32 v19, v113, v19, v97
	v_fma_f32 v104, v129, v104, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v57, v21, s2
	v_cndmask_b32_e64 v57, v83, v102, s2
	v_cndmask_b32_e64 v7, v36, v7, s2
	v_add_nc_u32_e32 v36, 0, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v119, v26, v91
	v_fma_f32 v119, v145, v167, v65
	v_fma_f32 v20, v114, v20, v96
	v_fma_f32 v27, v120, v27, v90
	v_fma_f32 v105, v130, v105, v80
	v_fma_f32 v120, v146, v168, v64
	v_fma_f32 v12, v12, v184, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v117, s2
	v_cndmask_b32_e64 v9, v50, v9, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v115, v22, v95
	v_fma_f32 v106, v131, v106, v79
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v98, v17, s2
	v_cndmask_b32_e64 v82, v82, v103, s2
	v_cndmask_b32_e64 v66, v66, v118, s2
	v_cndmask_b32_e64 v10, v49, v10, s2
	v_cndmask_b32_e64 v8, v35, v8, s2
	v_xad_u32 v35, v34, 4, 0
	v_cndmask_b32_e64 v19, v97, v19, s2
	v_cndmask_b32_e64 v81, v81, v104, s2
	ds_store_2addr_b32 v36, v18, v57 offset1:32
	v_xad_u32 v18, v34, 8, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v188, 16, v189
	v_lshlrev_b32_e32 v189, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v121, v28, v89
	v_fma_f32 v29, v122, v29, v88
	v_fma_f32 v121, v147, v169, v63
	v_fma_f32 v122, v148, v170, v62
	v_fma_f32 v13, v13, v185, v46
	v_fma_f32 v14, v14, v186, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v119, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v116, v23, v94
	v_fma_f32 v107, v132, v107, v78
	v_fma_f32 v108, v133, v108, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v96, v20, s2
	v_cndmask_b32_e64 v80, v80, v105, s2
	v_cndmask_b32_e64 v64, v64, v120, s2
	v_cndmask_b32_e64 v12, v47, v12, s2
	ds_store_2addr_b32 v36, v67, v9 offset0:64 offset1:96
	ds_store_2addr_b32 v35, v17, v82 offset1:32
	v_xad_u32 v9, v34, 12, 0
	v_cndmask_b32_e64 v21, v95, v22, s2
	v_cndmask_b32_e64 v79, v79, v106, s2
	ds_store_2addr_b32 v35, v66, v10 offset0:64 offset1:96
	ds_store_2addr_b32 v18, v19, v81 offset1:32
	v_xad_u32 v10, v34, 16, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v123, v30, v87
	v_fma_f32 v32, v125, v32, v85
	v_fma_f32 v123, v149, v171, v61
	v_fma_f32 v125, v151, v173, v59
	v_fma_f32 v1, v1, v189, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v121, s2
	v_cndmask_b32_e64 v62, v62, v122, s2
	v_cndmask_b32_e64 v13, v46, v13, s2
	v_cndmask_b32_e64 v14, v45, v14, s2
	ds_store_2addr_b32 v18, v65, v11 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v20, v80 offset1:32
	v_xad_u32 v11, v34, 20, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v134, v109, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v94, v23, s2
	v_cndmask_b32_e64 v23, v93, v24, s2
	v_cndmask_b32_e64 v78, v78, v107, s2
	v_cndmask_b32_e64 v77, v77, v108, s2
	ds_store_2addr_b32 v9, v64, v12 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v21, v79 offset1:32
	v_xad_u32 v9, v34, 24, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v124, v31, v86
	v_fma_f32 v124, v150, v172, v60
	v_fma_f32 v16, v16, v188, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v190, 16, v191
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v123, s2
	v_cndmask_b32_e64 v59, v59, v125, s2
	v_cndmask_b32_e64 v1, v42, v1, s2
	ds_store_2addr_b32 v10, v63, v13 offset0:64 offset1:96
	ds_store_2addr_b32 v11, v22, v78 offset1:32
	ds_store_2addr_b32 v11, v62, v14 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v23, v77 offset1:32
	v_xad_u32 v11, v34, 32, 0
	v_cndmask_b32_e64 v24, v92, v25, s2
	v_cndmask_b32_e64 v76, v76, v109, s2
	v_xad_u32 v10, v34, 28, 0
	v_cndmask_b32_e64 v60, v60, v124, s2
	v_cndmask_b32_e64 v16, v43, v16, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v191, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v135, v110, v75
	v_fma_f32 v111, v136, v159, v74
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v192, 16, v193
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v101, v126, v101, v84
	v_fma_f32 v126, v152, v174, v58
	v_fma_f32 v2, v2, v190, v41
	v_fma_f32 v112, v137, v160, v73
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v9, v61, v15 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v24, v76 offset1:32
	ds_store_2addr_b32 v10, v60, v16 offset0:64 offset1:96
	ds_store_2addr_b32 v11, v59, v1 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v197
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v193, 16, v194
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v113, v138, v161, v72
	v_fma_f32 v127, v153, v175, v56
	v_fma_f32 v3, v3, v191, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v91, v26, s2
	v_cndmask_b32_e64 v26, v90, v27, s2
	v_cndmask_b32_e64 v75, v75, v110, s2
	v_cndmask_b32_e64 v74, v74, v111, s2
	v_xad_u32 v9, v34, 36, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v154, v176, v55
	v_fma_f32 v4, v4, v192, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v126, s2
	v_cndmask_b32_e64 v2, v41, v2, s2
	v_cndmask_b32_e64 v27, v89, v28, s2
	v_cndmask_b32_e64 v73, v73, v112, s2
	v_xad_u32 v10, v34, 40, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v139, v162, v71
	v_fma_f32 v129, v155, v177, v54
	v_fma_f32 v5, v5, v193, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v88, v29, s2
	v_cndmask_b32_e64 v72, v72, v113, s2
	v_cndmask_b32_e64 v56, v56, v127, s2
	v_cndmask_b32_e64 v3, v40, v3, s2
	ds_store_2addr_b32 v11, v25, v75 offset1:32
	ds_store_2addr_b32 v9, v26, v74 offset1:32
	ds_store_2addr_b32 v9, v58, v2 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v27, v73 offset1:32
	v_xad_u32 v2, v34, 44, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v196, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v140, v163, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v128, s2
	v_cndmask_b32_e64 v4, v39, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v194, 16, v195
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v87, v30, s2
	v_cndmask_b32_e64 v71, v71, v114, s2
	v_cndmask_b32_e64 v54, v54, v129, s2
	v_cndmask_b32_e64 v5, v38, v5, s2
	ds_store_2addr_b32 v10, v56, v3 offset0:64 offset1:96
	v_xad_u32 v3, v34, 48, 0
	ds_store_2addr_b32 v2, v28, v72 offset1:32
	ds_store_2addr_b32 v2, v55, v4 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v86, v31, s2
	v_cndmask_b32_e64 v70, v70, v115, s2
	v_xad_u32 v4, v34, 52, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v156, v178, v53
	v_fma_f32 v6, v6, v194, v37
	v_fma_f32 v116, v141, v164, v69
	v_fma_f32 v131, v157, v179, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v3, v29, v71 offset1:32
	ds_store_2addr_b32 v3, v54, v5 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v30, v70 offset1:32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v100, v142, v100, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v130, s2
	v_cndmask_b32_e64 v6, v37, v6, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v158, v180, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v85, v32, s2
	v_cndmask_b32_e64 v69, v69, v116, s2
	v_xad_u32 v9, v34, 56, 0
	v_cndmask_b32_e64 v52, v52, v131, s2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s40, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v84, v101, s2
	v_cndmask_b32_e64 v68, v68, v100, s2
	ds_store_2addr_b32 v4, v53, v6 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v31, v69 offset1:32
	ds_store_2addr_b32 v9, v52, v7 offset0:64 offset1:96
	v_xad_u32 v4, v34, 60, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v132, s2
	ds_store_2addr_b32 v4, v32, v68 offset1:32
	ds_store_2addr_b32 v4, v51, v8 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v6, 60, v33
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v4, 5, v4
	v_and_or_b32 v6, 0x780, v48, v6
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_vgpr, 238
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31044
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.kd
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
