	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[62:63], s[0:1], 0x5c
	v_mov_b32_e32 v98, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 63, v98
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s63, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_mov_b32 s6, 0
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s18, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s63, s18, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s63, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s4
	s_addc_u32 s9, s9, s5
	s_load_b64 s[26:27], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s10, s4
	s_addc_u32 s9, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[60:61], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s62, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s26, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s27, 0, s2
	v_add_nc_u32_e32 v26, s26, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[60:61], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s26, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow777
	s_load_b128 s[28:31], s[0:1], 0x40
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v99, 15, v98
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v102, 0xf0, v98
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v71, 0x80, v98
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v202, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v225, 0
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v175, 0
	v_mov_b32_e32 v177, 0
	v_mov_b32_e32 v193, 0
	v_mov_b32_e32 v197, 0
	v_mov_b32_e32 v201, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s64, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s65, s[0:1], 0x58
	s_load_b32 s66, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s26, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s27, 0, s0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v182, 0, v99
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s2, s4
	s_addc_u32 s1, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[6:7]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[60:61], v[6:7]
	v_lshrrev_b32_e32 v6, 1, v98
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[60:61], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[60:61], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[4:5]
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v2, s26, v99
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s3, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s3, s65
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v184, v182, v6
	v_dual_mov_b32 v203, 0 :: v_dual_lshlrev_b32 v6, 5, v98
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s62, s16
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s67, s3, s16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s3, s4, 1
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v5, 48, v2
	s_or_b32 s3, s3, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	v_dual_mov_b32 v199, 0 :: v_dual_lshlrev_b32 v10, 2, v102
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v6, 32, v6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s33, s3
	s_lshl_b32 s3, s18, 8
	s_mul_i32 s4, s4, s33
	v_add3_u32 v11, s5, s3, v98
	s_lshl_b32 s4, s4, 1
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v3, 16, v2
	v_mul_lo_u32 v5, s62, v5
	v_add3_u32 v6, 0, v10, v6
	v_add3_u32 v10, s4, s3, v98
	s_lshl_b32 s4, s7, 8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v22, 7, v71
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v11, s4, v11
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, 32, v2
	v_mul_lo_u32 v3, s62, v3
	v_mul_lo_u32 v2, s62, v2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v15, 6, v98
	v_dual_mov_b32 v197, 0 :: v_dual_lshlrev_b32 v48, 1, v11
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v11, 1, v5
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v5, 1, v22
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s65, s16
	v_dual_mov_b32 v202, 0 :: v_dual_lshlrev_b32 v13, 1, v3
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v14, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v2, s5, 1, v5
	v_or_b32_e32 v3, 24, v15
	v_or_b32_e32 v5, 20, v15
	v_mul_lo_u32 v4, s62, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v0, 1, v98
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[29:30], null, s66, v3, v[1:2]
	v_or_b32_e32 v3, 16, v15
	v_mad_u64_u32 v[30:31], null, s66, v5, v[1:2]
	v_dual_mov_b32 v177, 0 :: v_dual_lshlrev_b32 v12, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[31:32], null, s66, v3, v[1:2]
	v_or_b32_e32 v3, 8, v15
	v_mul_lo_u32 v4, s33, v2
	v_dual_mov_b32 v194, 0 :: v_dual_and_b32 v17, 0xfe, v0
	v_mov_b32_e32 v68, 0
	v_mad_u64_u32 v[32:33], null, s66, v3, v[1:2]
	v_add_nc_u32_e32 v3, 57, v2
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v5, 61, v2
	s_add_i32 s5, s3, s33
	v_or_b32_e32 v16, 4, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, s33, v3
	v_add3_u32 v4, s5, v4, v17
	v_mul_lo_u32 v5, s33, v5
	v_mad_u64_u32 v[27:28], null, s66, v15, v[1:2]
	v_mov_b32_e32 v176, 0
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v196, 0
	v_add3_u32 v3, v3, s3, v17
	v_mov_b32_e32 v225, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v178, 0
	v_mov_b32_e32 v192, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v3, s4, v3
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v0, 28, v0
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v20, 49, v2
	v_add_nc_u32_e32 v3, 1, v3
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v15, off offset:332
	scratch_store_b32 off, v22, off offset:328
	scratch_store_b64 off, v[26:27], off offset:320
	v_mad_u64_u32 v[15:16], null, s66, v16, v[1:2]
	v_add_nc_u32_e32 v1, 1, v4
	v_add3_u32 v4, v5, s3, v17
	v_or_b32_e32 v16, 30, v22
	v_add_nc_u32_e32 v5, 53, v2
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v0, v6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mul_lo_u32 v16, s33, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v5, s33, v5
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v21, 37, v2
	v_mov_b32_e32 v94, 0
	v_add_nc_u32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:340
	scratch_store_b32 off, v0, off offset:484
	v_mul_lo_u32 v1, s33, v22
	v_lshlrev_b32_e32 v16, 1, v16
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v223, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v179, s63, 8, v17
	v_or_b32_e32 v7, 0x300, v98
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[60:61], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[34:35], v[8:9]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_lshlrev_b32_e32 v1, 1, v1
	v_or_b32_e32 v8, 0x700, v98
	v_or_b32_e32 v9, 0x3f0, v98
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v23, 0, v98
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 28, v22
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, 0
	v_or_b32_e32 v18, 0x7f0, v98
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v19, 1, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v1, s33, v1
	v_subrev_nc_u32_e32 v10, s4, v10
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v227, v23, v98
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v229, 0, v19
	v_mov_b32_e32 v126, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	v_add3_u32 v4, v5, s3, v17
	v_mul_lo_u32 v5, s33, v20
	v_add_nc_u32_e32 v20, 45, v2
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v124, 0
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mul_lo_u32 v20, s33, v20
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v92, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:352
	scratch_store_b32 off, v99, off offset:492
	v_or_b32_e32 v16, 26, v22
	v_or_b32_e32 v4, 24, v22
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v118, 0
	v_mul_lo_u32 v1, s33, v16
	v_or_b32_e32 v16, 22, v22
	v_mul_lo_u32 v4, s33, v4
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_mov_b32_e32 v93, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v16, s33, v16
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v122, 0
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:356 ; 4-byte Folded Spill
	v_add3_u32 v3, v5, s3, v17
	v_add3_u32 v5, v20, s3, v17
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v20, 41, v2
	v_mov_b32_e32 v84, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v3, s4, v3
	v_subrev_nc_u32_e32 v5, s4, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v20, s33, v20
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v120, 0
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v21
	v_or_b32_e32 v21, 16, v22
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v76, 0
	v_add3_u32 v1, v1, s3, v17
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mov_b32_e32 v136, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:372
	scratch_store_b32 off, v102, off offset:496
	v_lshlrev_b32_e32 v3, 1, v4
	v_lshlrev_b32_e32 v4, 1, v16
	v_or_b32_e32 v16, 18, v22
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v108, 0
	scratch_store_b32 off, v3, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v16, s33, v16
	v_add_nc_u32_e32 v3, 1, v5
	v_or_b32_e32 v5, 20, v22
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v106, 0
	v_lshlrev_b32_e32 v16, 1, v16
	scratch_store_b32 off, v4, off offset:384 ; 4-byte Folded Spill
	v_add3_u32 v4, v20, s3, v17
	v_mul_lo_u32 v5, s33, v5
	v_add_nc_u32_e32 v20, 29, v2
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v82, 0
	v_subrev_nc_u32_e32 v4, s4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v20, s33, v20
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v74, 0
	v_add_nc_u32_e32 v4, 1, v4
	scratch_store_b32 off, v3, off offset:380 ; 4-byte Folded Spill
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v3, 33, v2
	v_mov_b32_e32 v137, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s33, v3
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v101, 0
	v_add3_u32 v3, v3, s3, v17
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v115, 0
	v_subrev_nc_u32_e32 v1, s4, v3
	v_mul_lo_u32 v3, s33, v21
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v77, 0
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v4, 1, v5
	v_add_nc_u32_e32 v5, 25, v2
	v_lshlrev_b32_e32 v3, 1, v3
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v156, 0
	scratch_store_b32 off, v4, off offset:392 ; 4-byte Folded Spill
	v_mul_lo_u32 v5, s33, v5
	v_add3_u32 v4, v20, s3, v17
	v_or_b32_e32 v20, 10, v22
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v249, 0
	v_mov_b32_e32 v107, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v133, 0
	v_add3_u32 v5, v5, s3, v17
	v_mov_b32_e32 v109, 0
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v4, 1, v4
	scratch_store_b32 off, v16, off offset:400 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v5, s4, v5
	v_or_b32_e32 v16, 14, v22
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v81, 0
	v_add_nc_u32_e32 v5, 1, v5
	scratch_store_b32 off, v3, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 12, v22
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v79, 0
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s36, 0
	s_and_b32 s9, s9, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v3, s33, v3
	v_mov_b32_e32 v148, 0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	s_add_u32 s68, s67, s33
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s33, v16
	v_add_nc_u32_e32 v16, 17, v2
	v_mov_b32_e32 v252, 0
	s_and_b32 s57, s15, 0xffff
	v_mov_b32_e32 v150, 0
	s_lshl_b32 s69, s33, 2
	v_mul_lo_u32 v16, s33, v16
	s_lshl_b32 s70, s66, 5
	v_lshlrev_b32_e32 v4, 1, v4
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, 21, v2
	s_lshl_b32 s71, s33, 6
	s_mov_b32 s37, s36
	v_mov_b32_e32 v254, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v1, s33, v1
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v144, 0
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	v_add3_u32 v1, v1, s3, v17
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v140, 0
	s_mov_b32 s43, s36
	s_mov_b32 s44, s8
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mov_b32_e32 v142, 0
	s_mov_b32 s45, s9
	s_mov_b32 s48, s10
	s_mov_b32 s49, s11
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:416
	scratch_store_b32 off, v71, off offset:500
	v_mul_lo_u32 v4, s33, v20
	v_add_nc_u32_e32 v20, 13, v2
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 9, v2
	v_add_nc_u32_e32 v2, 5, v2
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v100, 0
	s_mov_b32 s50, s46
	v_mul_lo_u32 v1, s33, v1
	v_lshlrev_b32_e32 v4, 1, v4
	v_mul_lo_u32 v2, s33, v2
	scratch_store_b32 off, v5, off offset:420 ; 4-byte Folded Spill
	v_mul_lo_u32 v5, s33, v20
	v_or_b32_e32 v20, 2, v22
	s_mov_b32 s51, s47
	s_mov_b32 s52, s12
	v_add3_u32 v1, v1, s3, v17
	s_mov_b32 s53, s13
	v_add3_u32 v2, v2, s3, v17
	s_mov_b32 s54, s46
	v_add3_u32 v5, v5, s3, v17
	v_subrev_nc_u32_e32 v1, s4, v1
	s_mov_b32 s55, s47
	v_subrev_nc_u32_e32 v2, s4, v2
	s_mov_b32 s56, s14
	v_subrev_nc_u32_e32 v5, s4, v5
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:424 ; 4-byte Folded Spill
	v_add3_u32 v3, v16, s3, v17
	v_or_b32_e32 v16, 4, v22
	v_mul_lo_u32 v17, s33, v20
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	s_mov_b32 s58, s46
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mul_lo_u32 v16, s33, v16
	s_mov_b32 s59, s47
	s_mov_b32 s72, s36
	s_mov_b32 s73, s36
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 8, v22
	v_lshlrev_b32_e32 v1, 1, v16
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_or_b32_e32 v4, 6, v22
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v2
	v_mul_lo_u32 v4, s33, v4
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v17
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 1, v5
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v4
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:448
	scratch_store_b32 off, v1, off offset:472
	v_add_nc_u32_e32 v1, 0, v9
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:480
	scratch_store_b32 off, v98, off offset:488
	scratch_store_b32 off, v23, off offset:336
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	v_mov_b32_e32 v158, v131
	s_clause 0x1f                           ; 152-byte Folded Spill
	scratch_store_b64 off, v[15:16], off offset:256
	scratch_store_b64 off, v[32:33], off offset:248
	scratch_store_b64 off, v[31:32], off offset:240
	scratch_store_b64 off, v[30:31], off offset:232
	scratch_store_b64 off, v[29:30], off
	scratch_store_b64 off, v[27:28], off offset:224
	scratch_store_b32 off, v48, off offset:220
	scratch_store_b32 off, v211, off offset:216
	scratch_store_b32 off, v67, off offset:212
	scratch_store_b32 off, v68, off offset:208
	scratch_store_b32 off, v210, off offset:204
	scratch_store_b32 off, v209, off offset:200
	scratch_store_b32 off, v208, off offset:196
	scratch_store_b32 off, v207, off offset:192
	scratch_store_b32 off, v206, off offset:188
	scratch_store_b32 off, v205, off offset:184
	scratch_store_b32 off, v70, off offset:180
	scratch_store_b32 off, v204, off offset:176
	scratch_store_b32 off, v203, off offset:172
	scratch_store_b32 off, v202, off offset:168
	scratch_store_b32 off, v201, off offset:164
	scratch_store_b32 off, v200, off offset:160
	scratch_store_b32 off, v199, off offset:156
	scratch_store_b32 off, v198, off offset:152
	scratch_store_b32 off, v197, off offset:148
	scratch_store_b32 off, v196, off offset:144
	scratch_store_b32 off, v195, off offset:140
	scratch_store_b32 off, v194, off offset:136
	scratch_store_b32 off, v193, off offset:132
	scratch_store_b32 off, v192, off offset:128
	scratch_store_b32 off, v69, off offset:124
	scratch_store_b32 off, v82, off offset:120
	s_clause 0x1b                           ; 112-byte Folded Spill
	scratch_store_b32 off, v121, off offset:116
	scratch_store_b32 off, v101, off offset:112
	scratch_store_b32 off, v100, off offset:108
	scratch_store_b32 off, v92, off offset:104
	scratch_store_b32 off, v91, off offset:100
	scratch_store_b32 off, v83, off offset:96
	scratch_store_b32 off, v86, off offset:92
	scratch_store_b32 off, v85, off offset:88
	scratch_store_b32 off, v84, off offset:84
	scratch_store_b32 off, v78, off offset:80
	scratch_store_b32 off, v77, off offset:76
	scratch_store_b32 off, v76, off offset:72
	scratch_store_b32 off, v75, off offset:68
	scratch_store_b32 off, v97, off offset:64
	scratch_store_b32 off, v96, off offset:60
	scratch_store_b32 off, v95, off offset:56
	scratch_store_b32 off, v94, off offset:52
	scratch_store_b32 off, v93, off offset:48
	scratch_store_b32 off, v90, off offset:44
	scratch_store_b32 off, v89, off offset:40
	scratch_store_b32 off, v88, off offset:36
	scratch_store_b32 off, v87, off offset:32
	scratch_store_b32 off, v81, off offset:28
	scratch_store_b32 off, v80, off offset:24
	scratch_store_b32 off, v79, off offset:20
	scratch_store_b32 off, v74, off offset:16
	scratch_store_b32 off, v73, off offset:12
	scratch_store_b32 off, v72, off offset:8
	v_dual_mov_b32 v163, v144 :: v_dual_add_nc_u32 v28, s26, v30
	v_mov_b32_e32 v167, v145
	v_dual_mov_b32 v145, v137 :: v_dual_mov_b32 v160, v107
	v_mov_b32_e32 v171, v149
	v_dual_mov_b32 v149, v122 :: v_dual_mov_b32 v122, v108
	v_mov_b32_e32 v137, v120
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s62, s62, -1
	v_mov_b32_e32 v131, v103
	v_dual_mov_b32 v189, v176 :: v_dual_mov_b32 v176, v154
	v_dual_mov_b32 v154, v127 :: v_dual_mov_b32 v127, v109
	v_mov_b32_e32 v185, v157
	v_mov_b32_e32 v157, v130
	v_mov_b32_e32 v159, v142
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:464
	scratch_load_b64 v[29:30], off, off
	v_dual_mov_b32 v162, v143 :: v_dual_mov_b32 v143, v132
	v_mov_b32_e32 v166, v138
	v_mov_b32_e32 v138, v128
	v_dual_mov_b32 v128, v110 :: v_dual_mov_b32 v165, v135
	v_mov_b32_e32 v130, v115
	v_mov_b32_e32 v142, v116
	v_dual_mov_b32 v132, v104 :: v_dual_mov_b32 v135, v117
	v_mov_b32_e32 v144, v136
	v_mov_b32_e32 v136, v118
	v_dual_mov_b32 v164, v134 :: v_dual_mov_b32 v161, v133
	v_mov_b32_e32 v134, v106
	v_mov_b32_e32 v168, v146
	v_mov_b32_e32 v146, v139
	v_mov_b32_e32 v190, v177
	v_mov_b32_e32 v170, v148
	v_mov_b32_e32 v148, v141
	v_mov_b32_e32 v186, v173
	v_dual_mov_b32 v141, v113 :: v_dual_mov_b32 v188, v175
	v_mov_b32_e32 v133, v105
	v_mov_b32_e32 v139, v111
	v_mov_b32_e32 v177, v155
	v_mov_b32_e32 v155, v140
	v_mov_b32_e32 v140, v112
	v_mov_b32_e32 v172, v150
	v_mov_b32_e32 v150, v123
	v_mov_b32_e32 v173, v151
	v_mov_b32_e32 v151, v124
	v_mov_b32_e32 v175, v153
	v_mov_b32_e32 v153, v126
	v_dual_mov_b32 v187, v174 :: v_dual_mov_b32 v174, v152
	v_dual_mov_b32 v152, v125 :: v_dual_mov_b32 v169, v147
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v147, v119 :: v_dual_add_nc_u32 v2, s73, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 4, v2
	v_cmp_gt_i32_e64 s23, s65, v0
	v_add_nc_u32_e32 v0, 8, v2
	s_and_b32 s23, s64, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s21, s65, v0
	v_add_nc_u32_e32 v0, 16, v2
	s_waitcnt vmcnt(1)
	v_add3_u32 v244, v1, s72, v179
	v_cmp_gt_i32_e64 s22, s65, v0
	v_add_nc_u32_e32 v0, 20, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s26, v29
	s_and_b32 s21, s64, s21
	v_add_nc_u32_e32 v3, s67, v244
	v_cmp_gt_i32_e64 s20, s65, v0
	v_add_nc_u32_e32 v0, 24, v2
	s_and_b32 s20, s64, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s19, s65, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v28, 0x80000000, v28, s20
	s_and_b32 s19, s64, s19
	v_cndmask_b32_e64 v29, 0x80000000, v29, s19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s73, v0
	s_add_i32 s73, s73, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 2, v0
	v_cmp_gt_i32_e64 s18, s65, v0
	v_cmp_gt_i32_e64 s15, s65, v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	s_waitcnt vmcnt(0)
	v_add3_u32 v243, v1, s72, v179
	v_add_nc_u32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s67, v243
	v_cmp_gt_i32_e64 s16, s65, v1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v4, 0x80000000, v4, s16
	s_waitcnt vmcnt(0)
	v_add3_u32 v242, v1, s72, v179
	v_add_nc_u32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v5, s67, v242
	v_cmp_gt_i32_e64 s17, s65, v1
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	s_waitcnt vmcnt(0)
	v_add3_u32 v241, v1, s72, v179
	v_add_nc_u32_e32 v1, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v6, s67, v241
	v_cmp_gt_i32_e64 s14, s65, v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v6, 0x80000000, v6, s14
	s_waitcnt vmcnt(0)
	v_add3_u32 v240, v1, s72, v179
	v_add_nc_u32_e32 v1, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v7, s67, v240
	v_cmp_gt_i32_e64 s11, s65, v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v239, v1, s72, v179
	v_add_nc_u32_e32 v1, 12, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v8, s67, v239
	v_cmp_gt_i32_e64 s12, s65, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s12
	s_waitcnt vmcnt(0)
	v_add3_u32 v238, v1, s72, v179
	v_add_nc_u32_e32 v1, 14, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v9, s67, v238
	v_cmp_gt_i32_e64 s13, s65, v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s13
	s_waitcnt vmcnt(0)
	v_add3_u32 v16, v1, s72, v179
	v_add_nc_u32_e32 v1, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s10, s65, v1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v17, v1, s72, v179
	v_add_nc_u32_e32 v1, 18, v0
	v_cmp_gt_i32_e64 s7, s65, v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v18, v1, s72, v179
	v_add_nc_u32_e32 v1, 20, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s8, s65, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v19, v1, s72, v179
	v_add_nc_u32_e32 v1, 22, v0
	v_cmp_gt_i32_e64 s9, s65, v1
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v20, v1, s72, v179
	v_add_nc_u32_e32 v1, 24, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s6, s65, v1
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v21, v1, s72, v179
	v_add_nc_u32_e32 v1, 26, v0
	v_cmp_gt_i32_e64 s3, s65, v1
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v22, v1, s72, v179
	v_add_nc_u32_e32 v1, 28, v0
	v_add_nc_u32_e32 v0, 30, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s4, s65, v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s5, s65, v0
	v_or_b32_e32 v0, 12, v2
	v_cmp_gt_i32_e64 s24, s65, v0
	s_and_b32 s24, s64, s24
	s_waitcnt vmcnt(0)
	v_add3_u32 v203, v1, s72, v179
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v23, s67, v203
	s_waitcnt vmcnt(0)
	v_add3_u32 v1, v1, s72, v179
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v22, off offset:264
	scratch_store_b32 off, v16, off offset:292
	scratch_store_b32 off, v17, off offset:288
	scratch_store_b32 off, v18, off offset:284
	scratch_store_b32 off, v19, off offset:280
	scratch_store_b32 off, v20, off offset:276
	scratch_store_b32 off, v21, off offset:272
	scratch_store_b32 off, v1, off offset:268
	v_add_nc_u32_e32 v24, s67, v1
	v_mad_u64_u32 v[0:1], null, v0, s66, v[26:27]
	v_add_nc_u32_e32 v16, s67, v16
	v_add_nc_u32_e32 v17, s67, v17
	v_add_nc_u32_e32 v18, s67, v18
	v_add_nc_u32_e32 v19, s67, v19
	v_add_nc_u32_e32 v20, s67, v20
	v_add_nc_u32_e32 v21, s67, v21
	v_cndmask_b32_e64 v25, 0x80000000, v0, s24
	v_or_b32_e32 v0, 28, v2
	v_cmp_gt_i32_e64 s24, s65, v2
	v_add_nc_u32_e32 v2, s26, v27
	v_add_nc_u32_e32 v22, s67, v22
	v_cndmask_b32_e64 v16, 0x80000000, v16, s10
	v_cmp_gt_i32_e64 s25, s65, v0
	v_mad_u64_u32 v[0:1], null, v0, s66, v[26:27]
	v_add_nc_u32_e32 v26, s26, v32
	v_cndmask_b32_e64 v1, 0x80000000, v23, s18
	v_cndmask_b32_e64 v23, 0x80000000, v24, s5
	v_add_nc_u32_e32 v24, s26, v15
	v_add_nc_u32_e32 v27, s26, v31
	s_and_b32 s25, s64, s25
	s_and_b32 s24, s64, s24
	v_cndmask_b32_e64 v26, 0x80000000, v26, s21
	s_and_b32 s21, s64, s22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s25
	v_cndmask_b32_e64 v2, 0x80000000, v2, s24
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	v_cndmask_b32_e64 v18, 0x80000000, v18, s8
	v_cndmask_b32_e64 v19, 0x80000000, v19, s9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s23
	v_dual_mov_b32 v15, v14 :: v_dual_mov_b32 v14, v13
	v_cndmask_b32_e64 v27, 0x80000000, v27, s21
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u16 v80, v1, s[48:51], 0 offen
	buffer_load_u16 v81, v3, s[48:51], 0 offen
	buffer_load_u16 v87, v4, s[48:51], 0 offen
	buffer_load_u16 v88, v5, s[48:51], 0 offen
	buffer_load_u16 v89, v6, s[48:51], 0 offen
	buffer_load_u16 v90, v7, s[48:51], 0 offen
	buffer_load_u16 v91, v8, s[48:51], 0 offen
	buffer_load_u16 v92, v9, s[48:51], 0 offen
	buffer_load_u16 v93, v16, s[48:51], 0 offen
	buffer_load_u16 v94, v17, s[48:51], 0 offen
	buffer_load_u16 v95, v18, s[48:51], 0 offen
	buffer_load_u16 v96, v19, s[48:51], 0 offen
	buffer_load_u16 v97, v20, s[48:51], 0 offen
	buffer_load_u16 v98, v21, s[48:51], 0 offen
	buffer_load_u16 v100, v22, s[48:51], 0 offen
	buffer_load_u16 v101, v23, s[48:51], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v2, s[44:47], 0 offen
	buffer_load_u8 v2, v24, s[44:47], 0 offen
	buffer_load_u8 v3, v26, s[44:47], 0 offen
	buffer_load_u8 v4, v27, s[44:47], 0 offen
	buffer_load_u8 v5, v28, s[44:47], 0 offen
	buffer_load_u8 v6, v29, s[44:47], 0 offen
	buffer_load_u8 v0, v0, s[44:47], 0 offen
	buffer_load_u8 v7, v25, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:336 ; 4-byte Folded Reload
	v_dual_mov_b32 v13, v12 :: v_dual_mov_b32 v12, v11
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v10, v178
	v_mov_b32_e32 v178, v156
	v_dual_mov_b32 v156, v129 :: v_dual_mov_b32 v129, v114
	s_waitcnt vmcnt(0)
	ds_store_b8 v8, v1
	ds_store_b8 v8, v2 offset:256
	ds_store_b8 v8, v3 offset:512
	ds_store_b8 v8, v4 offset:1024
	ds_store_b8 v8, v5 offset:1280
	ds_store_b8 v8, v6 offset:1536
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v7
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v5, off, off offset:476 ; 4-byte Folded Reload
	ds_load_u8 v0, v182 offset:320
	ds_load_u8 v1, v182 offset:256
	ds_load_u8 v24, v182 offset:336
	ds_load_u8 v25, v182 offset:272
	ds_load_u8 v40, v182 offset:352
	ds_load_u8 v32, v182 offset:288
	ds_load_u8 v2, v182 offset:368
	ds_load_u8 v41, v182 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v32, v40, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v2, v182 offset:304
	s_waitcnt vmcnt(0)
	ds_load_u8 v197, v5
	scratch_load_b32 v5, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v1, v182 offset:448
	ds_load_u8 v2, v182 offset:384
	ds_load_u8 v26, v182 offset:464
	ds_load_u8 v27, v182 offset:400
	ds_load_u8 v33, v182 offset:480
	ds_load_u8 v35, v182 offset:416
	ds_load_u8 v3, v182 offset:496
	s_waitcnt vmcnt(0)
	ds_load_u8 v191, v5
	ds_load_u8 v193, v182 offset:1968
	ds_load_u8 v5, v182 offset:1920
	ds_load_u8 v6, v182 offset:1856
	ds_load_u8 v72, v182 offset:1872
	ds_load_u8 v84, v182 offset:1808
	ds_load_u8 v54, v182 offset:1888
	ds_load_u8 v59, v182 offset:1824
	ds_load_u8 v195, v182 offset:1904
	ds_load_u8 v196, v182 offset:1840
	ds_load_u8 v22, v182 offset:1728
	ds_load_u8 v23, v182 offset:1792
	ds_load_u8 v85, v182 offset:1744
	ds_load_u8 v86, v182 offset:1680
	ds_load_u8 v60, v182 offset:1760
	ds_load_u8 v61, v182 offset:1696
	ds_load_u8 v199, v182 offset:1776
	ds_load_u8 v200, v182 offset:1712
	ds_load_u8 v67, v182 offset:1664
	ds_load_u8 v68, v182 offset:1600
	ds_load_u8 v73, v182 offset:1616
	ds_load_u8 v74, v182 offset:1552
	ds_load_u8 v70, v182 offset:1632
	ds_load_u8 v55, v182 offset:1568
	ds_load_u8 v201, v182 offset:1648
	ds_load_u8 v202, v182 offset:1584
	s_waitcnt lgkmcnt(26)
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v182 offset:64
	ds_load_u8 v3, v182
	ds_load_u8 v28, v182 offset:80
	ds_load_u8 v34, v182 offset:96
	ds_load_u8 v237, v182 offset:112
	ds_load_u8 v29, v182 offset:16
	ds_load_u8 v37, v182 offset:32
	ds_load_u8 v42, v182 offset:48
	v_perm_b32 v33, v35, v33, 0xc0c0004
	v_perm_b32 v25, v27, v26, 0xc0c0004
	v_lshl_or_b32 v17, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v33, 16, v32
	v_lshl_or_b32 v25, v25, 16, v24
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v182 offset:192
	ds_load_u8 v4, v182 offset:128
	ds_load_u8 v30, v182 offset:208
	ds_load_u8 v31, v182 offset:144
	ds_load_u8 v38, v182 offset:224
	ds_load_u8 v39, v182 offset:160
	ds_load_u8 v236, v182 offset:240
	ds_load_u8 v43, v182 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v26, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v42, v237, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v39, v38, 0xc0c0004
	v_lshl_or_b32 v16, v3, 16, v2
	ds_load_u8 v7, v182 offset:960
	ds_load_u8 v18, v182 offset:896
	ds_load_u8 v0, v182 offset:1024
	ds_load_u8 v53, v182 offset:976
	ds_load_u8 v69, v182 offset:912
	ds_load_u8 v36, v182 offset:992
	ds_load_u8 v204, v182 offset:928
	ds_load_u8 v235, v182 offset:944
	ds_load_u8 v19, v182 offset:832
	ds_load_u8 v21, v182 offset:768
	ds_load_u8 v56, v182 offset:848
	ds_load_u8 v57, v182 offset:784
	ds_load_u8 v206, v182 offset:864
	ds_load_u8 v208, v182 offset:800
	ds_load_u8 v234, v182 offset:880
	ds_load_u8 v233, v182 offset:816
	ds_load_u8 v79, v182 offset:704
	ds_load_u8 v180, v182 offset:640
	ds_load_u8 v58, v182 offset:720
	ds_load_u8 v220, v182 offset:656
	ds_load_u8 v210, v182 offset:736
	ds_load_u8 v211, v182 offset:672
	ds_load_u8 v232, v182 offset:752
	ds_load_u8 v231, v182 offset:688
	ds_load_u8 v205, v182 offset:576
	ds_load_u8 v207, v182 offset:512
	ds_load_u8 v222, v182 offset:592
	ds_load_u8 v224, v182 offset:528
	ds_load_u8 v212, v182 offset:608
	ds_load_u8 v213, v182 offset:544
	ds_load_u8 v45, v182 offset:624
	ds_load_u8 v44, v182 offset:560
	ds_load_u8 v3, v182 offset:1216
	ds_load_u8 v4, v182 offset:1280
	ds_load_u8 v63, v182 offset:1232
	ds_load_u8 v75, v182 offset:1168
	ds_load_u8 v214, v182 offset:1248
	ds_load_u8 v215, v182 offset:1184
	ds_load_u8 v230, v182 offset:1264
	ds_load_u8 v47, v182 offset:1200
	ds_load_u8 v8, v182 offset:1152
	ds_load_u8 v20, v182 offset:1088
	ds_load_u8 v76, v182 offset:1104
	ds_load_u8 v77, v182 offset:1040
	ds_load_u8 v216, v182 offset:1120
	ds_load_u8 v217, v182 offset:1056
	ds_load_u8 v46, v182 offset:1136
	ds_load_u8 v49, v182 offset:1072
	ds_load_u8 v62, v182 offset:1472
	ds_load_u8 v1, v182 offset:1536
	ds_load_u8 v64, v182 offset:1488
	ds_load_u8 v78, v182 offset:1424
	ds_load_u8 v226, v182 offset:1504
	ds_load_u8 v9, v182 offset:1440
	ds_load_u8 v48, v182 offset:1520
	ds_load_u8 v50, v182 offset:1456
	ds_load_u8 v181, v182 offset:1408
	ds_load_u8 v198, v182 offset:1344
	ds_load_u8 v65, v182 offset:1360
	ds_load_u8 v83, v182 offset:1296
	ds_load_u8 v228, v182 offset:1376
	ds_load_u8 v51, v182 offset:1312
	ds_load_u8 v192, v182 offset:1392
	ds_load_u8 v194, v182 offset:1328
	ds_load_u8 v2, v182 offset:1984
	ds_load_u8 v66, v182 offset:2000
	ds_load_u8 v71, v182 offset:1936
	ds_load_u8 v183, v182 offset:2016
	ds_load_u8 v52, v182 offset:1952
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v37, v211, v210, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v32, v35, 16, v34
	v_perm_b32 v34, v208, v206, 0xc0c0004
	v_perm_b32 v35, v204, v36, 0xc0c0004
	v_perm_b32 v36, v213, v212, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_barrier
	ds_store_b16 v227, v80
	ds_store_b16 v227, v81 offset:512
	ds_store_b16 v227, v87 offset:1024
	ds_store_b16 v227, v88 offset:1536
	ds_store_b16 v227, v89 offset:2048
	ds_store_b16 v227, v90 offset:2560
	ds_store_b16 v227, v91 offset:3072
	ds_store_b16 v227, v92 offset:3584
	ds_store_b16 v227, v93 offset:4096
	ds_store_b16 v227, v94 offset:4608
	ds_store_b16 v227, v95 offset:5120
	ds_store_b16 v227, v96 offset:5632
	ds_store_b16 v227, v97 offset:6144
	ds_store_b16 v227, v98 offset:6656
	ds_store_b16 v227, v100 offset:7168
	ds_store_b16 v227, v101 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v37, 16, v36
	v_perm_b32 v36, v51, v228, 0xc0c0004
	v_perm_b32 v51, v55, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:296
	scratch_load_b32 v70, off, off offset:300
	ds_load_u8 v209, v184 offset:1280
	ds_load_u8 v218, v184 offset:1024
	ds_load_u8 v97, v184 offset:1920
	ds_load_u8 v98, v184 offset:1664
	ds_load_u8 v102, v184 offset:1408
	v_perm_b32 v19, v21, v19, 0xc0c0004
	v_perm_b32 v7, v18, v7, 0xc0c0004
	v_perm_b32 v18, v207, v205, 0xc0c0004
	v_perm_b32 v21, v180, v79, 0xc0c0004
	v_perm_b32 v0, v0, v20, 0xc0c0004
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_lshl_or_b32 v19, v7, 16, v19
	v_perm_b32 v4, v4, v198, 0xc0c0004
	v_lshl_or_b32 v18, v21, 16, v18
	ds_load_u8 v81, v184 offset:1792
	ds_load_u8 v87, v184 offset:1536
	v_lshl_or_b32 v20, v3, 16, v0
	v_perm_b32 v2, v5, v2, 0xc0c0004
	v_perm_b32 v1, v1, v68, 0xc0c0004
	ds_load_u8 v103, v184 offset:1152
	ds_load_u8 v110, v184 offset:640
	ds_load_u8 v115, v184 offset:384
	ds_load_u8 v116, v184 offset:128
	ds_load_u8 v106, v184 offset:4736
	ds_load_u8 v111, v184 offset:4480
	ds_load_u8 v112, v184 offset:4224
	ds_load_u8 v109, v184 offset:896
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v80, v218, v209, 0xc0c0004
	ds_load_u8 v7, v184 offset:3328
	ds_load_u8 v21, v184 offset:3072
	ds_load_u8 v180, v184 offset:3968
	ds_load_u8 v205, v184 offset:3712
	ds_load_u8 v207, v184 offset:3456
	ds_load_u8 v209, v184 offset:3200
	ds_load_u8 v104, v184 offset:2688
	ds_load_u8 v99, v184 offset:2432
	ds_load_u8 v82, v184 offset:2176
	ds_load_u8 v117, v184 offset:5504
	ds_load_u8 v105, v184 offset:4992
	ds_load_u8 v125, v184 offset:7296
	ds_load_u8 v126, v184 offset:7040
	ds_load_u8 v114, v184 offset:6784
	ds_load_u8 v119, v184 offset:6528
	ds_load_u8 v120, v184 offset:6272
	ds_load_u8 v118, v184 offset:5248
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v81, v87, v81, 0xc0c0004
	ds_load_u8 v87, v184 offset:256
	ds_load_u8 v88, v184
	ds_load_u8 v113, v184 offset:8064
	ds_load_u8 v123, v184 offset:7808
	ds_load_u8 v124, v184 offset:7552
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v21, v7, 0xc0c0004
	ds_load_u8 v21, v184 offset:3840
	ds_load_u8 v79, v184 offset:3584
	v_lshl_or_b32 v24, v27, 16, v26
	v_perm_b32 v26, v57, v56, 0xc0c0004
	v_perm_b32 v27, v69, v53, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v82, v82, v99, 0xc0c0004
	v_perm_b32 v28, v224, v222, 0xc0c0004
	v_perm_b32 v29, v220, v58, 0xc0c0004
	v_perm_b32 v30, v77, v76, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	v_perm_b32 v31, v75, v63, 0xc0c0004
	v_perm_b32 v56, v86, v85, 0xc0c0004
	v_lshl_or_b32 v26, v29, 16, v28
	v_perm_b32 v28, v83, v65, 0xc0c0004
	v_perm_b32 v29, v78, v64, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v184 offset:768
	ds_load_u8 v89, v184 offset:512
	v_perm_b32 v53, v74, v73, 0xc0c0004
	v_perm_b32 v9, v9, v226, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_lshl_or_b32 v28, v31, 16, v30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v79, v21, 0xc0c0004
	v_perm_b32 v30, v84, v72, 0xc0c0004
	v_perm_b32 v31, v71, v66, 0xc0c0004
	v_perm_b32 v38, v217, v216, 0xc0c0004
	v_perm_b32 v39, v215, v214, 0xc0c0004
	v_lshl_or_b32 v101, v21, 16, v7
	v_perm_b32 v7, v181, v62, 0xc0c0004
	ds_load_u8 v0, v184 offset:5376
	ds_load_u8 v3, v184 offset:5120
	ds_load_u8 v181, v184 offset:6016
	ds_load_u8 v198, v184 offset:5760
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v56, 16, v53
	v_lshl_or_b32 v37, v9, 16, v36
	v_lshl_or_b32 v21, v7, 16, v4
	v_lshl_or_b32 v36, v39, 16, v38
	v_perm_b32 v9, v59, v54, 0xc0c0004
	v_perm_b32 v38, v52, v183, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v52, v61, v60, 0xc0c0004
	v_perm_b32 v43, v43, v236, 0xc0c0004
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v9
	v_lshl_or_b32 v80, v88, 16, v87
	ds_load_u8 v79, v184 offset:2304
	ds_load_u8 v87, v184 offset:2048
	ds_load_u8 v218, v184 offset:2944
	v_lshl_or_b32 v38, v52, 16, v51
	v_perm_b32 v47, v47, v230, 0xc0c0004
	v_perm_b32 v49, v193, v191, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v3, v0, 0xc0c0004
	ds_load_u8 v3, v184 offset:5888
	ds_load_u8 v4, v184 offset:5632
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v79, v87, v79, 0xc0c0004
	ds_load_u8 v87, v184 offset:2816
	ds_load_u8 v88, v184 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v184 offset:4352
	ds_load_u8 v7, v184 offset:4096
	v_lshl_or_b32 v96, v3, 16, v0
	v_perm_b32 v0, v23, v6, 0xc0c0004
	v_perm_b32 v3, v67, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v23, v2, 16, v0
	v_lshl_or_b32 v22, v3, 16, v1
	ds_load_u8 v0, v184 offset:7424
	ds_load_u8 v1, v184 offset:7168
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v87, 16, v79
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v7, v4, 0xc0c0004
	ds_load_u8 v7, v184 offset:4864
	ds_load_u8 v8, v184 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v184 offset:7936
	ds_load_u8 v2, v184 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v7, 16, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v184 offset:6400
	ds_load_u8 v3, v184 offset:6144
	v_lshl_or_b32 v108, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v184 offset:6912
	ds_load_u8 v4, v184 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v3, 16, v2
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v8, s43
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[16:17], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[18:19], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[20:21], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[22:23], v[87:94] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v87
	v_cvt_f32_i32_e32 v68, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v67, v89
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v87, v98, v97, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v93
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v88, v116, v115, 0xc0c0004
	v_perm_b32 v89, v110, v109, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v62, v90
	v_cvt_f32_i32_e32 v121, v91
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v94
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v109, v89, 16, v88
	v_perm_b32 v88, v104, v218, 0xc0c0004
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_perm_b32 v0, v103, v102, 0xc0c0004
	v_lshl_or_b32 v97, v88, 16, v82
	v_perm_b32 v82, v198, v181, 0xc0c0004
	v_perm_b32 v88, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v87, 16, v0
	v_perm_b32 v0, v209, v207, 0xc0c0004
	v_perm_b32 v87, v205, v180, 0xc0c0004
	v_lshl_or_b32 v98, v87, 16, v0
	v_perm_b32 v0, v118, v117, 0xc0c0004
	v_perm_b32 v87, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v82, 16, v0
	v_lshl_or_b32 v102, v88, 16, v87
	v_perm_b32 v0, v125, v124, 0xc0c0004
	v_perm_b32 v82, v123, v113, 0xc0c0004
	v_perm_b32 v87, v120, v119, 0xc0c0004
	v_perm_b32 v88, v114, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v116, v82, 16, v0
	v_add_nc_u32_e32 v82, s68, v243
	v_lshl_or_b32 v115, v88, 16, v87
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[16:17], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0x80000000, v82, s16
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[18:19], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[20:21], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[22:23], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v87
	v_cvt_f32_i32_e32 v209, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v207, v89
	v_cvt_f32_i32_e32 v205, v90
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[83:90], v[80:81], v[24:25], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v92
	v_cvt_f32_i32_e32 v198, v91
	v_cvt_f32_i32_e32 v0, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[83:90], v[100:101], v[26:27], v[83:90] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v181, v94
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v70, v40, 0xc0c0004
	scratch_load_b32 v70, off, off offset:304 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[83:90], v[95:96], v[28:29], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[107:108], v[30:31], v[83:90] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v75, v84
	v_cvt_f32_i32_e32 v72, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v86
	v_cvt_f32_i32_e32 v66, v87
	v_cvt_f32_i32_e32 v65, v88
	v_cvt_f32_i32_e32 v64, v89
	v_cvt_f32_i32_e32 v63, v90
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[83:90], v[109:110], v[24:25], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[97:98], v[26:27], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[102:103], v[28:29], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[115:116], v[30:31], v[83:90] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v224, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v222, v89
	v_cvt_f32_i32_e32 v220, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v85
	v_cvt_f32_i32_e32 v56, v86
	v_cvt_f32_i32_e32 v53, v87
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[85:92], v[80:81], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v58, v84
	v_cvt_f32_i32_e32 v69, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[85:92], v[100:101], v[34:35], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[95:96], v[36:37], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[107:108], v[38:39], v[85:92] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v183, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v84, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v89
	v_cvt_f32_i32_e32 v77, v90
	v_cvt_f32_i32_e32 v76, v91
	v_cvt_f32_i32_e32 v74, v92
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v86, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[34:35], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[36:37], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[38:39], v[87:94] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v55, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v52, v92
	v_cvt_f32_i32_e32 v51, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v94
	v_cvt_f32_i32_e32 v61, v88
	v_cvt_f32_i32_e32 v60, v89
	v_cvt_f32_i32_e32 v59, v90
	v_cvt_f32_i32_e32 v54, v91
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v40
	v_lshl_or_b32 v40, v43, 16, v42
	v_perm_b32 v42, v44, v45, 0xc0c0004
	v_perm_b32 v43, v231, v232, 0xc0c0004
	v_perm_b32 v44, v233, v234, 0xc0c0004
	v_perm_b32 v45, v235, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[40:41], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v43, 16, v42
	v_add_nc_u32_e32 v80, s68, v203
	v_lshl_or_b32 v43, v45, 16, v44
	v_perm_b32 v44, v194, v192, 0xc0c0004
	v_perm_b32 v45, v50, v48, 0xc0c0004
	v_perm_b32 v48, v196, v195, 0xc0c0004
	v_add_nc_u32_e32 v81, s68, v244
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[42:43], v[87:94] neg_lo:[1,1,0]
	v_cndmask_b32_e64 v80, 0x80000000, v80, s18
	v_lshl_or_b32 v45, v45, 16, v44
	v_lshl_or_b32 v44, v47, 16, v46
	v_perm_b32 v46, v202, v201, 0xc0c0004
	v_perm_b32 v47, v200, v199, 0xc0c0004
	v_cndmask_b32_e64 v81, 0x80000000, v81, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[44:45], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v47, 16, v46
	v_lshl_or_b32 v47, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[46:47], v[87:94] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v202, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v201, v88
	v_cvt_f32_i32_e32 v200, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v90
	v_cvt_f32_i32_e32 v197, v91
	v_cvt_f32_i32_e32 v196, v92
	v_cvt_f32_i32_e32 v195, v93
	v_cvt_f32_i32_e32 v194, v94
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[40:41], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[42:43], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[44:45], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[46:47], v[87:94] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v88
	scratch_load_b32 v88, off, off offset:340 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v191, v90
	scratch_load_b32 v90, off, off offset:436 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v83, v87
	v_add_nc_u32_e32 v87, s68, v242
	v_cvt_f32_i32_e32 v192, v89
	v_cvt_f32_i32_e32 v70, v91
	v_cvt_f32_i32_e32 v50, v92
	v_cvt_f32_i32_e32 v49, v93
	v_cndmask_b32_e64 v87, 0x80000000, v87, s17
	v_cvt_f32_i32_e32 v48, v94
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v92, off, off offset:404
	scratch_load_b32 v94, off, off offset:372
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v88, s72, v88
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v90, s72, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v88, 0x80000000, v88, s18
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v88, v88, s[48:51], 0 offen
	buffer_load_u8 v89, v87, s[48:51], 0 offen
	buffer_load_u8 v82, v82, s[48:51], 0 offen
	buffer_load_u8 v81, v81, s[48:51], 0 offen
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	v_cndmask_b32_e64 v90, 0x80000000, v90, s14
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v92, s72, v92
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v94, s72, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v92, 0x80000000, v92, s10
	v_cndmask_b32_e64 v94, 0x80000000, v94, s6
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v87.l, 8, v88.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v87.l, v80.l, v87.l
	scratch_load_b32 v80, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s15
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v87.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:452 ; 4-byte Folded Reload
	v_or_b16 v87.h, v81.l, v87.h
	v_add_nc_u32_e32 v81, s68, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v81, 0x80000000, v81, s11
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s16
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v88.l, 8, v80.l
	scratch_load_b32 v80, off, off offset:444 ; 4-byte Folded Reload
	v_or_b16 v88.l, v82.l, v88.l
	v_add_nc_u32_e32 v82, s68, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v82, 0x80000000, v82, s12
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s17
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v88.h, 8, v80.l
	v_add_nc_u32_e32 v80, s68, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v88.h, v89.l, v88.h
	v_add_nc_u32_e32 v89, s68, v238
	v_cndmask_b32_e64 v80, 0x80000000, v80, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v89, 0x80000000, v89, s13
	s_clause 0x4
	buffer_load_u8 v90, v90, s[48:51], 0 offen
	buffer_load_u8 v91, v89, s[48:51], 0 offen
	buffer_load_u8 v82, v82, s[48:51], 0 offen
	buffer_load_u8 v81, v81, s[48:51], 0 offen
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v89.l, 8, v90.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v89.l, v80.l, v89.l
	scratch_load_b32 v80, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s11
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v89.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:420 ; 4-byte Folded Reload
	v_or_b16 v89.h, v81.l, v89.h
	scratch_load_b32 v81, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s72, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s12
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v90.l, 8, v80.l
	scratch_load_b32 v80, off, off offset:412 ; 4-byte Folded Reload
	v_or_b16 v90.l, v82.l, v90.l
	scratch_load_b32 v82, off, off offset:284 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v81, s68, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v81, 0x80000000, v81, s7
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s13
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v90.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:292 ; 4-byte Folded Reload
	v_or_b16 v90.h, v91.l, v90.h
	scratch_load_b32 v91, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v82, s68, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0x80000000, v82, s8
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s68, v80
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s68, v91
	v_cndmask_b32_e64 v80, 0x80000000, v80, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v91, 0x80000000, v91, s9
	s_clause 0x4
	buffer_load_u8 v92, v92, s[48:51], 0 offen
	buffer_load_u8 v93, v91, s[48:51], 0 offen
	buffer_load_u8 v82, v82, s[48:51], 0 offen
	buffer_load_u8 v81, v81, s[48:51], 0 offen
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v91.l, 8, v92.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v91.l, v80.l, v91.l
	scratch_load_b32 v80, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s7
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v91.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:388 ; 4-byte Folded Reload
	v_or_b16 v91.h, v81.l, v91.h
	scratch_load_b32 v81, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s72, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s8
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v92.l, 8, v80.l
	scratch_load_b32 v80, off, off offset:380 ; 4-byte Folded Reload
	v_or_b16 v92.l, v82.l, v92.l
	scratch_load_b32 v82, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s72, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s9
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v92.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:276 ; 4-byte Folded Reload
	v_or_b16 v92.h, v93.l, v92.h
	scratch_load_b32 v93, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v82, s68, v82
	v_add_nc_u32_e32 v81, s68, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0x80000000, v82, s4
	v_cndmask_b32_e64 v81, 0x80000000, v81, s3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s68, v80
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, s68, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s6
	v_cndmask_b32_e64 v93, 0x80000000, v93, s5
	s_clause 0x4
	buffer_load_u8 v94, v94, s[48:51], 0 offen
	buffer_load_u8 v95, v93, s[48:51], 0 offen
	buffer_load_u8 v82, v82, s[48:51], 0 offen
	buffer_load_u8 v81, v81, s[48:51], 0 offen
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v93.l, 8, v94.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v80.l, v93.l
	scratch_load_b32 v80, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	v_cndmask_b32_e64 v80, 0x80000000, v80, s3
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v93.h, 8, v80.l
	scratch_load_b32 v80, off, off offset:356 ; 4-byte Folded Reload
	v_or_b16 v93.h, v81.l, v93.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s4
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v94.l, 8, v80.l
	scratch_load_b32 v80, off, off offset:348 ; 4-byte Folded Reload
	v_or_b16 v94.l, v82.l, v94.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s72, v80
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s72, s72, s71
	s_cmp_lg_u32 s62, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s5
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v94.h, 8, v80.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v94.h, v95.l, v94.h
	ds_store_b16 v227, v87
	ds_store_b16_d16_hi v227, v87 offset:512
	ds_store_b16 v227, v88 offset:1024
	ds_store_b16_d16_hi v227, v88 offset:1536
	ds_store_b16 v227, v89 offset:2048
	ds_store_b16_d16_hi v227, v89 offset:2560
	ds_store_b16 v227, v90 offset:3072
	ds_store_b16_d16_hi v227, v90 offset:3584
	ds_store_b16 v227, v91 offset:4096
	ds_store_b16_d16_hi v227, v91 offset:4608
	ds_store_b16 v227, v92 offset:5120
	ds_store_b16_d16_hi v227, v92 offset:5632
	ds_store_b16 v227, v93 offset:6144
	ds_store_b16_d16_hi v227, v93 offset:6656
	ds_store_b16 v227, v94 offset:7168
	ds_store_b16_d16_hi v227, v94 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v80, v184 offset:1280
	ds_load_u8 v81, v184 offset:1024
	ds_load_u8 v82, v184 offset:1920
	ds_load_u8 v99, v184 offset:1664
	ds_load_u8 v102, v184 offset:1408
	ds_load_u8 v103, v184 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v184 offset:1792
	ds_load_u8 v87, v184 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v99, v82, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v87, v81, 0xc0c0004
	ds_load_u8 v87, v184 offset:256
	ds_load_u8 v88, v184
	ds_load_u8 v104, v184 offset:896
	ds_load_u8 v105, v184 offset:640
	ds_load_u8 v106, v184 offset:384
	ds_load_u8 v107, v184 offset:128
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v184 offset:768
	ds_load_u8 v89, v184 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v88, 16, v87
	ds_load_u8 v87, v184 offset:3328
	ds_load_u8 v88, v184 offset:3072
	ds_load_u8 v108, v184 offset:3968
	ds_load_u8 v109, v184 offset:3712
	ds_load_u8 v110, v184 offset:3456
	ds_load_u8 v111, v184 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v184 offset:3840
	ds_load_u8 v89, v184 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:2304
	ds_load_u8 v90, v184 offset:2048
	ds_load_u8 v112, v184 offset:2944
	ds_load_u8 v113, v184 offset:2688
	ds_load_u8 v114, v184 offset:2432
	ds_load_u8 v115, v184 offset:2176
	v_lshl_or_b32 v96, v88, 16, v87
	ds_load_u8 v87, v184 offset:5376
	ds_load_u8 v88, v184 offset:5120
	ds_load_u8 v116, v184 offset:6016
	ds_load_u8 v117, v184 offset:5760
	ds_load_u8 v118, v184 offset:5504
	ds_load_u8 v119, v184 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:2816
	ds_load_u8 v91, v184 offset:2560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v90, 16, v89
	ds_load_u8 v88, v184 offset:5888
	ds_load_u8 v89, v184 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:4352
	ds_load_u8 v90, v184 offset:4096
	ds_load_u8 v120, v184 offset:4992
	ds_load_u8 v123, v184 offset:4736
	ds_load_u8 v124, v184 offset:4480
	ds_load_u8 v125, v184 offset:4224
	v_lshl_or_b32 v98, v88, 16, v87
	ds_load_u8 v87, v184 offset:7424
	ds_load_u8 v88, v184 offset:7168
	ds_load_u8 v126, v184 offset:8064
	ds_load_u8 v203, v184 offset:7808
	ds_load_u8 v204, v184 offset:7552
	ds_load_u8 v206, v184 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:4864
	ds_load_u8 v91, v184 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v90, 16, v89
	ds_load_u8 v88, v184 offset:7936
	ds_load_u8 v89, v184 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:6400
	ds_load_u8 v90, v184 offset:6144
	ds_load_u8 v208, v184 offset:7040
	ds_load_u8 v217, v184 offset:6784
	ds_load_u8 v226, v184 offset:6528
	ds_load_u8 v228, v184 offset:6272
	v_lshl_or_b32 v101, v88, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:6912
	ds_load_u8 v91, v184 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v100, v90, 16, v89
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[18:19], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[20:21], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[22:23], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v244, v87
	v_cvt_f32_i32_e32 v216, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v215, v89
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v87, v103, v102, 0xc0c0004
	v_perm_b32 v88, v107, v106, 0xc0c0004
	v_perm_b32 v89, v105, v104, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v214, v90
	v_cvt_f32_i32_e32 v213, v91
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v103, v82, 16, v87
	v_perm_b32 v82, v111, v110, 0xc0c0004
	v_lshl_or_b32 v102, v89, 16, v88
	v_perm_b32 v87, v109, v108, 0xc0c0004
	v_perm_b32 v88, v115, v114, 0xc0c0004
	v_perm_b32 v89, v113, v112, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v212, v92
	v_cvt_f32_i32_e32 v211, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v108, v87, 16, v82
	v_perm_b32 v82, v119, v118, 0xc0c0004
	v_lshl_or_b32 v107, v89, 16, v88
	v_perm_b32 v87, v117, v116, 0xc0c0004
	v_perm_b32 v88, v125, v124, 0xc0c0004
	v_perm_b32 v89, v123, v120, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v210, v94
	v_mov_b32_e32 v114, v129
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v110, v87, 16, v82
	v_perm_b32 v82, v206, v204, 0xc0c0004
	v_lshl_or_b32 v109, v89, 16, v88
	v_perm_b32 v87, v203, v126, 0xc0c0004
	v_perm_b32 v88, v228, v226, 0xc0c0004
	v_perm_b32 v89, v217, v208, 0xc0c0004
	v_dual_mov_b32 v129, v156 :: v_dual_mov_b32 v156, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v116, v87, 16, v82
	v_mov_b32_e32 v178, v10
	v_lshl_or_b32 v115, v89, 16, v88
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v10, v11 :: v_dual_mov_b32 v11, v12
	v_mov_b32_e32 v12, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[18:19], v[87:94] neg_lo:[1,1,0]
	v_dual_mov_b32 v13, v14 :: v_dual_mov_b32 v14, v15
	v_dual_mov_b32 v105, v133 :: v_dual_mov_b32 v112, v140
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[20:21], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v113, v141
	v_dual_mov_b32 v141, v148 :: v_dual_mov_b32 v148, v170
	v_mov_b32_e32 v140, v155
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[22:23], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v139
	v_mov_b32_e32 v139, v146
	v_mov_b32_e32 v155, v177
	v_mov_b32_e32 v133, v161
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v208, v87
	v_cvt_f32_i32_e32 v16, v92
	v_cvt_f32_i32_e32 v17, v93
	v_cvt_f32_i32_e32 v18, v94
	v_cvt_f32_i32_e32 v206, v88
	v_cvt_f32_i32_e32 v204, v89
	v_cvt_f32_i32_e32 v203, v90
	v_cvt_f32_i32_e32 v19, v91
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[24:25], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v118, v136
	v_mov_b32_e32 v136, v144
	v_mov_b32_e32 v144, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[26:27], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v119, v147
	v_dual_mov_b32 v147, v169 :: v_dual_mov_b32 v104, v132
	v_mov_b32_e32 v125, v152
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[28:29], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v152, v174
	v_dual_mov_b32 v174, v187 :: v_dual_mov_b32 v123, v150
	v_mov_b32_e32 v106, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[30:31], v[87:94] neg_lo:[1,1,0]
	v_dual_mov_b32 v132, v143 :: v_dual_mov_b32 v177, v190
	v_dual_mov_b32 v134, v164 :: v_dual_mov_b32 v143, v162
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v237, v88
	v_cvt_f32_i32_e32 v236, v89
	v_cvt_f32_i32_e32 v235, v90
	v_cvt_f32_i32_e32 v230, v91
	v_cvt_f32_i32_e32 v228, v92
	v_cvt_f32_i32_e32 v226, v93
	v_cvt_f32_i32_e32 v217, v94
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[24:25], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v146, v168 :: v_dual_mov_b32 v117, v135
	v_mov_b32_e32 v135, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[26:27], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[28:29], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[30:31], v[87:94] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v20, v92
	v_cvt_f32_i32_e32 v21, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v94
	v_cvt_f32_i32_e32 v31, v88
	v_cvt_f32_i32_e32 v30, v89
	v_cvt_f32_i32_e32 v29, v90
	v_cvt_f32_i32_e32 v23, v91
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[34:35], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[36:37], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[38:39], v[87:94] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v243, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v242, v88
	v_cvt_f32_i32_e32 v241, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v240, v90
	v_cvt_f32_i32_e32 v234, v91
	v_cvt_f32_i32_e32 v233, v92
	v_cvt_f32_i32_e32 v232, v93
	v_cvt_f32_i32_e32 v231, v94
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[34:35], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[36:37], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[38:39], v[87:94] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v32, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v24, v92
	v_cvt_f32_i32_e32 v25, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v94
	v_cvt_f32_i32_e32 v35, v88
	v_cvt_f32_i32_e32 v34, v89
	v_cvt_f32_i32_e32 v33, v90
	v_cvt_f32_i32_e32 v27, v91
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[80:81], v[40:41], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[42:43], v[87:94] neg_lo:[1,1,0]
	scratch_load_b32 v96, off, off offset:60 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[87:94], v[97:98], v[44:45], v[87:94] neg_lo:[1,1,0]
	scratch_load_b32 v97, off, off offset:64 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[87:94], v[100:101], v[46:47], v[87:94] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:112
	scratch_load_b32 v100, off, off offset:108
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v87
	v_cvt_f32_i32_e32 v81, v88
	v_cvt_f32_i32_e32 v82, v89
	v_cvt_f32_i32_e32 v95, v90
	v_cvt_f32_i32_e32 v239, v91
	v_cvt_f32_i32_e32 v39, v92
	v_cvt_f32_i32_e32 v38, v93
	v_cvt_f32_i32_e32 v37, v94
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[102:103], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v103, v131
	v_dual_mov_b32 v131, v158 :: v_dual_cndmask_b32 v36, 0x80000000, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[42:43], v[87:94] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v40, 0x80000000, v13, s0
	v_dual_mov_b32 v107, v160 :: v_dual_add_nc_u32 v14, 2, v14
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[109:110], v[44:45], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v109, v127
	v_mov_b32_e32 v127, v154
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v13, 2, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[46:47], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v115, v130
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v87
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v87, v40, s[52:55], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v88
	v_cvt_f32_i32_e32 v7, v89
	v_cvt_f32_i32_e32 v1, v92
	scratch_load_b32 v92, off, off offset:104 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v2, v93
	scratch_load_b32 v93, off, off offset:48 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v3, v94
	v_cvt_f32_i32_e32 v6, v90
	v_cvt_f32_i32_e32 v4, v91
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v91, off, off offset:100
	scratch_load_b32 v94, off, off offset:52
	scratch_load_b32 v90, off, off offset:44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v36, 16, v36
	v_mov_b32_e32 v120, v137
	v_mov_b32_e32 v137, v145
	v_mov_b32_e32 v145, v167
	v_cndmask_b32_e64 v40, 0x80000000, v12, s1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v62, v36, v62
	v_dual_mov_b32 v126, v153 :: v_dual_mov_b32 v153, v175
	v_mov_b32_e32 v175, v188
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v88, v40, s[52:55], 0 offen
	v_cndmask_b32_e64 v40, 0x80000000, v11, s2
	buffer_load_u16 v89, v40, s[52:55], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v40, v10, s[56:59], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v67, v36, v67
	v_mul_f32_e32 v68, v36, v68
	v_dual_mov_b32 v124, v151 :: v_dual_mul_f32 v79, v36, v79
	v_mov_b32_e32 v151, v173
	v_mov_b32_e32 v173, v186
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v11, 2, v11
	v_add_nc_u32_e32 v12, 2, v12
	v_add_nc_u32_e32 v10, s69, v10
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v15, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v229
	ds_load_b128 v[44:47], v229 offset:16
	v_mov_b32_e32 v116, v142
	v_mov_b32_e32 v142, v159
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v150, v172 :: v_dual_fmac_f32 v251, v79, v40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v62, v43
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v62, 16, v87
	v_mov_b32_e32 v110, v128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v254, v67, v42
	v_mov_b32_e32 v154, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v176, v189 :: v_dual_mul_f32 v67, v62, v73
	v_mov_b32_e32 v108, v122
	v_mov_b32_e32 v122, v149
	v_fmac_f32_e32 v252, v68, v41
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v79, off, off offset:20
	scratch_load_b32 v87, off, off offset:32
	scratch_load_b32 v73, off, off offset:12
	v_fmac_f32_e32 v139, v67, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v67, v62, v75
	scratch_load_b32 v75, off, off offset:68 ; 4-byte Folded Reload
	v_mov_b32_e32 v149, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v67, v41 :: v_dual_mul_f32 v67, v62, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v142, v67, v42 :: v_dual_mul_f32 v67, v62, v71
	v_mov_b32_e32 v128, v138
	v_dual_mov_b32 v138, v166 :: v_dual_fmac_f32 v141, v67, v43
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v67, 16, v88
	scratch_load_b32 v88, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v68, v67, v183
	v_mul_f32_e32 v55, v55, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v91, v68, v40 :: v_dual_mul_f32 v68, v67, v86
	scratch_load_b32 v86, off, off offset:92 ; 4-byte Folded Reload
	v_fmac_f32_e32 v92, v68, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v68, v67, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v68, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v68, v67, v84
	scratch_load_b32 v84, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v68, v43
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v68, 16, v89
	scratch_load_b32 v89, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v71, v68, v202 :: v_dual_mov_b32 v130, v157
	v_mov_b32_e32 v157, v185
	scratch_load_b32 v202, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v71, v40 :: v_dual_mul_f32 v40, v68, v201
	scratch_load_b32 v201, off, off offset:164 ; 4-byte Folded Reload
	v_fmac_f32_e32 v104, v40, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v200
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v40, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v199
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:156
	scratch_load_b32 v85, off, off offset:88
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v40, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v36, v121
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v155, v40, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v40, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v36, v40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v40, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v40, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v36, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v40, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:308
	scratch_load_b32 v200, off, off offset:160
	v_mul_f32_e32 v0, v0, v36
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v36, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v246, v40, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v62, v66
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v40, v44 :: v_dual_mul_f32 v40, v62, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v56, v62, v56
	v_mul_f32_e32 v57, v62, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v40, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v62, v64
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v133, v40, v46 :: v_dual_mul_f32 v40, v62, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v63, v218, v36 :: v_dual_fmac_f32 v134, v40, v47
	v_mul_f32_e32 v40, v67, v78
	scratch_load_b32 v78, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v40, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v67, v77
	scratch_load_b32 v77, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v40, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v67, v76
	scratch_load_b32 v76, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v40, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v67, v74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:16
	scratch_load_b32 v72, off, off offset:8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v40, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v197
	scratch_load_b32 v197, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v40, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v196
	scratch_load_b32 v196, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v40, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v195
	scratch_load_b32 v195, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v40, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v194
	scratch_load_b32 v194, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v40, v47
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[40:43], v229 offset:512
	ds_load_b128 v[44:47], v229 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v202, v63, v40 :: v_dual_mul_f32 v63, v36, v209
	v_fmac_f32_e32 v178, v55, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v55, v67, v61
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v56, v43
	scratch_load_b32 v209, off, off offset:200 ; 4-byte Folded Reload
	v_fmac_f32_e32 v147, v63, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v63, v36, v207
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v55, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v55, v67, v60 :: v_dual_fmac_f32 v100, v57, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v1, v68 :: v_dual_fmac_f32 v148, v63, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v63, v36, v205
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v68
	v_mul_f32_e32 v4, v68, v4
	scratch_load_b32 v205, off, off offset:184 ; 4-byte Folded Reload
	v_dual_mul_f32 v2, v2, v68 :: v_dual_fmac_f32 v149, v63, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v63, v69, v62
	scratch_load_b32 v69, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v76, v55, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v55, v67, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v55, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v55, v83, v68
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v55, v40
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v196, v63, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v193
	scratch_load_b32 v193, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v40, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v192
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:128
	scratch_load_b32 v83, off, off offset:96
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v40, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v68, v191
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v40, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v36, v198
	scratch_load_b32 v198, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v200, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v181, v36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v40, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v180, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v197, v0, v47 :: v_dual_mul_f32 v0, v62, v53
	v_fmac_f32_e32 v201, v40, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v224, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v194, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v222, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v193, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v220, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v192, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v67, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v67
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v177, v0, v45 :: v_dual_mul_f32 v0, v51, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v176, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v67
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v21, v62
	v_mul_f32_e32 v21, v67, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v70
	scratch_load_b32 v70, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v50, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v173, v0, v45 :: v_dual_mul_f32 v0, v49, v68
	v_fmac_f32_e32 v225, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v48, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:220
	scratch_load_b32 v207, off, off offset:192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v223, v0, v47
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(1)
	buffer_load_u16 v0, v48, s[56:59], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v48, s69, v48
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v15, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v244
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v62, v58
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v58, v41
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[40:43], v229
	ds_load_b128 v[44:47], v229 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v221, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v219, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v215
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v255, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v245, v0, v43 :: v_dual_mul_f32 v0, v62, v238
	v_fmac_f32_e32 v146, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v0, v41 :: v_dual_mul_f32 v0, v62, v236
	v_fmac_f32_e32 v144, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v143, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v243
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v0, v42 :: v_dual_mul_f32 v0, v67, v240
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v124, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v80
	scratch_load_b32 v80, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v81
	scratch_load_b32 v81, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:120
	scratch_load_b32 v121, off, off offset:116
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v95
	scratch_load_b32 v95, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v213
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v250, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v212
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v249, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v211
	scratch_load_b32 v211, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v247, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v210
	scratch_load_b32 v210, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v248, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v228
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v45 :: v_dual_mul_f32 v0, v62, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v217
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v135, v0, v47 :: v_dual_mul_f32 v0, v67, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v119, v0, v44 :: v_dual_mul_f32 v0, v67, v233
	v_fmac_f32_e32 v118, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v0, v46 :: v_dual_mul_f32 v0, v67, v231
	v_fmac_f32_e32 v117, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v95, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v37
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[37:40], v229 offset:512
	ds_load_b128 v[41:44], v229 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v208, v36
	scratch_load_b32 v208, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v69, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v206
	scratch_load_b32 v206, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v199, v1, v42
	v_dual_fmac_f32 v195, v3, v44 :: v_dual_fmac_f32 v198, v2, v43
	v_fmac_f32_e32 v154, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v204
	scratch_load_b32 v204, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v112, v21, v41 :: v_dual_fmac_f32 v153, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v203
	scratch_load_b32 v203, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v152, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v28, v62
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v210, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v29
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[29:30], off, off
	scratch_load_b64 v[30:31], off, off offset:232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v80, v4, v41
	v_fmac_f32_e32 v121, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v32, v67
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v208, v9, v43
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v206, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v5, v68
	v_mul_f32_e32 v5, v17, v36
	v_mul_f32_e32 v17, v62, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v203, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v8
	v_mul_f32_e32 v8, v20, v62
	v_mul_f32_e32 v20, v26, v67
	scratch_load_b64 v[26:27], off, off offset:320 ; 8-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v17, v41
	v_fmac_f32_e32 v87, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v7
	v_mul_f32_e32 v7, v36, v19
	v_mul_f32_e32 v19, v25, v67
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v8, v42
	v_fmac_f32_e32 v204, v20, v44
	v_fmac_f32_e32 v82, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v6
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b32 v68, off, off offset:208
	scratch_load_b64 v[31:32], off, off offset:240
	scratch_load_b64 v[32:33], off, off offset:248
	scratch_load_b64 v[33:34], off, off offset:256
	v_mul_f32_e32 v6, v18, v36
	v_mul_f32_e32 v18, v24, v67
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[27:28], off, off offset:224
	scratch_load_b32 v67, off, off offset:212
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v36
	v_dual_mul_f32 v16, v22, v62 :: v_dual_fmac_f32 v151, v7, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v205, v18, v42 :: v_dual_fmac_f32 v70, v19, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v211, v0, v42
	v_fmac_f32_e32 v207, v16, v44
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v29, s70, v29
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v30, s70, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v68, v6, v44 :: v_dual_add_nc_u32 v31, s70, v31
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v32, s70, v32
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v27, s70, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v67, v5, v43
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v15, s70, v15
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v98, off, off offset:488
	scratch_load_b32 v99, off, off offset:492
	scratch_load_b32 v102, off, off offset:496
	scratch_load_b32 v71, off, off offset:500
	v_mov_b32_e32 v3, v26
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v219
	v_dual_mul_f32 v8, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v67
	v_mul_f32_e32 v36, 0xbfb8aa3b, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v248
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_mul_f32_e32 v34, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_dual_mul_f32 v4, 0xbfb8aa3b, v255 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v68
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v153
	v_exp_f32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v211
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_dual_mul_f32 v6, 0xbfb8aa3b, v250 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v145
	v_ldexp_f32 v9, v13, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v210
	v_ldexp_f32 v10, v10, v2
	v_mul_f32_e32 v33, 0xbfb8aa3b, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v14, v1, v0
	v_exp_f32_e32 v12, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v0, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v207
	v_dual_mul_f32 v186, 0xbfb8aa3b, v115 :: v_dual_add_f32 v9, 1.0, v9
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	v_ldexp_f32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v41, 0xbfb8aa3b, v121 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v12, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_mul_f32_e32 v189, 0xbfb8aa3b, v124
	v_exp_f32_e32 v2, v2
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v209
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_ldexp_f32 v19, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v1, 0xbfb8aa3b, v206 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v208
	v_dual_mul_f32 v2, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v118
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v9, v9, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v12, v13, v12
	v_mul_f32_e32 v185, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v27, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v96
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v17, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v204
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v19, v19, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v40, 0xbfb8aa3b, v138
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v204
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v203
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v199
	v_dual_mul_f32 v28, 0xbfb8aa3b, v249 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v143
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v32, v23, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_mul_f32_e32 v20, 0xbfb8aa3b, v198
	v_mul_f32_e32 v22, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_dual_mul_f32 v180, 0xbfb8aa3b, v108 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v49, v49
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v198
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, vcc_lo, v69, v9, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v20
	v_exp_f32_e32 v54, v22
	v_dual_mul_f32 v24, 0xbfb8aa3b, v247 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v144
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v48, v49, v48
	v_dual_mul_f32 v30, 0xbfb8aa3b, v152 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v146
	v_dual_mul_f32 v0, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v131
	v_dual_mul_f32 v38, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v126
	v_ldexp_f32 v49, v53, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v50, v54, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v52, v56, 1.0
	v_div_scale_f32 v53, null, v14, v14, v211
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_add_f32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v51, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v54, null, v10, v10, v67
	v_mul_f32_e32 v59, v57, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s1, v67, v10, v67
	v_rcp_f32_e32 v58, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v61, -v52, v59, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v53, v51, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v190, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v61, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v51, v60, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s0, v211, v14, v211
	v_fma_f32 v62, -v54, v58, 1.0
	v_fma_f32 v52, -v52, v59, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v82 :: v_dual_add_f32 v55, 1.0, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v61, v60, v51 :: v_dual_fmac_f32 v58, v62, v58
	v_div_scale_f32 v62, null, v11, v11, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v53, v61, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v63, v58
	v_rcp_f32_e32 v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v42, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v57, v51
	v_div_fmas_f32 v52, v52, v56, v59
	v_rcp_f32_e32 v56, v66
	v_fma_f32 v57, -v54, v65, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v52, v9, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v62, v64, 1.0
	v_fmac_f32_e32 v65, v57, v58
	v_fma_f32 v52, -v53, v61, v60
	v_div_scale_f32 v53, s2, v68, v11, v68
	v_fma_f32 v57, -v66, v56, 1.0
	v_fmac_f32_e32 v64, v59, v64
	v_div_scale_f32 v59, s0, v210, v19, v210
	v_div_fmas_f32 v51, v52, v51, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v56, v57, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v54, v65, v63
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v51, v14, v211
	v_mul_f32_e32 v61, v59, v56
	v_mul_f32_e32 v54, v53, v64
	v_div_scale_f32 v63, null, v13, v13, v208
	v_div_scale_f32 v57, null, v12, v12, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v66, v61, v59
	v_fma_f32 v60, -v62, v54, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v188, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v94
	v_dual_mul_f32 v44, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v51, v56
	v_div_fmas_f32 v52, v52, v58, v65
	v_fmac_f32_e32 v54, v60, v64
	v_rcp_f32_e32 v58, v57
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, s1, v209, v12, v209
	v_div_fixup_f32 v10, v52, v10, v67
	v_rcp_f32_e32 v52, v63
	v_fma_f32 v53, -v62, v54, v53
	v_div_scale_f32 v62, null, v15, v15, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v184, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v64, v54
	v_fma_f32 v54, -v66, v61, v59
	v_div_scale_f32 v64, s2, v208, v13, v208
	v_fma_f32 v65, -v63, v52, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v60, -v57, v58, 1.0
	v_div_fmas_f32 v54, v54, v56, v61
	v_div_fixup_f32 v11, v53, v11, v68
	v_fmac_f32_e32 v52, v65, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v16, v16, v206
	v_div_fixup_f32 v53, v54, v19, v210
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v61, v64, v52
	v_div_scale_f32 v67, s0, v207, v15, v207
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v69, null, v50, v50, v195
	v_fma_f32 v19, -v63, v61, v64
	v_fmac_f32_e32 v58, v60, v58
	v_rcp_f32_e32 v60, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v182, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v19, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_mul_f32 v59, v51, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v1, 0xbfb8aa3b, v80
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v62, v60, 1.0
	v_fma_f32 v56, -v57, v59, v51
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v65, v60
	v_rcp_f32_e32 v65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v56, v58
	v_div_scale_f32 v56, null, v17, v17, v205
	v_mul_f32_e32 v54, v67, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v57, v59, v51
	v_rcp_f32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v19, -v62, v54, v67
	v_fma_f32 v68, -v66, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v51, v58, v59
	v_fma_f32 v58, -v63, v61, v64
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v54, v19, v60 :: v_dual_fmac_f32 v65, v68, v65
	v_div_scale_f32 v68, s3, v206, v16, v206
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v56, v57, 1.0
	v_div_fmas_f32 v52, v58, v52, v61
	v_fma_f32 v58, -v62, v54, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v19, v68, v65
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v57, v59, v57
	v_div_scale_f32 v59, null, v18, v18, v70
	v_fma_f32 v61, -v66, v19, v68
	v_div_scale_f32 v62, s1, v205, v17, v205
	v_div_fmas_f32 v54, v58, v60, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v59
	v_fmac_f32_e32 v19, v61, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v60, v62, v57
	v_div_fixup_f32 v12, v51, v12, v209
	v_div_fixup_f32 v13, v52, v13, v208
	v_div_fixup_f32 v51, v54, v15, v207
	v_fma_f32 v15, -v66, v19, v68
	v_fma_f32 v52, -v56, v60, v62
	v_div_scale_f32 v54, null, v32, v32, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v59, v58, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v60, v52, v57
	v_div_fmas_f32 v15, v15, v65, v19
	v_rcp_f32_e32 v19, v54
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, null, v55, v55, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v63, v15, v16, v206
	v_fma_f32 v15, -v56, v60, v62
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v62, v61
	v_div_scale_f32 v52, s0, v70, v18, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v54, v19, 1.0
	v_div_fmas_f32 v15, v15, v57, v60
	v_div_scale_f32 v60, s1, v204, v32, v204
	v_mul_f32_e32 v16, v52, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v19, v56, v19
	v_div_scale_f32 v56, null, v48, v48, v199
	v_fma_f32 v64, -v61, v62, 1.0
	v_div_fixup_f32 v65, v15, v17, v205
	v_fma_f32 v57, -v59, v16, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v15, v56
	v_mul_f32_e32 v17, v60, v19
	v_fmac_f32_e32 v62, v64, v62
	v_div_scale_f32 v64, null, v49, v49, v198
	v_fmac_f32_e32 v16, v57, v58
	v_div_scale_f32 v57, s2, v203, v55, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v68, v64
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v67, -v56, v15, 1.0
	v_fma_f32 v52, -v59, v16, v52
	v_fma_f32 v59, -v54, v17, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v193, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v67, v15
	v_div_fmas_f32 v16, v52, v58, v16
	v_rcp_f32_e32 v58, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v64, v68, 1.0
	v_fmac_f32_e32 v17, v59, v19
	v_div_scale_f32 v59, s0, v199, v48, v199
	v_div_fixup_f32 v70, v16, v18, v70
	v_fmac_f32_e32 v68, v67, v68
	v_mul_f32_e32 v66, v57, v62
	v_fma_f32 v16, -v54, v17, v60
	v_mul_f32_e32 v18, v59, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v69, v58, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v52, -v61, v66, v57
	v_div_fmas_f32 v16, v16, v19, v17
	v_fma_f32 v19, -v56, v18, v59
	v_fmac_f32_e32 v58, v54, v58
	v_div_scale_f32 v54, s1, v195, v50, v195
	v_fmac_f32_e32 v66, v52, v62
	v_div_scale_f32 v52, s3, v198, v49, v198
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v16, v32, v204
	v_fma_f32 v17, -v61, v66, v57
	v_dual_mul_f32 v57, v52, v68 :: v_dual_fmac_f32 v18, v19, v15
	v_mul_f32_e32 v19, v54, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v62, v66
	v_fma_f32 v16, -v64, v57, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v56, v18, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v55, v17, v55, v203
	v_fmac_f32_e32 v57, v16, v68
	v_fma_f32 v16, -v69, v19, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v18
	v_fma_f32 v15, -v64, v57, v52
	v_dual_fmac_f32 v19, v16, v58 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v221
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v48, v8, v48, v199
	v_div_fmas_f32 v15, v15, v68, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v69, v19, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v15, v49, v198
	v_div_fmas_f32 v7, v16, v58, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v202, v9 :: v_dual_mul_f32 v16, v200, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v7, v50, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v18, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v219
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v245
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v196, v53
	v_mul_f32_e32 v17, v197, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v52, v52, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v178, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v54
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v201, v14
	v_mul_f32_e32 v14, v194, v12
	v_mul_f32_e32 v12, v192, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v175, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v54, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v255 :: v_dual_add_f32 v57, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v221, v52, v221
	v_fmac_f32_e32 v53, v7, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v57, v57, v245
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v173, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v58, v53
	v_div_scale_f32 v56, null, v51, v51, v219
	v_rcp_f32_e32 v32, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v174, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v54, v62, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v60, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v225, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, s0, v219, v51, v219
	v_fmac_f32_e32 v62, v63, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v61, v32, 1.0
	v_fma_f32 v49, -v54, v62, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v56, v59, 1.0
	v_fmac_f32_e32 v32, v60, v32
	v_div_scale_f32 v60, null, v48, v48, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v49, v49, v53, v62
	v_fmac_f32_e32 v59, v64, v59
	v_div_scale_f32 v58, s1, v245, v57, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v60
	v_div_fixup_f32 v49, v49, v52, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v63, v58, v32 :: v_dual_mul_f32 v6, v223, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v61, v63, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v177, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v60, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v50, v32
	v_dual_fmac_f32 v53, v52, v53 :: v_dual_mul_f32 v54, v55, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v250
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v56, v54, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v65
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v61, v63, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v62, v59
	v_fma_f32 v55, -v56, v54, v55
	v_div_scale_f32 v56, s2, v255, v48, v255
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v55, v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v55, v56, v53 :: v_dual_add_f32 v52, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v60, v55, v56
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v176, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v58, v32, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v28, v53
	v_div_fixup_f32 v28, v54, v51, v219
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v247
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v32, v57, v245
	v_fma_f32 v32, -v60, v55, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v35
	v_exp_f32_e32 v54, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v51, v51, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v53, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v21, v32, v48, v255
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v54, v54, v59
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v254, v21 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v56, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v60, null, v54, v54, v247
	v_fmac_f32_e32 v53, v58, v53
	v_div_scale_f32 v62, null, v52, v52, v250
	v_div_scale_f32 v55, s0, v250, v52, v250
	v_div_scale_f32 v58, s1, v249, v51, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v62
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v61, v60
	v_fma_f32 v57, -v62, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v57, v50
	v_mul_f32_e32 v57, v55, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v62, v57, v55
	v_fmac_f32_e32 v57, v59, v50
	v_mul_f32_e32 v59, v58, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v62, v57, v55
	v_fma_f32 v62, -v56, v59, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v55, v50, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v62, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v52, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v56, v59, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v52, v53, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v53, 0, 0x42800000, s2
	v_exp_f32_e32 v57, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v253, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v51, v249
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v48, v48, v248
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v30, v57, v56
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v251, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v60, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v156, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v49, v61
	v_rcp_f32_e32 v49, v55
	v_div_scale_f32 v36, s0, v247, v54, v247
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v53, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v58, v36, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v55, v49, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v252, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v60, v58, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v59, s1, v248, v48, v248
	v_fmac_f32_e32 v58, v51, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v51, v59, v49
	v_fma_f32 v36, -v60, v58, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v55, v51, v59
	v_div_fmas_f32 v29, v36, v61, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v30, v49
	v_div_scale_f32 v53, null, v60, v60, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v57
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v55, v51, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v49, v51
	v_div_scale_f32 v49, vcc_lo, v154, v60, v154
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v36, v48, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v53, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	v_add_f32_e32 v56, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v29, v54, v247
	v_fmac_f32_e32 v57, v61, v57
	v_div_scale_f32 v62, null, v52, v52, v153
	v_div_scale_f32 v61, null, v56, v56, v152
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v246, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v62
	v_rcp_f32_e32 v63, v61
	v_mul_f32_e32 v58, v49, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v53, v58, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v58, v36, v57 :: v_dual_fmac_f32 v59, v51, v59
	v_div_scale_f32 v51, s0, v153, v52, v153
	v_fma_f32 v49, -v53, v58, v49
	v_div_scale_f32 v53, null, v48, v48, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v51, v59
	v_div_fmas_f32 v49, v49, v57, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v53
	v_fma_f32 v55, -v62, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v49, v49, v60, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v55, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v53, v47, 1.0
	v_fma_f32 v51, -v62, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v157, v30 :: v_dual_fmac_f32 v47, v58, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_exp_f32_e32 v39, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v151, v48, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v51, v52, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_ldexp_f32 v37, v39, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v155, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v61, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v59, v47 :: v_dual_add_f32 v60, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v50, v63
	v_div_scale_f32 v50, s1, v152, v56, v152
	v_fma_f32 v37, -v53, v39, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v50, v63
	v_fmac_f32_e32 v39, v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v61, v54, v50
	v_fma_f32 v53, -v53, v39, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v52, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_exp_f32_e32 v31, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v61, v54, v50
	v_div_scale_f32 v61, null, v60, v60, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v55, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v145
	v_ldexp_f32 v31, v31, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v37, v58, v57
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v50, v50, v63, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v53, v47, v39
	v_fma_f32 v37, -v61, v55, 1.0
	v_div_scale_f32 v52, null, v54, v54, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v39, v48, v151
	v_rcp_f32_e32 v53, v52
	v_fmac_f32_e32 v55, v37, v55
	v_div_fixup_f32 v37, v50, v56, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v150, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, vcc_lo, v146, v60, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v149, v37 :: v_dual_mul_f32 v50, v59, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v61, v50, v59
	v_fmac_f32_e32 v53, v39, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v148, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s0, v145, v54, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v57, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v147, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v62, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v61, v50, v59
	v_div_scale_f32 v64, null, v51, v51, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v52, v57, v62
	v_div_fmas_f32 v40, v49, v55, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v61, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v59, v53
	v_div_scale_f32 v48, null, v58, v58, v143
	v_div_fixup_f32 v60, v40, v60, v146
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v52, v57, v62
	v_rcp_f32_e32 v56, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v64, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v40, v53, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v59, v61
	v_div_scale_f32 v59, s2, v144, v51, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v48, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v137
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v59, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v63, v56
	v_div_scale_f32 v63, s1, v143, v58, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v64, v40, v59
	v_div_fixup_f32 v54, v34, v54, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v63, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v50, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v57
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v48, v55, v63
	v_fmac_f32_e32 v55, v52, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v55, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v49, v49, v138
	v_div_fmas_f32 v48, v48, v56, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v64, v40, v59
	v_rcp_f32_e32 v55, v57
	v_div_fixup_f32 v34, v48, v58, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v33, v33, v61, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v52, v50
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v57, v55, 1.0
	v_div_fixup_f32 v33, v33, v51, v144
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	v_add_f32_e32 v59, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v50, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v142, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v0, v0, v137
	v_div_scale_f32 v56, null, v59, v59, v136
	v_div_scale_f32 v50, vcc_lo, v138, v49, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v61, v52
	v_rcp_f32_e32 v48, v56
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v40, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v50, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v140, v54 :: v_dual_add_f32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v57, v62, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v52, v61, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v141, v34 :: v_dual_fmac_f32 v61, v58, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v56, v48, 1.0
	v_fmac_f32_e32 v48, v58, v48
	v_fmac_f32_e32 v62, v51, v55
	v_div_scale_f32 v58, null, v53, v53, v135
	v_div_scale_f32 v51, s0, v137, v0, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v57, v62, v50
	v_div_scale_f32 v57, s1, v136, v59, v136
	v_div_fmas_f32 v50, v50, v55, v62
	v_rcp_f32_e32 v55, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v139, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v50, v49, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v51, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v58, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v52, v54, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v60, v55
	v_dual_mul_f32 v63, v57, v48 :: v_dual_fmac_f32 v54, v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s2, v135, v53, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v56, v63, v57
	v_fma_f32 v51, -v52, v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v50, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v61, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v56, v63, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v51, v0, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v56, v48, v63
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v190
	v_ldexp_f32 v41, v41, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v54, v60, v55 :: v_dual_add_f32 v51, 1.0, v41
	v_div_fixup_f32 v41, v48, v59, v136
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v58, v54, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v51, v51, v130
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v133, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v52, v52, v131
	v_fmac_f32_e32 v54, v46, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v58, v54, v60
	v_div_fmas_f32 v46, v46, v55, v54
	v_rcp_f32_e32 v54, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v62, v50, 1.0
	v_div_scale_f32 v55, s0, v131, v52, v131
	v_div_fixup_f32 v38, v46, v53, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v58, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v56, v54, 1.0
	v_mul_f32_e32 v57, v55, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, s1, v130, v51, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v62, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v59, v50
	v_mul_f32_e32 v59, v58, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v132, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v62, v57, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v56, v59, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v55, v50, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v59, v62, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v60, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v134, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v48, v48, v121
	v_div_fixup_f32 v50, v50, v52, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v56, v59, v58
	v_rcp_f32_e32 v0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v55
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v61, v0, 1.0
	v_div_fmas_f32 v52, v52, v54, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v53, v0
	v_div_scale_f32 v53, s0, v121, v48, v121
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v55, v56, 1.0
	v_div_fixup_f32 v51, v52, v51, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v60, v53, v0
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v62, v56
	v_div_scale_f32 v62, s1, v129, v49, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v61, v60, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v52, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v61, v60, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v59, v54
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v52, v58, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v57, v62, v56 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v55, v57, v62
	v_div_scale_f32 v64, null, v54, v54, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v59, null, v52, v52, v126
	v_fmac_f32_e32 v57, v61, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v59
	v_fma_f32 v42, -v55, v57, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v59, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v63, v62, v63
	v_div_fmas_f32 v0, v53, v0, v60
	v_rcp_f32_e32 v60, v64
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v56, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v61, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, vcc_lo, v126, v52, v126
	v_div_fixup_f32 v0, v0, v48, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v42, v42, v49, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v64, v60, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v55, 1.0, v56 :: v_dual_mul_f32 v56, v57, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v128, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v58, s0, v125, v54, v125
	v_div_scale_f32 v61, null, v55, v55, v124
	v_fma_f32 v48, -v59, v56, v57
	v_mul_f32_e32 v62, v58, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v49, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v48, v63
	v_fma_f32 v48, -v64, v62, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v49, v127, v50 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v59, v56, v57
	v_fmac_f32_e32 v62, v48, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v61, v65, 1.0
	v_div_scale_f32 v51, null, v0, v0, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v50, v50, v63, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v64, v62, v58
	v_fmac_f32_e32 v65, v48, v65
	v_rcp_f32_e32 v48, v51
	v_div_scale_f32 v56, s1, v124, v55, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v50, v50, v52, v126
	v_div_fmas_f32 v53, v53, v60, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v56, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v51, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v54, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v61, v52, v56
	v_fmac_f32_e32 v48, v59, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s0, v123, v0, v123
	v_fmac_f32_e32 v52, v58, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v118
	v_ldexp_f32 v44, v54, v57
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v62, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v44 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v51, v54, v62
	v_fma_f32 v56, -v61, v52, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v63, v63, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v44, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v60, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v51, v54, v62
	v_div_fmas_f32 v52, v56, v65, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v57
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v61, v58, 1.0
	v_div_scale_f32 v57, null, v56, v56, v118
	v_div_fmas_f32 v48, v51, v48, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v57
	v_fmac_f32_e32 v58, v44, v58
	v_div_scale_f32 v62, vcc_lo, v119, v63, v119
	v_div_fixup_f32 v0, v48, v0, v123
	v_div_scale_f32 v48, null, v60, v60, v83
	v_div_fixup_f32 v44, v52, v55, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v62, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v122, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v48
	v_fma_f32 v55, -v57, v54, 1.0
	v_fma_f32 v59, -v61, v52, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v91, v91, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, s0, v118, v56, v118
	v_fmac_f32_e32 v52, v59, v58
	v_fma_f32 v59, -v48, v51, 1.0
	v_div_scale_f32 v64, null, v0, v0, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v55, v54
	v_fma_f32 v50, -v61, v52, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v59, v51
	v_rcp_f32_e32 v59, v64
	v_div_scale_f32 v62, s1, v83, v60, v83
	v_fma_f32 v61, -v57, v53, v55
	v_div_fmas_f32 v50, v50, v58, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v53, v61, v54
	v_mul_f32_e32 v61, v62, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v64, v59, 1.0
	v_div_fixup_f32 v50, v50, v63, v119
	v_div_scale_f32 v63, s2, v117, v0, v117
	v_fma_f32 v55, -v57, v53, v55
	v_fmac_f32_e32 v59, v65, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v48, v61, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v55, v54, v53
	v_mul_f32_e32 v54, v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v57, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v54, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v61, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v54, v57, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v65
	v_ldexp_f32 v52, v58, v52
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v64, v54, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v51, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v113
	v_ldexp_f32 v55, v57, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v52, v52, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v62
	v_div_fmas_f32 v54, v63, v59, v54
	v_div_scale_f32 v59, null, v55, v55, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v60, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v54, v0, v117
	v_rcp_f32_e32 v63, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v116, v50
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v62, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s0, v114, v55, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v58, v61
	v_div_scale_f32 v58, vcc_lo, v115, v52, v115
	v_fma_f32 v60, -v59, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v51, v51, v113
	v_mul_f32_e32 v66, v58, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v86, v86, v0 :: v_dual_fmac_f32 v63, v60, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v64, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v48, v63
	v_div_fixup_f32 v53, v53, v56, v118
	v_fma_f32 v56, -v62, v66, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v56, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v65, v54, 1.0
	v_fma_f32 v53, -v62, v66, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s1, v113, v51, v113
	v_div_scale_f32 v58, null, v0, v0, v112
	v_div_fmas_f32 v53, v53, v61, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v56, v54
	v_fma_f32 v61, -v59, v57, v48
	v_rcp_f32_e32 v60, v58
	v_div_fixup_f32 v50, v53, v52, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v65, v62, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v52, v54
	v_div_scale_f32 v61, s2, v112, v0, v112
	v_fma_f32 v48, -v59, v57, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v66
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v58, v60, 1.0
	v_fma_f32 v56, -v65, v62, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v75, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v60, v53, v60
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v64
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v63, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v61, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v55, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v52, v52, v111
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v58, v57, v61
	v_div_fmas_f32 v54, v56, v54, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v59, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v120, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v63, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v108
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v54, v51, v113
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v54, -v58, v57, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v53, v53, v110
	v_fma_f32 v59, -v66, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v54, v54, v60, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v58
	v_div_scale_f32 v27, s0, v111, v52, v111
	v_fmac_f32_e32 v56, v59, v56
	v_div_fixup_f32 v0, v54, v0, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v55, v55, v64
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v27, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v58, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v109 :: v_dual_add_f32 v0, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v66, v60, v27
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v57
	v_div_scale_f32 v61, s1, v110, v53, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v55, v56
	v_div_scale_f32 v62, null, v0, v0, v108
	v_mul_f32_e32 v55, v61, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v66, v60, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v76, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v62
	v_fma_f32 v51, -v58, v55, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v59, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v55, v51, v57 :: v_dual_add_f32 v50, 1.0, v54
	v_div_fixup_f32 v27, v27, v52, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v48, 1.0
	v_fma_f32 v52, -v58, v55, v61
	v_div_scale_f32 v54, null, v50, v50, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v56, v54
	v_div_fmas_f32 v26, v52, v57, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v51, v48
	v_div_scale_f32 v51, s0, v108, v0, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v51, v48
	v_fma_f32 v60, -v54, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v25, v59, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v53, v110
	v_fma_f32 v53, -v62, v57, v51
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s1, v109, v50, v109
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v53, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v60, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v55, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v25, v25, v97
	v_fma_f32 v51, -v62, v57, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v54, v53, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v53, v61, v56
	v_div_fmas_f32 v48, v51, v48, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v54, v53, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v55, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v94
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v56, v53
	v_div_scale_f32 v56, vcc_lo, v97, v25, v97
	v_fmac_f32_e32 v23, v62, v23
	v_div_scale_f32 v61, null, v52, v52, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v50, v51, v50, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v56, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v60, v61
	v_div_fixup_f32 v0, v48, v0, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v59, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v104, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v55, v57, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v106, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v105, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v48, v23
	v_fma_f32 v58, -v61, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v53, v53, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v55, v57, v56
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v58, s0, v96, v52, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v59
	v_div_fmas_f32 v23, v26, v23, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v103, v27 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v23, v25, v97
	v_mul_f32_e32 v50, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v59, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v61, v50, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v27, v62
	v_div_scale_f32 v27, s1, v95, v53, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, v48, v60
	v_div_scale_f32 v48, null, v0, v0, v94
	v_fma_f32 v26, -v61, v50, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v26, v60, v50
	v_mul_f32_e32 v26, v27, v62
	v_rcp_f32_e32 v50, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v52, v96
	v_fma_f32 v20, -v59, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v20, v62
	v_fma_f32 v2, -v48, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v54
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v59, v26, v27
	v_fmac_f32_e32 v50, v2, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v1, v52
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v27, v62, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v55
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v1, v1, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v53, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v90, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s0, v94, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v20, v20, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v27, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v25, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v52
	v_div_scale_f32 v25, null, v1, v1, v82
	v_fma_f32 v55, -v48, v27, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v51, v51, v81
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v27, v55, v50
	v_div_scale_f32 v65, s2, v80, v2, v80
	v_rcp_f32_e32 v57, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v52, v53, 1.0
	v_fma_f32 v48, -v48, v27, v56
	v_rcp_f32_e32 v56, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v55, v53
	v_div_fmas_f32 v27, v48, v50, v27
	v_div_scale_f32 v48, null, v2, v2, v80
	v_div_scale_f32 v50, vcc_lo, v87, v20, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v27, v0, v94
	v_rcp_f32_e32 v58, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v25, v56, 1.0
	v_fma_f32 v27, -v54, v57, 1.0
	v_dual_mul_f32 v59, v50, v53 :: v_dual_mul_f32 v62, v93, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v55, v56
	v_div_scale_f32 v55, s0, v82, v1, v82
	v_fmac_f32_e32 v57, v27, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v48, v58, 1.0
	v_div_scale_f32 v27, s1, v81, v51, v81
	v_fma_f32 v0, -v52, v59, v50
	v_dual_mul_f32 v63, v55, v56 :: v_dual_fmac_f32 v58, v60, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v64, v27, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v89, v22 :: v_dual_fmac_f32 v59, v0, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v25, v63, v55
	v_mul_f32_e32 v66, v65, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v54, v64, v27
	v_fma_f32 v22, -v52, v59, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v0, v56
	v_fma_f32 v0, -v48, v66, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v64, v26, v57
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v50, |v91|, |v92|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v53, v59
	v_fma_f32 v25, -v25, v63, v55
	v_fmac_f32_e32 v66, v0, v58
	v_fma_f32 v0, -v54, v64, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v59, v88, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v56, v63
	v_fma_f32 v26, -v48, v66, v65
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v22, v20, v87
	v_div_fmas_f32 v0, v0, v57, v64
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v25, v1, v82
	v_div_fmas_f32 v26, v26, v58, v66
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v32|, |v28|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v51, v81
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v24|, |v36|, |v35|
	v_max3_f32 v25, |v47|, |v39|, |v37|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v26, v2, v80
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v31|, |v18|, |v16|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v79, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v27, |v49|, |v100|, |v101|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v72, v2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v22, |v21|, v23
	v_max3_f32 v22, v25, v26, |v17|
	v_max_f32_e64 v23, |v45|, |v40|
	v_max3_f32 v25, |v34|, |v107|, |v46|
	v_max3_f32 v48, |v42|, |v14|, |v13|
	v_max3_f32 v52, |v44|, |v83|, |v84|
	v_max3_f32 v53, |v75|, |v76|, |v77|
	v_max3_f32 v55, |v78|, |v10|, |v8|
	v_max3_f32 v26, |v41|, |v38|, |v15|
	v_max3_f32 v23, v23, |v33|, v25
	v_max3_f32 v25, v27, v48, |v12|
	v_max3_f32 v27, |v85|, |v86|, |v11|
	v_max3_f32 v48, v50, |v43|, v52
	v_max3_f32 v50, v53, v55, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v53, v74, v1 :: v_dual_mul_f32 v52, v73, v20
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v22
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v23, v26, v25
	v_max3_f32 v2, v48, v27, v50
	v_max_f32_e64 v20, |v67|, |v68|
	v_max3_f32 v22, |v69|, |v59|, |v60|
	v_max3_f32 v25, |v52|, |v53|, |v54|
	v_max3_f32 v26, |v51|, |v4|, |v5|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, |v70|, v22
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v22, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v26, |v6|
	v_max_f32_e32 v26, v27, v27
	v_max3_f32 v23, |v61|, |v62|, |v7|
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v27, v48, v48 :: v_dual_max_f32 v22, v22, v22
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v63, 3, v71
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v0, v26
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v98
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v23, v25
	v_dual_max_f32 v56, v1, v22 :: v_dual_max_f32 v57, v2, v27
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v22, v0, 9, 0
	v_lshlrev_b32_e32 v23, 5, v0
	v_lshlrev_b32_e32 v25, 4, v98
	v_permlanex16_b32 v1, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v98
	v_and_b32_e32 v26, 8, v98
	v_lshl_add_u32 v22, v2, 2, v22
	v_and_or_b32 v48, 0x680, v25, v23
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 1, v71
	v_xor_b32_e32 v50, v23, v27
	v_lshl_add_u32 v22, v26, 4, v22
	v_xor_b32_e32 v48, v48, v27
	v_lshl_add_u32 v64, v2, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v20, v1
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 3, v26
	v_add3_u32 v1, v22, v25, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, v64, v63, v48
	v_add_nc_u32_e32 v63, 0, v71
	ds_store_b128 v1, v[55:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v55 :: v_dual_mov_b32 v20, v56
	v_mov_b32_e32 v22, v57
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v55, v55
	v_max_f32_e32 v50, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v58, v58
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v1, v48, v1
	v_max_f32_e32 v48, v57, v57
	v_max_f32_e32 v20, v50, v20
	v_max_f32_e32 v50, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v48, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v57, v20 :: v_dual_max_f32 v48, v55, v50
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v50, v22
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v55, v48
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v56 :: v_dual_max_f32 v50, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v57 :: v_dual_max_f32 v55, v55, v55
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v22, v50 :: v_dual_mov_b32 v57, v20
	v_max_f32_e32 v48, v48, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v50, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v56, v56
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v57, v57
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v1, v55
	v_dual_max_f32 v1, v50, v50 :: v_dual_max_f32 v56, v20, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v20, v58, v58
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v50, 1, v27
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v57, v22, v1
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v0, v0, 4, 0
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v48, v20
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v63, v50, v26
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v22, 4, v102
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v1, v26
	ds_store_b128 v2, v[55:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v0
.Ltmp59:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v55, v55
	v_max_f32_e32 v48, v57, v57
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 32, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v48, 0x2b8cbccc, v48
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v56, 0x2b8cbccc, v56
	v_max_f32_e32 v58, 0x2b8cbccc, v58
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s26, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s27, 0, s0
	v_add_co_u32 v63, s0, s26, v55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v65, v57
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v64, null, s27, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[60:61], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[34:35], v[0:1]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v50, -v20, v26, 1.0
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v56
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[60:61], v[63:64]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v50, v26
	v_div_scale_f32 v50, vcc_lo, v2, 0x40e00000, v2
	v_fma_f32 v66, -v57, v65, 1.0
	v_div_scale_f32 v72, null, 0x40e00000, 0x40e00000, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v55, v50, v26
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, s6, v48, 0x40e00000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v55, v50
	v_fmac_f32_e32 v55, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s26, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s27, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v55, v50
	v_rcp_f32_e32 v50, v71
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[63:64]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[60:61], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v55
	v_mul_f32_e32 v26, v66, v65
	v_rcp_f32_e32 v55, v72
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v63, -v71, v50, 1.0
	v_fma_f32 v20, -v57, v26, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v63, v50
	v_div_scale_f32 v63, s7, v56, 0x40e00000, v56
	v_fmac_f32_e32 v26, v20, v65
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v74, v63, v50
	v_fma_f32 v73, -v72, v55, 1.0
	v_fma_f32 v0, -v57, v26, v66
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v57, -v71, v74, v63
	v_fmac_f32_e32 v55, v73, v55
	v_div_scale_f32 v73, s8, v58, 0x40e00000, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v65, v26
	v_fmac_f32_e32 v74, v57, v50
	v_mul_f32_e32 v66, v73, v55
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v65, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v48
	v_fma_f32 v48, -v71, v74, v63
	v_fma_f32 v2, -v72, v66, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s26, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v63, null, v65, v65, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v66, v2, v55
	v_div_fmas_f32 v2, v48, v50, v74
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v71, v63
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s27, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v48, -v72, v66, v73
	v_div_fixup_f32 v2, v2, 0x40e00000, v56
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v26.h
	v_mov_b16_e32 v57.h, v64.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[60:61], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v48, v48, v55, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v55, null, v65, v65, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v56, -v63, v71, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v57.l, v2.h
	v_and_b32_e32 v50, 1, v64
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v48, v48, 0x40e00000, v58
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v58, v55
	v_fmac_f32_e32 v71, v56, v71
	v_div_scale_f32 v56, vcc_lo, v32, v65, v32
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v57
	v_add3_u32 v1, v26, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v66, v56, v71
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v48.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v72, null, v65, v65, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v63, v66, v56
	v_div_scale_f32 v73, null, v65, v65, v24
	v_fma_f32 v50, -v55, v58, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v57, 1, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v64, v72
	v_fmac_f32_e32 v66, v0, v71
	v_rcp_f32_e32 v0, v73
	v_fmac_f32_e32 v58, v50, v58
	v_div_scale_f32 v74, s8, v28, v65, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v63, v66, v56
	v_div_scale_f32 v82, null, v65, v65, v36
	v_mul_f32_e32 v79, v74, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v72, v64, 1.0
	v_div_fmas_f32 v56, v56, v71, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v73, v0, 1.0
	v_rcp_f32_e32 v66, v82
	v_fma_f32 v63, -v55, v79, v74
	v_fmac_f32_e32 v64, v80, v64
	v_div_scale_f32 v80, s9, v21, v65, v21
	v_fmac_f32_e32 v0, v81, v0
	v_div_scale_f32 v81, null, v65, v65, v35
	v_fmac_f32_e32 v79, v63, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v80, v64
	v_div_scale_f32 v71, s10, v24, v65, v24
	v_rcp_f32_e32 v87, v81
	v_div_fixup_f32 v32, v56, v65, v32
	v_fma_f32 v55, -v55, v79, v74
	v_fma_f32 v56, -v72, v63, v80
	v_mul_f32_e32 v74, v71, v0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v88, -v82, v66, 1.0
	v_div_fmas_f32 v55, v55, v58, v79
	v_fmac_f32_e32 v63, v56, v64
	v_fma_f32 v56, -v73, v74, v71
	v_fma_f32 v79, -v81, v87, 1.0
	v_fmac_f32_e32 v66, v88, v66
	v_div_scale_f32 v58, s8, v36, v65, v36
	v_div_fixup_f32 v28, v55, v65, v28
	v_fma_f32 v55, -v72, v63, v80
	v_dual_fmac_f32 v74, v56, v0 :: v_dual_fmac_f32 v87, v79, v87
	v_div_scale_f32 v79, null, v65, v65, v30
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v56, v58, v66
	v_div_scale_f32 v72, s11, v35, v65, v35
	v_div_fmas_f32 v55, v55, v64, v63
	v_fma_f32 v63, -v73, v74, v71
	v_rcp_f32_e32 v71, v79
	v_div_scale_f32 v80, null, v65, v65, v29
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v64, -v82, v56, v58
	v_mul_f32_e32 v73, v72, v87
	v_div_fmas_f32 v0, v63, v0, v74
	v_rcp_f32_e32 v63, v80
	v_div_fixup_f32 v21, v55, v65, v21
	v_fmac_f32_e32 v56, v64, v66
	v_fma_f32 v64, -v81, v73, v72
	v_fma_f32 v74, -v79, v71, 1.0
	v_div_fixup_f32 v24, v0, v65, v24
	v_div_scale_f32 v55, s9, v30, v65, v30
	v_fma_f32 v0, -v82, v56, v58
	v_fmac_f32_e32 v73, v64, v87
	v_fmac_f32_e32 v71, v74, v71
	v_fma_f32 v58, -v80, v63, 1.0
	v_div_scale_f32 v64, null, v65, v65, v19
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v74, null, v65, v65, v47
	v_div_fmas_f32 v0, v0, v66, v56
	v_fma_f32 v56, -v81, v73, v72
	v_mul_f32_e32 v66, v55, v71
	v_fmac_f32_e32 v63, v58, v63
	v_rcp_f32_e32 v58, v64
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v72, s8, v29, v65, v29
	v_div_fmas_f32 v56, v56, v87, v73
	v_fma_f32 v73, -v79, v66, v55
	v_rcp_f32_e32 v87, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v81, v72, v63
	v_div_fixup_f32 v36, v0, v65, v36
	v_div_fixup_f32 v35, v56, v65, v35
	v_fma_f32 v82, -v64, v58, 1.0
	v_fmac_f32_e32 v66, v73, v71
	v_div_scale_f32 v73, null, v65, v65, v39
	v_fma_f32 v0, -v80, v81, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v58, v82, v58
	v_div_scale_f32 v56, s10, v19, v65, v19
	v_fma_f32 v82, -v74, v87, 1.0
	v_fma_f32 v55, -v79, v66, v55
	v_rcp_f32_e32 v79, v73
	v_fmac_f32_e32 v81, v0, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v0, v56, v58 :: v_dual_fmac_f32 v87, v82, v87
	v_div_scale_f32 v82, s11, v47, v65, v47
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v65, v65, v37
	v_div_fmas_f32 v55, v55, v71, v66
	v_fma_f32 v66, -v80, v81, v72
	v_fma_f32 v71, -v64, v0, v56
	v_mul_f32_e32 v72, v82, v87
	v_fma_f32 v80, -v73, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v55, v65, v30
	v_div_fmas_f32 v63, v66, v63, v81
	v_fmac_f32_e32 v0, v71, v58
	v_rcp_f32_e32 v66, v88
	v_fma_f32 v71, -v74, v72, v82
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, s8, v39, v65, v39
	v_fma_f32 v55, -v64, v0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v71, v87
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v56, v80, v79
	v_div_fixup_f32 v29, v63, v65, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v63, -v88, v66, 1.0
	v_div_scale_f32 v64, null, v65, v65, v31
	v_div_fmas_f32 v0, v55, v58, v0
	v_fma_f32 v55, -v74, v72, v82
	v_fma_f32 v58, -v73, v56, v80
	v_div_scale_f32 v74, null, v65, v65, v18
	v_fmac_f32_e32 v66, v63, v66
	v_rcp_f32_e32 v63, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v58, v79
	v_rcp_f32_e32 v58, v74
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v71, s9, v37, v65, v37
	v_div_fmas_f32 v55, v55, v87, v72
	v_div_fixup_f32 v0, v0, v65, v19
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v72, v71, v66
	v_fma_f32 v81, -v64, v63, 1.0
	v_div_fixup_f32 v19, v55, v65, v47
	v_fma_f32 v47, -v73, v56, v80
	v_fma_f32 v80, -v74, v58, 1.0
	v_fma_f32 v55, -v88, v72, v71
	v_fmac_f32_e32 v63, v81, v63
	v_div_scale_f32 v73, s10, v31, v65, v31
	v_div_scale_f32 v81, null, v65, v65, v16
	v_fmac_f32_e32 v58, v80, v58
	v_div_scale_f32 v80, null, v65, v65, v17
	v_div_fmas_f32 v47, v47, v79, v56
	v_dual_fmac_f32 v72, v55, v66 :: v_dual_mul_f32 v55, v73, v63
	v_rcp_f32_e32 v56, v81
	v_div_scale_f32 v79, s8, v18, v65, v18
	v_rcp_f32_e32 v87, v80
	v_div_fixup_f32 v39, v47, v65, v39
	v_fma_f32 v47, -v88, v72, v71
	v_fma_f32 v71, -v64, v55, v73
	v_mul_f32_e32 v82, v79, v58
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v48, v57, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v26
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v88, -v81, v56, 1.0
	v_div_fmas_f32 v47, v47, v66, v72
	v_fmac_f32_e32 v55, v71, v63
	v_fma_f32 v66, -v74, v82, v79
	v_fma_f32 v72, -v80, v87, 1.0
	v_fmac_f32_e32 v56, v88, v56
	v_div_scale_f32 v71, s9, v16, v65, v16
	v_div_fixup_f32 v37, v47, v65, v37
	v_fma_f32 v47, -v64, v55, v73
	v_dual_fmac_f32 v82, v66, v58 :: v_dual_fmac_f32 v87, v72, v87
	v_div_scale_f32 v72, null, v57, v57, v45
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v64, v71, v56
	v_div_scale_f32 v66, s11, v17, v65, v17
	v_div_fmas_f32 v47, v47, v63, v55
	v_fma_f32 v55, -v74, v82, v79
	v_rcp_f32_e32 v73, v72
	v_div_scale_f32 v79, null, v57, v57, v40
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v63, -v81, v64, v71
	v_mul_f32_e32 v74, v66, v87
	v_div_fmas_f32 v55, v55, v58, v82
	v_rcp_f32_e32 v58, v79
	v_div_fixup_f32 v31, v47, v65, v31
	v_fmac_f32_e32 v64, v63, v56
	v_fma_f32 v63, -v80, v74, v66
	v_fma_f32 v82, -v72, v73, 1.0
	v_div_fixup_f32 v18, v55, v65, v18
	v_div_scale_f32 v55, s8, v45, v57, v45
	v_fma_f32 v47, -v81, v64, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v74, v63, v87 :: v_dual_fmac_f32 v73, v82, v73
	v_fma_f32 v63, -v79, v58, 1.0
	v_div_scale_f32 v71, null, v57, v57, v33
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v56, v64
	v_fma_f32 v56, -v80, v74, v66
	v_mul_f32_e32 v64, v55, v73
	v_fmac_f32_e32 v58, v63, v58
	v_rcp_f32_e32 v63, v71
	v_div_scale_f32 v66, s9, v40, v57, v40
	v_div_scale_f32 v80, null, v57, v57, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v81, v66, v58
	v_div_fmas_f32 v56, v56, v87, v74
	v_fma_f32 v74, -v72, v64, v55
	v_rcp_f32_e32 v87, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v71, v63, 1.0
	v_div_fixup_f32 v16, v47, v65, v16
	v_div_fixup_f32 v17, v56, v65, v17
	v_fmac_f32_e32 v64, v74, v73
	v_fma_f32 v47, -v79, v81, v66
	v_div_scale_f32 v65, null, v57, v57, v107
	v_fmac_f32_e32 v63, v82, v63
	v_div_scale_f32 v56, s10, v33, v57, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v80, v87, 1.0
	v_fma_f32 v55, -v72, v64, v55
	v_fmac_f32_e32 v81, v47, v58
	v_rcp_f32_e32 v72, v65
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v47, v56, v63
	v_fmac_f32_e32 v87, v74, v87
	v_div_scale_f32 v74, s11, v34, v57, v34
	v_div_fmas_f32 v55, v55, v73, v64
	v_fma_f32 v64, -v79, v81, v66
	v_div_scale_f32 v82, null, v57, v57, v46
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v66, -v71, v47, v56
	v_mul_f32_e32 v73, v74, v87
	v_fma_f32 v79, -v65, v72, 1.0
	v_div_fmas_f32 v58, v64, v58, v81
	v_rcp_f32_e32 v64, v82
	v_fmac_f32_e32 v47, v66, v63
	v_fma_f32 v66, -v80, v73, v74
	v_fmac_f32_e32 v72, v79, v72
	v_div_scale_f32 v79, s8, v107, v57, v107
	v_div_fixup_f32 v45, v55, v57, v45
	v_div_fixup_f32 v40, v58, v57, v40
	v_fma_f32 v55, -v71, v47, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v73, v66, v87 :: v_dual_mul_f32 v56, v79, v72
	v_fma_f32 v58, -v82, v64, 1.0
	v_div_scale_f32 v66, null, v57, v57, v41
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v71, s9, v46, v57, v46
	v_div_fmas_f32 v47, v55, v63, v47
	v_fma_f32 v55, -v80, v73, v74
	v_fma_f32 v63, -v65, v56, v79
	v_fmac_f32_e32 v64, v58, v64
	v_rcp_f32_e32 v58, v66
	v_div_scale_f32 v74, null, v57, v57, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v63, v72
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v33, v47, v57, v33
	v_rcp_f32_e32 v63, v74
	v_div_fmas_f32 v55, v55, v87, v73
	v_mul_f32_e32 v73, v71, v64
	v_fma_f32 v47, -v65, v56, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v66, v58, 1.0
	v_div_scale_f32 v65, s10, v41, v57, v41
	v_div_fixup_f32 v34, v55, v57, v34
	v_fma_f32 v55, -v82, v73, v71
	v_fmac_f32_e32 v58, v80, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v74, v63, 1.0
	v_div_scale_f32 v80, null, v57, v57, v15
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v73, v55, v64
	v_div_fmas_f32 v47, v47, v72, v56
	v_mul_f32_e32 v55, v65, v58
	v_fmac_f32_e32 v63, v79, v63
	v_rcp_f32_e32 v56, v80
	v_div_scale_f32 v72, s8, v38, v57, v38
	v_div_scale_f32 v79, null, v57, v57, v49
	v_fma_f32 v71, -v82, v73, v71
	v_fma_f32 v81, -v66, v55, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v72, v63
	v_rcp_f32_e32 v87, v79
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v80, v56, 1.0
	v_div_fmas_f32 v64, v71, v64, v73
	v_fmac_f32_e32 v55, v81, v58
	v_fma_f32 v71, -v74, v82, v72
	v_div_scale_f32 v73, s9, v15, v57, v15
	v_fmac_f32_e32 v56, v88, v56
	v_div_fixup_f32 v46, v64, v57, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v79, v87, 1.0
	v_fma_f32 v64, -v66, v55, v65
	v_fmac_f32_e32 v82, v71, v63
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v65, v73, v56
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v66, s11, v49, v57, v49
	v_div_scale_f32 v71, null, v57, v57, v100
	v_div_fmas_f32 v55, v64, v58, v55
	v_fma_f32 v58, -v74, v82, v72
	v_div_scale_f32 v81, null, v57, v57, v101
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v64, -v80, v65, v73
	v_rcp_f32_e32 v72, v71
	v_mul_f32_e32 v74, v66, v87
	v_div_fmas_f32 v58, v58, v63, v82
	v_rcp_f32_e32 v63, v81
	v_fmac_f32_e32 v65, v64, v56
	v_div_fixup_f32 v41, v55, v57, v41
	v_fma_f32 v64, -v79, v74, v66
	v_div_fixup_f32 v38, v58, v57, v38
	v_div_scale_f32 v58, s8, v100, v57, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v71, v72, 1.0
	v_fma_f32 v55, -v80, v65, v73
	v_fmac_f32_e32 v74, v64, v87
	v_fma_f32 v64, -v81, v63, 1.0
	v_div_scale_f32 v73, null, v57, v57, v42
	v_fmac_f32_e32 v72, v82, v72
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v64, v63
	v_rcp_f32_e32 v64, v73
	v_div_fmas_f32 v55, v55, v56, v65
	v_fma_f32 v56, -v79, v74, v66
	v_mul_f32_e32 v65, v58, v72
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v66, s9, v101, v57, v101
	v_div_scale_f32 v79, null, v57, v57, v14
	v_div_fmas_f32 v56, v56, v87, v74
	v_fma_f32 v74, -v71, v65, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v73, v64, 1.0
	v_mul_f32_e32 v80, v66, v63
	v_rcp_f32_e32 v87, v79
	v_div_fixup_f32 v15, v55, v57, v15
	v_fmac_f32_e32 v65, v74, v72
	v_fmac_f32_e32 v64, v82, v64
	v_div_scale_f32 v74, s10, v42, v57, v42
	v_fma_f32 v55, -v81, v80, v66
	v_div_scale_f32 v82, null, v57, v57, v13
	v_fma_f32 v58, -v71, v65, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v71, v74, v64
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v56, v57, v49
	v_fma_f32 v56, -v79, v87, 1.0
	v_fmac_f32_e32 v80, v55, v63
	v_rcp_f32_e32 v88, v82
	v_div_fmas_f32 v55, v58, v72, v65
	v_fma_f32 v58, -v73, v71, v74
	v_div_scale_f32 v72, null, v57, v57, v12
	v_dual_fmac_f32 v87, v56, v87 :: v_dual_and_b32 v50, 0xffff0000, v2
	v_div_scale_f32 v89, s11, v14, v57, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v58, v64
	v_rcp_f32_e32 v58, v72
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v65, v89, v87 :: v_dual_and_b32 v48, 0xffff0000, v1
	v_fma_f32 v56, -v81, v80, v66
	v_fma_f32 v66, -v82, v88, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v73, -v73, v71, v74
	v_div_scale_f32 v81, null, v48, v48, v92
	v_div_fmas_f32 v56, v56, v63, v80
	v_fma_f32 v63, -v79, v65, v89
	v_fmac_f32_e32 v88, v66, v88
	v_div_scale_f32 v66, s8, v13, v57, v13
	v_fma_f32 v74, -v72, v58, 1.0
	v_div_scale_f32 v80, null, v48, v48, v91
	v_fmac_f32_e32 v65, v63, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v66, v88
	v_fmac_f32_e32 v58, v74, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v74, v80
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v47, v47, v57, v107
	v_div_fmas_f32 v64, v73, v64, v71
	v_fma_f32 v71, -v79, v65, v89
	v_fma_f32 v73, -v82, v63, v66
	v_div_scale_f32 v79, s9, v12, v57, v12
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v64, v57, v42
	v_div_fmas_f32 v65, v71, v87, v65
	v_fmac_f32_e32 v63, v73, v88
	v_rcp_f32_e32 v71, v81
	v_mul_f32_e32 v73, v79, v58
	v_fma_f32 v87, -v80, v74, 1.0
	v_div_fixup_f32 v14, v65, v57, v14
	v_fma_f32 v64, -v82, v63, v66
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v65, -v72, v73, v79
	v_fmac_f32_e32 v74, v87, v74
	v_div_scale_f32 v87, null, v48, v48, v43
	v_div_scale_f32 v66, s10, v91, v48, v91
	v_fma_f32 v82, -v81, v71, 1.0
	v_div_fmas_f32 v63, v64, v88, v63
	v_fmac_f32_e32 v73, v65, v58
	v_rcp_f32_e32 v65, v87
	v_div_scale_f32 v88, null, v48, v48, v44
	v_mul_f32_e32 v64, v66, v74
	v_fmac_f32_e32 v71, v82, v71
	v_div_scale_f32 v82, s8, v92, v48, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v88
	v_div_fixup_f32 v13, v63, v57, v13
	v_fma_f32 v63, -v72, v73, v79
	v_fma_f32 v72, -v80, v64, v66
	v_mul_f32_e32 v79, v82, v71
	v_fma_f32 v90, -v87, v65, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v55, v55, v57, v100
	v_div_fmas_f32 v58, v63, v58, v73
	v_fmac_f32_e32 v64, v72, v74
	v_fma_f32 v63, -v81, v79, v82
	v_fmac_f32_e32 v65, v90, v65
	v_div_scale_f32 v72, s9, v43, v48, v43
	v_fma_f32 v73, -v88, v89, 1.0
	v_div_fixup_f32 v56, v56, v57, v101
	v_div_fixup_f32 v12, v58, v57, v12
	v_fma_f32 v57, -v80, v64, v66
	v_fmac_f32_e32 v79, v63, v71
	v_mul_f32_e32 v63, v72, v65
	v_fmac_f32_e32 v89, v73, v89
	v_div_scale_f32 v73, null, v48, v48, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v66, s11, v44, v48, v44
	v_div_fmas_f32 v57, v57, v74, v64
	v_fma_f32 v58, -v81, v79, v82
	v_fma_f32 v64, -v87, v63, v72
	v_rcp_f32_e32 v74, v73
	v_div_scale_f32 v81, null, v48, v48, v84
	v_mul_f32_e32 v80, v66, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v64, v65
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v64, v81
	v_div_fmas_f32 v58, v58, v71, v79
	v_fma_f32 v71, -v88, v80, v66
	v_fma_f32 v72, -v87, v63, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v73, v74, 1.0
	v_div_scale_f32 v82, null, v48, v48, v85
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v71, v89
	v_fmac_f32_e32 v74, v79, v74
	v_div_scale_f32 v71, s8, v83, v48, v83
	v_fma_f32 v79, -v81, v64, 1.0
	v_div_fmas_f32 v63, v72, v65, v63
	v_rcp_f32_e32 v72, v82
	v_div_scale_f32 v87, null, v48, v48, v86
	v_fma_f32 v65, -v88, v80, v66
	v_mul_f32_e32 v66, v71, v74
	v_fmac_f32_e32 v64, v79, v64
	v_div_scale_f32 v79, s9, v84, v48, v84
	v_rcp_f32_e32 v90, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v63, v48, v43
	v_div_fmas_f32 v65, v65, v89, v80
	v_fma_f32 v80, -v73, v66, v71
	v_mul_f32_e32 v88, v79, v64
	v_fma_f32 v89, -v82, v72, 1.0
	v_div_fixup_f32 v57, v57, v48, v91
	v_div_fixup_f32 v44, v65, v48, v44
	v_fmac_f32_e32 v66, v80, v74
	v_fma_f32 v63, -v81, v88, v79
	v_fmac_f32_e32 v72, v89, v72
	v_div_scale_f32 v65, s10, v85, v48, v85
	v_div_scale_f32 v80, null, v48, v48, v11
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v71, -v73, v66, v71
	v_fmac_f32_e32 v88, v63, v64
	v_mul_f32_e32 v73, v65, v72
	v_rcp_f32_e32 v91, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v86, v48, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v58, v58, v48, v92
	v_div_fmas_f32 v63, v71, v74, v66
	v_fma_f32 v66, -v81, v88, v79
	v_fma_f32 v71, -v82, v73, v65
	v_mul_f32_e32 v74, v89, v90
	v_div_scale_f32 v81, null, v48, v48, v75
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v80, v91, 1.0
	v_div_fmas_f32 v64, v66, v64, v88
	v_fmac_f32_e32 v73, v71, v72
	v_rcp_f32_e32 v71, v81
	v_fma_f32 v66, -v87, v74, v89
	v_fmac_f32_e32 v91, v79, v91
	v_div_scale_f32 v79, s8, v11, v48, v11
	v_div_fixup_f32 v63, v63, v48, v83
	v_fma_f32 v65, -v82, v73, v65
	v_fmac_f32_e32 v74, v66, v90
	v_div_scale_f32 v83, null, v48, v48, v76
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v64, v64, v48, v84
	v_mul_f32_e32 v82, v79, v91
	v_fma_f32 v66, -v81, v71, 1.0
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v72, -v87, v74, v89
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v88, null, v48, v48, v77
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v73, -v80, v82, v79
	v_fmac_f32_e32 v71, v66, v71
	v_div_scale_f32 v87, s9, v75, v48, v75
	v_div_fmas_f32 v66, v72, v90, v74
	v_rcp_f32_e32 v72, v88
	v_fmac_f32_e32 v82, v73, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v73, v87, v71
	v_fma_f32 v74, -v83, v84, 1.0
	v_div_fixup_f32 v65, v65, v48, v85
	v_div_fixup_f32 v66, v66, v48, v86
	v_fma_f32 v79, -v80, v82, v79
	v_fma_f32 v80, -v81, v73, v87
	v_fmac_f32_e32 v84, v74, v84
	v_div_scale_f32 v74, s10, v76, v48, v76
	v_fma_f32 v85, -v88, v72, 1.0
	v_div_scale_f32 v86, null, v48, v48, v78
	v_div_scale_f32 v89, null, v48, v48, v10
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v73, v80, v71
	v_div_fmas_f32 v79, v79, v91, v82
	v_mul_f32_e32 v80, v74, v84
	v_fmac_f32_e32 v72, v85, v72
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v85, s8, v77, v48, v77
	v_rcp_f32_e32 v90, v89
	v_div_fixup_f32 v11, v79, v48, v11
	v_fma_f32 v79, -v81, v73, v87
	v_fma_f32 v81, -v83, v80, v74
	v_mul_f32_e32 v87, v85, v72
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v86, v82, 1.0
	v_div_fmas_f32 v71, v79, v71, v73
	v_fmac_f32_e32 v80, v81, v84
	v_fma_f32 v73, -v88, v87, v85
	v_fma_f32 v81, -v89, v90, 1.0
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v79, s9, v78, v48, v78
	v_fma_f32 v74, -v83, v80, v74
	v_fmac_f32_e32 v87, v73, v72
	v_fmac_f32_e32 v90, v81, v90
	v_div_scale_f32 v81, null, v48, v48, v8
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v71, v71, v48, v75
	v_mul_f32_e32 v73, v79, v82
	v_div_scale_f32 v75, s11, v10, v48, v10
	v_div_fmas_f32 v74, v74, v84, v80
	v_fma_f32 v80, -v88, v87, v85
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v88, null, v48, v48, v9
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v86, v73, v79
	v_mul_f32_e32 v85, v75, v90
	v_div_fmas_f32 v72, v80, v72, v87
	v_rcp_f32_e32 v80, v88
	v_div_fixup_f32 v74, v74, v48, v76
	v_fmac_f32_e32 v73, v83, v82
	v_fma_f32 v83, -v89, v85, v75
	v_fma_f32 v87, -v81, v84, 1.0
	v_div_fixup_f32 v72, v72, v48, v77
	v_div_scale_f32 v77, s8, v8, v48, v8
	v_fma_f32 v76, -v86, v73, v79
	v_fmac_f32_e32 v85, v83, v90
	v_fmac_f32_e32 v84, v87, v84
	v_fma_f32 v79, -v88, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v50, v50, v68
	v_div_fmas_f32 v73, v76, v82, v73
	v_fma_f32 v75, -v89, v85, v75
	v_mul_f32_e32 v76, v77, v84
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, null, v50, v50, v67
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v82, s9, v9, v48, v9
	v_div_fmas_f32 v75, v75, v90, v85
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v85, -v81, v76, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v82, v80
	v_div_fixup_f32 v73, v73, v48, v78
	v_div_fixup_f32 v10, v75, v48, v10
	v_rcp_f32_e32 v78, v87
	v_fmac_f32_e32 v76, v85, v84
	v_fma_f32 v75, -v88, v86, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v50, v50, v69
	v_fma_f32 v85, -v79, v83, 1.0
	v_fma_f32 v77, -v81, v76, v77
	v_div_scale_f32 v81, null, v50, v50, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v75, v80 :: v_dual_fmac_f32 v83, v85, v83
	v_div_scale_f32 v75, s10, v67, v50, v67
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v89, -v87, v78, 1.0
	v_div_fmas_f32 v76, v77, v84, v76
	v_fma_f32 v77, -v88, v86, v82
	v_mul_f32_e32 v82, v75, v83
	v_div_scale_f32 v84, s8, v68, v50, v68
	v_fmac_f32_e32 v78, v89, v78
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v79, v82, v75
	v_fma_f32 v88, -v81, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_mul_f32_e32 v91, v84, v78
	v_div_fmas_f32 v77, v77, v80, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v82, v89, v83 :: v_dual_fmac_f32 v85, v88, v85
	v_div_scale_f32 v88, s11, v70, v50, v70
	v_fma_f32 v80, -v87, v91, v84
	v_div_fixup_f32 v8, v76, v48, v8
	v_div_fixup_f32 v9, v77, v48, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v88, v85
	v_fma_f32 v48, -v79, v82, v75
	v_div_scale_f32 v77, null, v50, v50, v59
	v_fmac_f32_e32 v91, v80, v78
	v_fma_f32 v75, -v81, v86, v88
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v91, v84
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v77
	v_fmac_f32_e32 v92, v76, v92
	v_div_scale_f32 v76, s9, v69, v50, v69
	v_div_fmas_f32 v48, v48, v83, v82
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v79, v78, v91
	v_fma_f32 v79, -v81, v86, v88
	v_mul_f32_e32 v80, v76, v92
	v_div_scale_f32 v81, null, v50, v50, v60
	v_fma_f32 v82, -v77, v75, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v84, -v90, v80, v76
	v_div_fmas_f32 v79, v79, v85, v86
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s8, v59, v50, v59
	v_div_fixup_f32 v48, v48, v50, v67
	v_fmac_f32_e32 v80, v84, v92
	v_div_fixup_f32 v67, v78, v50, v68
	v_div_fixup_f32 v68, v79, v50, v70
	v_mul_f32_e32 v70, v82, v75
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	v_div_scale_f32 v79, null, v50, v50, v61
	v_fma_f32 v84, -v77, v70, v82
	v_fmac_f32_e32 v83, v78, v83
	v_div_scale_f32 v78, s10, v60, v50, v60
	v_div_fmas_f32 v76, v76, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v84, v75
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v78, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v69, v76, v50, v69
	v_fma_f32 v76, -v77, v70, v82
	v_div_scale_f32 v84, null, v50, v50, v62
	v_fma_f32 v77, -v81, v80, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v76, v75, v70
	v_div_scale_f32 v75, null, v50, v50, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v77, v83
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v76, s8, v61, v50, v61
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v50, v50, v52
	v_div_fixup_f32 v59, v70, v50, v59
	v_fma_f32 v78, -v81, v80, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v77, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v70, v86
	v_div_scale_f32 v70, s9, v62, v50, v62
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, null, v50, v50, v53
	v_div_fmas_f32 v78, v78, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v70, v86
	v_div_scale_f32 v89, s10, v7, v50, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v70
	v_mul_f32_e32 v92, v89, v77
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v52, v50, v52
	v_div_fixup_f32 v60, v78, v50, v60
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v78, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v70, -v84, v83, v70
	v_fmac_f32_e32 v92, v78, v77
	v_fma_f32 v78, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v53, v50, v53
	v_div_fmas_f32 v76, v76, v85, v81
	v_div_scale_f32 v81, null, v50, v50, v54
	v_fma_f32 v75, -v75, v92, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v79, v78, v88 :: v_dual_mul_f32 v78, v80, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v61, v76, v50, v61
	v_div_fmas_f32 v70, v70, v86, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v77, v92
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v82, -v87, v78, v80
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v62, v70, v50, v62
	v_div_fixup_f32 v7, v75, v50, v7
	v_div_fmas_f32 v77, v77, v88, v79
	v_fmac_f32_e32 v78, v82, v91
	v_div_scale_f32 v75, null, v50, v50, v51
	v_fma_f32 v76, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v52, v77, v50, v52
	v_fma_f32 v70, -v87, v78, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v75
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v50, v50, v4
	v_div_fmas_f32 v70, v70, v91, v78
	v_div_scale_f32 v78, null, v50, v50, v5
	v_div_scale_f32 v85, null, v50, v50, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v79, vcc_lo, v54, v50, v54
	v_div_fixup_f32 v53, v70, v50, v53
	v_fma_f32 v70, -v75, v77, 1.0
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v79, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v70, s8, v51, v50, v51
	v_fma_f32 v86, -v76, v80, 1.0
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v88, -v81, v84, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v70, v77
	v_fma_f32 v91, -v85, v87, 1.0
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s9, v4, v50, v4
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v5, v50, v5
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v88, -v75, v90, v70
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s11, v6, v50, v6
	v_dual_mul_f32 v92, v86, v80 :: v_dual_mul_f32 v93, v89, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v88, v77
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v79, -v81, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v76, v92, v86
	v_fma_f32 v88, -v78, v93, v89
	v_fma_f32 v70, -v75, v90, v70
	v_fma_f32 v75, -v85, v94, v91
	v_div_fmas_f32 v79, v79, v83, v84
	v_dual_fmac_f32 v92, v81, v80 :: v_dual_fmac_f32 v93, v88, v82
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v75, v87
	v_div_fmas_f32 v70, v70, v77, v90
	v_fma_f32 v76, -v76, v92, v86
	v_fma_f32 v75, -v78, v93, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v85, v94, v91
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v54, v79, v50, v54
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v51, v70, v50, v51
	v_div_fmas_f32 v77, v77, v87, v94
	v_div_fixup_f32 v4, v76, v50, v4
	v_div_fixup_f32 v5, v75, v50, v5
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v50, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v71
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_cvt_i32_f32_e32 v78, v12
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v90, v7
	v_cvt_i32_f32_e32 v97, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v7, 15, v24
	v_and_b32_e32 v12, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v98
	v_and_b32_e32 v21, 16, v98
	v_lshlrev_b32_e32 v24, 4, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_cvt_i32_f32_e32 v80, v44
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v56, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	v_xor_b32_e32 v24, v24, v27
	v_lshlrev_b32_e32 v27, 6, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v85, v48
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v52
	v_cvt_i32_f32_e32 v92, v53
	v_cvt_i32_f32_e32 v93, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v10
	v_cvt_i32_f32_e32 v83, v8
	v_cvt_i32_f32_e32 v84, v9
	v_cvt_i32_f32_e32 v87, v60
	v_cvt_i32_f32_e32 v88, v61
	v_cvt_i32_f32_e32 v89, v62
	v_cvt_i32_f32_e32 v95, v4
	v_cvt_i32_f32_e32 v96, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v33, 15, v46
	v_and_b32_e32 v37, 15, v49
	v_and_b32_e32 v45, 15, v57
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v63
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v67
	v_and_b32_e32 v62, 15, v68
	v_and_b32_e32 v63, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v25
	v_xad_u32 v23, v23, v102, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v77, v13
	v_and_b32_e32 v13, 15, v19
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v39, 15, v55
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v66
	v_and_b32_e32 v54, 15, v70
	v_and_b32_e32 v55, 15, v71
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v23
	ds_load_b128 v[12:15], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v23
	ds_load_b128 v[36:39], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v23
	ds_load_b128 v[52:55], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v23
	ds_load_b128 v[68:71], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v23
	ds_load_b128 v[16:19], v23 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v51, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_cvt_i32_f32_e32 v86, v59
	v_cvt_i32_f32_e32 v94, v51
	v_and_b32_e32 v48, 15, v58
	v_and_b32_e32 v50, 15, v64
	v_and_b32_e32 v51, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v23
	ds_load_b128 v[40:43], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v82
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v65, 15, v87
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v23
	ds_load_b128 v[56:59], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v73, 15, v95
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s26, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v23
	ds_load_b128 v[72:75], v23 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s63, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s8, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v24, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s28
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v22, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v98
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[8:11], 0 offen
	buffer_store_b64 v[10:11], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v98
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s63, 1
	s_and_b32 vcc_lo, vcc_lo, s64
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 508
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 508
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35480
; TotalNumSgprs: 76
; NumVgprs: 256
; ScratchSize: 508
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 508
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 126
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
