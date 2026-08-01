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
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[26:27], s[0:1], 0x5c
	v_dual_mov_b32 v105, v0 :: v_dual_mov_b32 v98, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v105
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s27, s4
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
	s_sub_i32 s75, s18, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[68:69], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s10, s4
	s_addc_u32 s9, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s26, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s2
	v_add_nc_u32_e32 v26, s68, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow777
	s_load_b128 s[64:67], s[0:1], 0x40
	v_lshrrev_b32_e32 v110, 7, v105
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v108, 15, v105
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v109, 0x7f, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v97, 30, v110
	v_or_b32_e32 v96, 28, v110
	v_or_b32_e32 v95, 26, v110
	v_or_b32_e32 v94, 24, v110
	v_or_b32_e32 v90, 22, v110
	v_or_b32_e32 v89, 20, v110
	v_or_b32_e32 v88, 18, v110
	v_or_b32_e32 v87, 16, v110
	v_or_b32_e32 v86, 14, v110
	v_or_b32_e32 v82, 12, v110
	v_or_b32_e32 v81, 10, v110
	v_or_b32_e32 v80, 8, v110
	v_or_b32_e32 v79, 6, v110
	v_or_b32_e32 v78, 4, v110
	v_or_b32_e32 v111, 2, v110
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v219, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v235, 0
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v247, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s27, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s68, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s0
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v196, 0, v108
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[4:5]
	v_lshrrev_b32_e32 v5, 1, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[70:71], v[8:9]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s1, s2
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s2, s74, 1
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v5, 0x70, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s1, s3, s4
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s3, s2, s27
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v198, v196, v5
	v_dual_mov_b32 v216, 0 :: v_dual_and_b32 v5, 0xf0, v105
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s26, s16
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s34, s3, s16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s3, s4, 1
	v_dual_mov_b32 v214, 0 :: v_dual_lshlrev_b32 v11, 5, v105
	s_or_b32 s3, s3, 1
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v10, s68, v108
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s5, s6
	v_dual_mov_b32 v234, 0 :: v_dual_lshlrev_b32 v13, 1, v105
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s74, s3
	s_lshl_b32 s3, s18, 8
	s_mul_i32 s4, s4, s74
	v_dual_mov_b32 v209, 0 :: v_dual_lshlrev_b32 v12, 2, v5
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v11, 32, v11
	v_add3_u32 v14, s5, s3, v105
	s_lshl_b32 s4, s4, 1
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v2, 16, v10
	v_dual_mov_b32 v208, 0 :: v_dual_and_b32 v17, 28, v13
	v_add3_u32 v13, s4, s3, v105
	s_lshl_b32 s4, s7, 8
	v_add3_u32 v18, 0, v12, v11
	v_subrev_nc_u32_e32 v11, s4, v14
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v3, 32, v10
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v4, 48, v10
	v_mul_lo_u32 v2, s26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v207, 0 :: v_dual_lshlrev_b32 v14, 1, v11
	v_dual_mov_b32 v232, 0 :: v_dual_lshlrev_b32 v11, 1, v110
	v_mul_lo_u32 v4, s26, v4
	v_mul_lo_u32 v3, s26, v3
	s_mul_i32 s5, s27, s16
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v16, 6, v105
	v_dual_mov_b32 v243, 0 :: v_dual_lshlrev_b32 v70, 1, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v2, s5, 1, v11
	v_mov_b32_e32 v237, 0
	v_dual_mov_b32 v212, 0 :: v_dual_lshlrev_b32 v47, 1, v4
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v69, 1, v3
	v_or_b32_e32 v3, 24, v16
	v_add_nc_u32_e32 v4, 61, v2
	v_subrev_nc_u32_e32 v12, s4, v13
	v_or_b32_e32 v13, 20, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v0, 1, v109
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[29:30], null, s33, v3, v[1:2]
	v_mul_lo_u32 v3, s74, v4
	v_or_b32_e32 v4, 16, v16
	v_mad_u64_u32 v[30:31], null, s33, v13, v[1:2]
	v_or_b32_e32 v15, 8, v16
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v19, 53, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[31:32], null, s33, v4, v[1:2]
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v4, 57, v2
	v_add3_u32 v3, v3, s3, v0
	v_mad_u64_u32 v[32:33], null, s33, v15, v[1:2]
	v_or_b32_e32 v15, 4, v16
	v_mul_lo_u32 v4, s74, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mad_u64_u32 v[27:28], null, s33, v16, v[1:2]
	v_mov_b32_e32 v124, 0
	v_mul_lo_u32 v20, s74, v97
	v_add_nc_u32_e32 v3, 1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:364
	scratch_store_b32 off, v94, off offset:576
	v_mad_u64_u32 v[15:16], null, s33, v15, v[1:2]
	v_mul_lo_u32 v1, s74, v19
	v_add3_u32 v4, v4, s3, v0
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v16, 49, v2
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v136, 0
	v_add3_u32 v1, v1, s3, v0
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v19, 45, v2
	v_add_nc_u32_e32 v4, 1, v4
	scratch_store_b32 off, v3, off offset:372 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v20
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mul_lo_u32 v20, s74, v95
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v100, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:376
	scratch_store_b32 off, v108, off offset:524
	scratch_store_b32 off, v90, off offset:572
	v_mul_lo_u32 v3, s74, v16
	v_mul_lo_u32 v16, s74, v96
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v20
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v20, 37, v2
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v186, 0
	v_add3_u32 v3, v3, s3, v0
	v_lshlrev_b32_e32 v11, 1, v16
	v_mul_lo_u32 v16, s74, v94
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s74, v19
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v19, 41, v2
	scratch_store_b32 off, v11, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v21, 33, v2
	v_lshlrev_b32_e32 v11, 1, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:392
	scratch_store_b32 off, v109, off offset:528
	v_subrev_nc_u32_e32 v1, s4, v3
	v_mul_lo_u32 v16, s74, v89
	v_add3_u32 v4, v4, s3, v0
	scratch_store_b32 off, v11, off offset:400 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s74, v19
	v_add_nc_u32_e32 v1, 1, v1
	v_mul_lo_u32 v19, s74, v90
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v154, 0
	v_lshlrev_b32_e32 v11, 1, v16
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s4, v4
	v_mul_lo_u32 v4, s74, v20
	v_mul_lo_u32 v20, s74, v21
	v_mul_lo_u32 v21, s74, v88
	v_add3_u32 v3, v3, s3, v0
	v_add_nc_u32_e32 v1, 1, v1
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v254, 0
	v_mov_b32_e32 v252, 0
	v_add3_u32 v4, v4, s3, v0
	v_mov_b32_e32 v250, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v219, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v188, 0
	v_mov_b32_e32 v182, 0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v16, 21, v2
	v_add_nc_u32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:404
	scratch_store_b32 off, v111, off offset:532
	v_lshlrev_b32_e32 v1, 1, v19
	v_add3_u32 v19, v20, s3, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:420
	scratch_store_b32 off, v95, off offset:580
	v_lshlrev_b32_e32 v4, 1, v21
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s4, v3
	v_add_nc_u32_e32 v3, 29, v2
	v_mul_lo_u32 v21, s74, v82
	v_subrev_nc_u32_e32 v19, s4, v19
	v_add_nc_u32_e32 v20, 25, v2
	v_add_nc_u32_e32 v1, 1, v1
	v_mul_lo_u32 v3, s74, v3
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v248, 0
	v_mul_lo_u32 v16, s74, v16
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v22, 13, v2
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v135, 0
	v_add3_u32 v3, v3, s3, v0
	v_mov_b32_e32 v139, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v195, s75, 8, v0
	v_or_b32_e32 v6, 0x300, v105
	v_or_b32_e32 v7, 0x700, v105
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v3, s4, v3
	v_or_b32_e32 v8, 0x3f0, v105
	v_or_b32_e32 v9, 0x7f0, v105
	v_mul_lo_u32 v10, s26, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v3, 1, v3
	scratch_store_b32 off, v11, off offset:416 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v11, 1, v21
	scratch_store_b32 off, v4, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 1, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:428
	scratch_store_b32 off, v87, off offset:560
	v_mul_lo_u32 v4, s74, v87
	v_add_nc_u32_e32 v19, 17, v2
	v_mul_lo_u32 v21, s74, v80
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v23, 0, v105
	v_dual_mov_b32 v246, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v19, s74, v19
	v_lshlrev_b32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:412
	scratch_store_b32 off, v78, off offset:536
	v_mul_lo_u32 v1, s74, v20
	v_mul_lo_u32 v20, s74, v86
	v_mov_b32_e32 v166, 0
	v_dual_mov_b32 v247, 0 :: v_dual_lshlrev_b32 v12, 1, v12
	v_dual_mov_b32 v239, 0 :: v_dual_lshlrev_b32 v200, 1, v10
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v241, v23, v105
	v_add3_u32 v1, v1, s3, v0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v168, 0
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v236, 0, v5
	v_subrev_nc_u32_e32 v1, s4, v1
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v146, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v20
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	v_add3_u32 v4, v19, s3, v0
	v_mul_lo_u32 v19, s74, v81
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v20, 5, v2
	v_mov_b32_e32 v144, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v142, 0
	v_add_nc_u32_e32 v4, 1, v4
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	v_add3_u32 v3, v16, s3, v0
	v_add_nc_u32_e32 v16, 9, v2
	v_mul_lo_u32 v2, s74, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:460
	scratch_store_b32 off, v96, off offset:584
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mul_lo_u32 v16, s74, v16
	v_mov_b32_e32 v99, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v160, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s74, v22
	v_mov_b32_e32 v157, 0
	v_add3_u32 v4, v16, s3, v0
	v_mul_lo_u32 v16, s74, v78
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v152, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s4, v4
	v_add3_u32 v1, v1, s3, v0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v150, 0
	v_mov_b32_e32 v153, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v134, 0
	v_subrev_nc_u32_e32 v1, s4, v1
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v181, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v130, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:468
	scratch_store_b32 off, v79, off offset:540
	v_mul_lo_u32 v1, s74, v79
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v126, 0
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v19
	scratch_store_b32 off, v11, off offset:448 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v11, 1, v21
	v_mul_lo_u32 v19, s74, v110
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v114, 0
	scratch_store_b32 off, v3, off offset:456 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s74, v20
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v98, 0
	v_add3_u32 v3, v3, s3, v0
	s_add_i32 s3, s3, s74
	v_mov_b32_e32 v115, 0
	v_add3_u32 v0, s3, v2, v0
	v_mul_lo_u32 v2, s74, v111
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v143, 0
	v_subrev_nc_u32_e32 v0, s4, v0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v133, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:472
	scratch_store_b32 off, v80, off offset:544
	v_add_nc_u32_e32 v1, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:464
	scratch_store_b32 off, v0, off offset:492
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v0, 1, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:476
	scratch_store_b32 off, v81, off offset:548
	v_lshlrev_b32_e32 v1, 1, v16
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v0, 0, v6
	v_mov_b32_e32 v129, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:480
	scratch_store_b32 off, v97, off offset:588
	scratch_store_b32 off, v82, off offset:552
	scratch_store_b32 off, v0, off offset:500
	v_add_nc_u32_e32 v1, 1, v3
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v83, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:484
	scratch_store_b32 off, v86, off offset:556
	scratch_store_b32 off, v0, off offset:504
	v_lshlrev_b32_e32 v1, 1, v2
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v117, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:488
	scratch_store_b32 off, v88, off offset:564
	scratch_store_b32 off, v0, off offset:508
	v_add_nc_u32_e32 v0, 0, v9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:512
	scratch_store_b32 off, v105, off offset:520
	scratch_store_b32 off, v23, off offset:368
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v0, v18, v17
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s36, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_add_u32 s35, s34, s74
	s_and_b32 s53, s15, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s56, s74, 2
	s_lshl_b32 s57, s33, 5
	s_lshl_b32 s58, s74, 6
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s44, s10
	s_mov_b32 s45, s11
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s48, s12
	s_mov_b32 s49, s13
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	s_mov_b32 s52, s14
	s_mov_b32 s54, s30
	s_mov_b32 s55, s31
	s_mov_b32 s59, s36
	s_mov_b32 s60, s36
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v89, off offset:568
	scratch_store_b32 off, v0, off offset:516
	scratch_store_b32 off, v110, off offset:352
	scratch_store_b64 off, v[26:27], off offset:356
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:364
	scratch_load_b32 v1, off, off offset:488
	s_clause 0x1f                           ; 152-byte Folded Spill
	scratch_store_b64 off, v[15:16], off offset:224
	scratch_store_b64 off, v[32:33], off offset:216
	scratch_store_b64 off, v[31:32], off offset:208
	scratch_store_b64 off, v[30:31], off offset:200
	scratch_store_b64 off, v[29:30], off
	scratch_store_b64 off, v[27:28], off offset:192
	scratch_store_b32 off, v47, off offset:188
	scratch_store_b32 off, v181, off offset:184
	scratch_store_b32 off, v220, off offset:180
	scratch_store_b32 off, v218, off offset:176
	scratch_store_b32 off, v217, off offset:172
	scratch_store_b32 off, v72, off offset:168
	scratch_store_b32 off, v216, off offset:164
	scratch_store_b32 off, v215, off offset:160
	scratch_store_b32 off, v214, off offset:156
	scratch_store_b32 off, v213, off offset:152
	scratch_store_b32 off, v192, off offset:148
	scratch_store_b32 off, v158, off offset:144
	scratch_store_b32 off, v211, off offset:140
	scratch_store_b32 off, v210, off offset:136
	scratch_store_b32 off, v175, off offset:132
	scratch_store_b32 off, v209, off offset:128
	scratch_store_b32 off, v208, off offset:124
	scratch_store_b32 off, v207, off offset:120
	scratch_store_b32 off, v232, off offset:116
	scratch_store_b32 off, v223, off offset:112
	scratch_store_b32 off, v221, off offset:108
	scratch_store_b32 off, v219, off offset:104
	scratch_store_b32 off, v212, off offset:100
	scratch_store_b32 off, v71, off offset:96
	scratch_store_b32 off, v116, off offset:92
	scratch_store_b32 off, v115, off offset:88
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v107, off offset:84
	scratch_store_b32 off, v106, off offset:80
	scratch_store_b32 off, v101, off offset:76
	scratch_store_b32 off, v100, off offset:72
	scratch_store_b32 off, v99, off offset:68
	scratch_store_b32 off, v93, off offset:64
	scratch_store_b32 off, v92, off offset:60
	scratch_store_b32 off, v91, off offset:56
	scratch_store_b32 off, v85, off offset:52
	scratch_store_b32 off, v84, off offset:48
	scratch_store_b32 off, v83, off offset:44
	scratch_store_b32 off, v76, off offset:40
	scratch_store_b32 off, v75, off offset:36
	scratch_store_b32 off, v77, off offset:32
	scratch_store_b32 off, v113, off offset:28
	scratch_store_b32 off, v112, off offset:24
	scratch_store_b32 off, v104, off offset:20
	scratch_store_b32 off, v103, off offset:16
	scratch_store_b32 off, v102, off offset:12
	scratch_store_b32 off, v98, off offset:8
	v_dual_mov_b32 v199, v170 :: v_dual_add_nc_u32 v28, s68, v30
	scratch_load_b64 v[29:30], off, off     ; 8-byte Folded Reload
	v_mov_b32_e32 v13, v247
	v_mov_b32_e32 v247, v172
	v_mov_b32_e32 v71, v70
	v_dual_mov_b32 v185, v162 :: v_dual_mov_b32 v178, v152
	v_dual_mov_b32 v173, v156 :: v_dual_mov_b32 v74, v243
	v_dual_mov_b32 v203, v188 :: v_dual_mov_b32 v188, v165
	v_mov_b32_e32 v165, v139
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s26, s26, -1
	v_mov_b32_e32 v175, v147
	v_dual_mov_b32 v147, v148 :: v_dual_mov_b32 v148, v118
	v_mov_b32_e32 v181, v153
	v_mov_b32_e32 v153, v136
	v_mov_b32_e32 v201, v183
	v_dual_mov_b32 v183, v160 :: v_dual_mov_b32 v160, v149
	v_dual_mov_b32 v149, v120 :: v_dual_mov_b32 v158, v117
	v_mov_b32_e32 v136, v119
	v_mov_b32_e32 v192, v168
	v_mov_b32_e32 v168, v142
	v_mov_b32_e32 v142, v124
	v_mov_b32_e32 v84, v73
	v_mov_b32_e32 v73, v193
	v_dual_mov_b32 v193, v169 :: v_dual_mov_b32 v170, v144
	v_mov_b32_e32 v144, v130
	v_mov_b32_e32 v172, v146
	v_dual_mov_b32 v70, v69 :: v_dual_mov_b32 v69, v14
	v_mov_b32_e32 v174, v157
	v_dual_mov_b32 v157, v129 :: v_dual_mov_b32 v14, v246
	v_mov_b32_e32 v246, v171
	v_dual_mov_b32 v176, v150 :: v_dual_mov_b32 v171, v145
	v_mov_b32_e32 v150, v132
	v_dual_mov_b32 v202, v187 :: v_dual_mov_b32 v187, v164
	v_mov_b32_e32 v204, v166
	v_mov_b32_e32 v166, v140
	v_dual_mov_b32 v164, v137 :: v_dual_mov_b32 v145, v131
	v_mov_b32_e32 v169, v143
	v_dual_mov_b32 v143, v125 :: v_dual_mov_b32 v162, v155
	v_dual_mov_b32 v155, v127 :: v_dual_mov_b32 v152, v134
	v_mov_b32_e32 v177, v151
	v_dual_mov_b32 v151, v133 :: v_dual_mov_b32 v156, v128
	v_mov_b32_e32 v146, v114
	v_dual_mov_b32 v180, v123 :: v_dual_mov_b32 v137, v121
	v_mov_b32_e32 v10, v190
	v_mov_b32_e32 v190, v138
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s60, v0
	s_waitcnt vmcnt(1)
	v_add3_u32 v52, v1, s59, v195
	v_mov_b32_e32 v243, v239
	v_dual_mov_b32 v239, v186 :: v_dual_mov_b32 v186, v163
	v_add_nc_u32_e32 v0, 4, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s68, v29
	v_add_nc_u32_e32 v3, s34, v52
	v_dual_mov_b32 v163, v135 :: v_dual_add_nc_u32 v52, s35, v52
	v_cmp_gt_i32_e64 s19, s27, v0
	v_add_nc_u32_e32 v0, 8, v2
	s_and_b32 s19, s76, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s20, s27, v0
	v_add_nc_u32_e32 v0, 16, v2
	v_cmp_gt_i32_e64 s21, s27, v0
	v_add_nc_u32_e32 v0, 20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s22, s27, v0
	v_add_nc_u32_e32 v0, 24, v2
	v_cmp_gt_i32_e64 s23, s27, v0
	v_add_nc_u32_e32 v0, s60, v110
	s_add_i32 s60, s60, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 2, v0
	v_cmp_gt_i32_e64 s18, s27, v0
	v_cmp_gt_i32_e64 s15, s27, v1
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0x80000000, v3, s15
	v_cndmask_b32_e64 v52, 0x80000000, v52, s15
	s_waitcnt vmcnt(0)
	v_add3_u32 v51, v1, s59, v195
	v_add_nc_u32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s34, v51
	v_cmp_gt_i32_e64 s16, s27, v1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v51, s35, v51
	v_cndmask_b32_e64 v4, 0x80000000, v4, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s16
	s_waitcnt vmcnt(0)
	v_add3_u32 v49, v1, s59, v195
	v_add_nc_u32_e32 v1, 6, v0
	v_add_nc_u32_e32 v5, s34, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s17, s27, v1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v49, s35, v49
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	v_cndmask_b32_e64 v49, 0x80000000, v49, s17
	s_waitcnt vmcnt(0)
	v_add3_u32 v244, v1, s59, v195
	v_add_nc_u32_e32 v1, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v179, v122 :: v_dual_add_nc_u32 v6, s34, v244
	v_cmp_gt_i32_e64 s14, s27, v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v6, 0x80000000, v6, s14
	s_waitcnt vmcnt(0)
	v_add3_u32 v245, v1, s59, v195
	v_add_nc_u32_e32 v1, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v7, s34, v245
	v_cmp_gt_i32_e64 s11, s27, v1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v8, v1, s59, v195
	v_add_nc_u32_e32 v1, 12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s12, s27, v1
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v9, v1, s59, v195
	v_add_nc_u32_e32 v1, 14, v0
	v_cmp_gt_i32_e64 s13, s27, v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 16, v0
	scratch_store_b32 off, v11, off offset:260 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s10, s27, v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v16, s34, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s10
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 18, v0
	scratch_store_b32 off, v11, off offset:256 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s7, s27, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v17, s34, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 20, v0
	scratch_store_b32 off, v11, off offset:252 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s8, s27, v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v18, s34, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 22, v0
	scratch_store_b32 off, v11, off offset:248 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s9, s27, v1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v19, s34, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 24, v0
	scratch_store_b32 off, v11, off offset:244 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s6, s27, v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v20, s34, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 26, v0
	scratch_store_b32 off, v8, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v8, s34, v8
	scratch_store_b32 off, v11, off offset:240 ; 4-byte Folded Spill
	v_cmp_gt_i32_e64 s3, s27, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v21, s34, v11
	v_cndmask_b32_e64 v8, 0x80000000, v8, s12
	s_waitcnt vmcnt(0)
	v_add3_u32 v11, v1, s59, v195
	v_add_nc_u32_e32 v1, 28, v0
	v_add_nc_u32_e32 v0, 30, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v22, s34, v11
	v_cmp_gt_i32_e64 s4, s27, v1
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s5, s27, v0
	v_or_b32_e32 v0, 12, v2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s24, s27, v0
	s_and_b32 s24, s76, s24
	s_waitcnt vmcnt(0)
	v_add3_u32 v53, v1, s59, v195
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v23, s34, v53
	v_add_nc_u32_e32 v53, s35, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v53, s18
	s_waitcnt vmcnt(0)
	v_add3_u32 v1, v1, s59, v195
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:232
	scratch_store_b32 off, v9, off offset:264
	v_add_nc_u32_e32 v9, s34, v9
	v_mov_b32_e32 v11, v191
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v24, s34, v1
	v_mad_u64_u32 v[0:1], null, v0, s33, v[26:27]
	v_cndmask_b32_e64 v9, 0x80000000, v9, s13
	v_mov_b32_e32 v191, v167
	v_mov_b32_e32 v167, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v25, 0x80000000, v0, s24
	v_or_b32_e32 v0, 28, v2
	v_cmp_gt_i32_e64 s24, s27, v2
	v_add_nc_u32_e32 v2, s68, v27
	v_cmp_gt_i32_e64 s25, s27, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[26:27]
	v_cndmask_b32_e64 v1, 0x80000000, v23, s18
	v_cndmask_b32_e64 v23, 0x80000000, v24, s5
	v_add_nc_u32_e32 v24, s68, v15
	v_add_nc_u32_e32 v26, s68, v32
	v_add_nc_u32_e32 v27, s68, v31
	v_mov_b32_e32 v15, v235
	v_mov_b32_e32 v235, v184
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_and_b32 s19, s76, s20
	v_dual_mov_b32 v184, v161 :: v_dual_mov_b32 v161, v154
	v_cndmask_b32_e64 v26, 0x80000000, v26, s19
	s_and_b32 s19, s76, s21
	s_and_b32 s25, s76, s25
	v_cndmask_b32_e64 v27, 0x80000000, v27, s19
	s_and_b32 s19, s76, s22
	s_and_b32 s24, s76, s24
	v_cndmask_b32_e64 v28, 0x80000000, v28, s19
	s_and_b32 s19, s76, s23
	v_cndmask_b32_e64 v0, 0x80000000, v0, s25
	v_cndmask_b32_e64 v2, 0x80000000, v2, s24
	v_cndmask_b32_e64 v29, 0x80000000, v29, s19
	v_mov_b32_e32 v154, v126
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u16 v95, v1, s[44:47], 0 offen
	buffer_load_u16 v96, v3, s[44:47], 0 offen
	buffer_load_u16 v102, v4, s[44:47], 0 offen
	buffer_load_u16 v103, v5, s[44:47], 0 offen
	buffer_load_u16 v104, v6, s[44:47], 0 offen
	buffer_load_u16 v105, v7, s[44:47], 0 offen
	buffer_load_u16 v106, v8, s[44:47], 0 offen
	buffer_load_u16 v107, v9, s[44:47], 0 offen
	buffer_load_u16 v108, v16, s[44:47], 0 offen
	buffer_load_u16 v109, v17, s[44:47], 0 offen
	buffer_load_u16 v110, v18, s[44:47], 0 offen
	buffer_load_u16 v111, v19, s[44:47], 0 offen
	buffer_load_u16 v112, v20, s[44:47], 0 offen
	buffer_load_u16 v113, v21, s[44:47], 0 offen
	buffer_load_u16 v115, v22, s[44:47], 0 offen
	buffer_load_u16 v116, v23, s[44:47], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v2, s[28:31], 0 offen
	buffer_load_u8 v2, v24, s[28:31], 0 offen
	buffer_load_u8 v3, v26, s[28:31], 0 offen
	buffer_load_u8 v4, v27, s[28:31], 0 offen
	buffer_load_u8 v5, v28, s[28:31], 0 offen
	buffer_load_u8 v6, v29, s[28:31], 0 offen
	buffer_load_u8 v0, v0, s[28:31], 0 offen
	buffer_load_u8 v7, v25, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v8, v1
	ds_store_b8 v8, v2 offset:256
	ds_store_b8 v8, v3 offset:512
	ds_store_b8 v8, v4 offset:1024
	ds_store_b8 v8, v5 offset:1280
	ds_store_b8 v8, v6 offset:1536
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v7
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v196 offset:320
	ds_load_u8 v1, v196 offset:256
	ds_load_u8 v35, v196 offset:336
	ds_load_u8 v24, v196 offset:272
	ds_load_u8 v47, v196 offset:352
	ds_load_u8 v46, v196 offset:288
	ds_load_u8 v2, v196 offset:368
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v24, v24, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v2, v196 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v1, v196 offset:448
	ds_load_u8 v2, v196 offset:384
	ds_load_u8 v34, v196 offset:464
	ds_load_u8 v25, v196 offset:400
	ds_load_u8 v45, v196 offset:480
	ds_load_u8 v44, v196 offset:416
	ds_load_u8 v3, v196 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v25, v25, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v3, v196 offset:432
	v_lshl_or_b32 v17, v1, 16, v0
	v_lshl_or_b32 v25, v25, 16, v24
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v2, v196 offset:64
	ds_load_u8 v3, v196
	ds_load_u8 v33, v196 offset:80
	ds_load_u8 v43, v196 offset:96
	ds_load_u8 v4, v196 offset:112
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v26, v196 offset:16
	ds_load_u8 v37, v196 offset:32
	ds_load_u8 v4, v196 offset:48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v33, 0xc0c0004
	v_perm_b32 v33, v44, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v3, v196 offset:192
	ds_load_u8 v4, v196 offset:128
	ds_load_u8 v32, v196 offset:208
	ds_load_u8 v27, v196 offset:144
	ds_load_u8 v36, v196 offset:224
	ds_load_u8 v39, v196 offset:160
	ds_load_u8 v5, v196 offset:240
	v_perm_b32 v34, v37, v43, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v27, v27, v32, 0xc0c0004
	v_perm_b32 v32, v46, v47, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v39, v36, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v5, v196 offset:176
	v_lshl_or_b32 v16, v3, 16, v2
	ds_load_u8 v7, v196 offset:960
	ds_load_u8 v18, v196 offset:896
	ds_load_u8 v0, v196 offset:1024
	ds_load_u8 v68, v196 offset:976
	ds_load_u8 v31, v196 offset:912
	ds_load_u8 v217, v196 offset:992
	ds_load_u8 v218, v196 offset:928
	ds_load_u8 v54, v196 offset:944
	ds_load_u8 v19, v196 offset:832
	ds_load_u8 v21, v196 offset:768
	ds_load_u8 v72, v196 offset:848
	ds_load_u8 v28, v196 offset:784
	ds_load_u8 v220, v196 offset:864
	ds_load_u8 v222, v196 offset:800
	ds_load_u8 v55, v196 offset:880
	ds_load_u8 v56, v196 offset:816
	ds_load_u8 v83, v196 offset:704
	ds_load_u8 v94, v196 offset:640
	ds_load_u8 v30, v196 offset:720
	ds_load_u8 v29, v196 offset:656
	ds_load_u8 v224, v196 offset:736
	ds_load_u8 v225, v196 offset:672
	ds_load_u8 v57, v196 offset:752
	ds_load_u8 v58, v196 offset:688
	ds_load_u8 v219, v196 offset:576
	ds_load_u8 v221, v196 offset:512
	ds_load_u8 v9, v196 offset:592
	ds_load_u8 v238, v196 offset:528
	ds_load_u8 v226, v196 offset:608
	ds_load_u8 v227, v196 offset:544
	ds_load_u8 v60, v196 offset:624
	ds_load_u8 v62, v196 offset:560
	ds_load_u8 v3, v196 offset:1216
	ds_load_u8 v4, v196 offset:1280
	ds_load_u8 v78, v196 offset:1232
	ds_load_u8 v79, v196 offset:1168
	ds_load_u8 v228, v196 offset:1248
	ds_load_u8 v229, v196 offset:1184
	ds_load_u8 v59, v196 offset:1264
	ds_load_u8 v61, v196 offset:1200
	ds_load_u8 v8, v196 offset:1152
	ds_load_u8 v20, v196 offset:1088
	ds_load_u8 v90, v196 offset:1104
	ds_load_u8 v91, v196 offset:1040
	ds_load_u8 v230, v196 offset:1120
	ds_load_u8 v231, v196 offset:1056
	ds_load_u8 v63, v196 offset:1136
	ds_load_u8 v64, v196 offset:1072
	ds_load_u8 v50, v196 offset:1472
	ds_load_u8 v1, v196 offset:1536
	ds_load_u8 v92, v196 offset:1488
	ds_load_u8 v93, v196 offset:1424
	ds_load_u8 v240, v196 offset:1504
	ds_load_u8 v38, v196 offset:1440
	ds_load_u8 v65, v196 offset:1520
	ds_load_u8 v48, v196 offset:1456
	ds_load_u8 v194, v196 offset:1408
	ds_load_u8 v212, v196 offset:1344
	ds_load_u8 v80, v196 offset:1360
	ds_load_u8 v86, v196 offset:1296
	ds_load_u8 v242, v196 offset:1376
	ds_load_u8 v66, v196 offset:1312
	ds_load_u8 v206, v196 offset:1392
	ds_load_u8 v208, v196 offset:1328
	ds_load_u8 v2, v196 offset:1984
	ds_load_u8 v81, v196 offset:2000
	ds_load_u8 v87, v196 offset:1936
	ds_load_u8 v197, v196 offset:2016
	ds_load_u8 v67, v196 offset:1952
	v_lshl_or_b32 v33, v33, 16, v32
	v_lshl_or_b32 v32, v35, 16, v34
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v34, v222, v220, 0xc0c0004
	v_perm_b32 v35, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v36, v227, v226, 0xc0c0004
	v_perm_b32 v37, v225, v224, 0xc0c0004
	v_lshl_or_b32 v24, v27, 16, v26
	v_perm_b32 v26, v28, v72, 0xc0c0004
	v_perm_b32 v28, v238, v9, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v37, 16, v36
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v9, v38, v240, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v66, v242, 0xc0c0004
	v_perm_b32 v19, v21, v19, 0xc0c0004
	v_perm_b32 v7, v18, v7, 0xc0c0004
	v_perm_b32 v18, v221, v219, 0xc0c0004
	v_perm_b32 v21, v94, v83, 0xc0c0004
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	scratch_load_b32 v5, off, off offset:508 ; 4-byte Folded Reload
	v_lshl_or_b32 v37, v9, 16, v36
	v_lshl_or_b32 v19, v7, 16, v19
	v_lshl_or_b32 v18, v21, 16, v18
	v_perm_b32 v0, v0, v20, 0xc0c0004
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_perm_b32 v4, v4, v212, 0xc0c0004
	v_perm_b32 v27, v31, v68, 0xc0c0004
	v_perm_b32 v29, v29, v30, 0xc0c0004
	v_perm_b32 v30, v91, v90, 0xc0c0004
	v_lshl_or_b32 v20, v3, 16, v0
	v_perm_b32 v31, v79, v78, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	v_lshl_or_b32 v26, v29, 16, v28
	v_perm_b32 v28, v86, v80, 0xc0c0004
	v_perm_b32 v29, v93, v92, 0xc0c0004
	v_perm_b32 v46, v64, v63, 0xc0c0004
	v_perm_b32 v47, v61, v59, 0xc0c0004
	v_perm_b32 v38, v231, v230, 0xc0c0004
	v_perm_b32 v39, v229, v228, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_lshl_or_b32 v28, v31, 16, v30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v87, v81, 0xc0c0004
	v_lshl_or_b32 v36, v39, 16, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v67, v197, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v211, v5
	scratch_load_b32 v5, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v205, v5
	ds_load_u8 v207, v196 offset:1968
	ds_load_u8 v5, v196 offset:1920
	ds_load_u8 v6, v196 offset:1856
	ds_load_u8 v98, v196 offset:1872
	ds_load_u8 v99, v196 offset:1808
	ds_load_u8 v42, v196 offset:1888
	ds_load_u8 v41, v196 offset:1824
	ds_load_u8 v209, v196 offset:1904
	ds_load_u8 v210, v196 offset:1840
	ds_load_u8 v22, v196 offset:1728
	ds_load_u8 v23, v196 offset:1792
	ds_load_u8 v100, v196 offset:1744
	ds_load_u8 v101, v196 offset:1680
	ds_load_u8 v75, v196 offset:1760
	ds_load_u8 v76, v196 offset:1696
	ds_load_u8 v213, v196 offset:1776
	ds_load_u8 v214, v196 offset:1712
	ds_load_u8 v77, v196 offset:1664
	ds_load_u8 v82, v196 offset:1600
	ds_load_u8 v88, v196 offset:1616
	ds_load_u8 v89, v196 offset:1552
	ds_load_u8 v85, v196 offset:1632
	ds_load_u8 v40, v196 offset:1568
	ds_load_u8 v215, v196 offset:1648
	ds_load_u8 v216, v196 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v241, v95
	ds_store_b16 v241, v96 offset:512
	ds_store_b16 v241, v102 offset:1024
	ds_store_b16 v241, v103 offset:1536
	ds_store_b16 v241, v104 offset:2048
	ds_store_b16 v241, v105 offset:2560
	ds_store_b16 v241, v106 offset:3072
	ds_store_b16 v241, v107 offset:3584
	ds_store_b16 v241, v108 offset:4096
	ds_store_b16 v241, v109 offset:4608
	ds_store_b16 v241, v110 offset:5120
	ds_store_b16 v241, v111 offset:5632
	ds_store_b16 v241, v112 offset:6144
	ds_store_b16 v241, v113 offset:6656
	ds_store_b16 v241, v115 offset:7168
	ds_store_b16 v241, v116 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v9, v41, v42, 0xc0c0004
	ds_load_u8 v223, v198 offset:1280
	ds_load_u8 v232, v198 offset:1024
	ds_load_u8 v112, v198 offset:1920
	ds_load_u8 v113, v198 offset:1664
	v_perm_b32 v2, v5, v2, 0xc0c0004
	ds_load_u8 v96, v198 offset:1792
	ds_load_u8 v102, v198 offset:1536
	ds_load_u8 v117, v198 offset:1408
	ds_load_u8 v119, v198 offset:896
	ds_load_u8 v120, v198 offset:640
	ds_load_u8 v124, v198 offset:384
	ds_load_u8 v125, v198 offset:128
	ds_load_u8 v114, v198 offset:2432
	ds_load_u8 v131, v198 offset:2176
	ds_load_u8 v118, v198 offset:1152
	v_perm_b32 v66, v40, v85, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:272
	scratch_load_b32 v41, off, off offset:276
	v_perm_b32 v1, v1, v82, 0xc0c0004
	ds_load_u8 v130, v198 offset:2944
	ds_load_u8 v97, v198 offset:2688
	ds_load_u8 v132, v198 offset:5248
	ds_load_u8 v121, v198 offset:4736
	ds_load_u8 v126, v198 offset:4480
	ds_load_u8 v127, v198 offset:4224
	ds_load_u8 v129, v198 offset:6784
	ds_load_u8 v134, v198 offset:6528
	ds_load_u8 v135, v198 offset:6272
	ds_load_u8 v133, v198 offset:4992
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v95, v232, v223, 0xc0c0004
	ds_load_u8 v7, v198 offset:3328
	ds_load_u8 v21, v198 offset:3072
	ds_load_u8 v219, v198 offset:3968
	ds_load_u8 v221, v198 offset:3712
	ds_load_u8 v223, v198 offset:3456
	ds_load_u8 v232, v198 offset:3200
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v96, v102, v96, 0xc0c0004
	ds_load_u8 v102, v198 offset:256
	ds_load_u8 v103, v198
	ds_load_u8 v128, v198 offset:8064
	ds_load_u8 v138, v198 offset:7808
	ds_load_u8 v139, v198 offset:7552
	ds_load_u8 v140, v198 offset:7296
	ds_load_u8 v141, v198 offset:7040
	v_lshl_or_b32 v96, v96, 16, v95
	v_perm_b32 v30, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v97, v97, v130, 0xc0c0004
	v_perm_b32 v72, v101, v100, 0xc0c0004
	v_perm_b32 v68, v89, v88, 0xc0c0004
	v_perm_b32 v45, v54, v211, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_perm_b32 v54, v207, v205, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v21, v7, 0xc0c0004
	ds_load_u8 v21, v198 offset:3840
	ds_load_u8 v83, v198 offset:3584
	v_lshl_or_b32 v30, v72, 16, v68
	v_perm_b32 v67, v76, v75, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v9
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v198 offset:768
	ds_load_u8 v104, v198 offset:512
	v_lshl_or_b32 v38, v67, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v83, v21, 0xc0c0004
	ds_load_u8 v83, v198 offset:2304
	ds_load_u8 v94, v198 offset:2048
	v_lshl_or_b32 v116, v21, 16, v7
	v_perm_b32 v7, v194, v50, 0xc0c0004
	ds_load_u8 v0, v198 offset:5376
	ds_load_u8 v3, v198 offset:5120
	ds_load_u8 v50, v198 offset:6016
	ds_load_u8 v194, v198 offset:5760
	ds_load_u8 v212, v198 offset:5504
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_lshl_or_b32 v21, v7, 16, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v95, v103, 16, v102
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v83, v94, v83, 0xc0c0004
	ds_load_u8 v94, v198 offset:2816
	ds_load_u8 v102, v198 offset:2560
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v3, v0, 0xc0c0004
	ds_load_u8 v3, v198 offset:5888
	ds_load_u8 v4, v198 offset:5632
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v194, v50, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v102, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v198 offset:4352
	ds_load_u8 v7, v198 offset:4096
	v_lshl_or_b32 v115, v94, 16, v83
	v_lshl_or_b32 v111, v3, 16, v0
	v_perm_b32 v0, v23, v6, 0xc0c0004
	v_perm_b32 v3, v77, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v23, v2, 16, v0
	v_lshl_or_b32 v22, v3, 16, v1
	ds_load_u8 v0, v198 offset:7424
	ds_load_u8 v1, v198 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v7, v4, 0xc0c0004
	ds_load_u8 v7, v198 offset:4864
	ds_load_u8 v8, v198 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v198 offset:7936
	ds_load_u8 v2, v198 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v7, 16, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v198 offset:6400
	ds_load_u8 v3, v198 offset:6144
	v_lshl_or_b32 v123, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v198 offset:6912
	ds_load_u8 v4, v198 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v3, 16, v2
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v2, s37
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_wmma_i32_16x16x16_iu4 v[102:109], v[95:96], v[16:17], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[115:116], v[18:19], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[20:21], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[122:123], v[22:23], v[102:109] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v94, v102
	v_cvt_f32_i32_e32 v83, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v104
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v102, v113, v112, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v106
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v103, v125, v124, 0xc0c0004
	v_perm_b32 v104, v120, v119, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v107
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v124, v104, 16, v103
	v_perm_b32 v103, v131, v114, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v112, v97, 16, v103
	v_perm_b32 v97, v127, v126, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v109
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_perm_b32 v0, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v102, 16, v0
	v_perm_b32 v0, v232, v223, 0xc0c0004
	v_perm_b32 v102, v221, v219, 0xc0c0004
	v_lshl_or_b32 v113, v102, 16, v0
	v_perm_b32 v102, v121, v133, 0xc0c0004
	v_perm_b32 v0, v132, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v117, v102, 16, v97
	v_perm_b32 v97, v135, v134, 0xc0c0004
	v_perm_b32 v102, v129, v141, 0xc0c0004
	v_lshl_or_b32 v118, v50, 16, v0
	v_perm_b32 v0, v140, v139, 0xc0c0004
	v_perm_b32 v50, v138, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v119, v102, 16, v97
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v50, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[18:19], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[20:21], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[22:23], v[102:109] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v232, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v223, v103
	v_cvt_f32_i32_e32 v221, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v219, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[95:96], v[24:25], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v107
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[115:116], v[26:27], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[110:111], v[28:29], v[98:105] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:280
	scratch_load_b32 v42, off, off offset:284
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[122:123], v[30:31], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v88, v98
	v_cvt_f32_i32_e32 v90, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v100
	v_cvt_f32_i32_e32 v86, v101
	v_cvt_f32_i32_e32 v81, v102
	v_cvt_f32_i32_e32 v80, v103
	v_cvt_f32_i32_e32 v79, v104
	v_cvt_f32_i32_e32 v78, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[24:25], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v106
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[26:27], v[98:105] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[98:105], v[117:118], v[28:29], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[119:120], v[30:31], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v82, v100
	v_cvt_f32_i32_e32 v194, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v238, v102
	v_cvt_f32_i32_e32 v212, v98
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v104
	v_cvt_f32_i32_e32 v72, v99
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[100:107], v[95:96], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[100:107], v[115:116], v[34:35], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[36:37], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[38:39], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v98, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v93, v103
	v_cvt_f32_i32_e32 v92, v104
	v_cvt_f32_i32_e32 v91, v105
	v_cvt_f32_i32_e32 v89, v106
	v_cvt_f32_i32_e32 v85, v107
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:288
	scratch_load_b32 v43, off, off offset:292
	v_lshl_or_b32 v41, v41, 16, v40
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:296
	scratch_load_b32 v44, off, off offset:300
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v44, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v43, 16, v42
	v_perm_b32 v42, v62, v60, 0xc0c0004
	v_perm_b32 v43, v58, v57, 0xc0c0004
	v_lshl_or_b32 v42, v43, 16, v42
	v_lshl_or_b32 v43, v45, 16, v44
	v_perm_b32 v44, v208, v206, 0xc0c0004
	v_perm_b32 v45, v48, v65, 0xc0c0004
	v_perm_b32 v48, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	v_lshl_or_b32 v44, v47, 16, v46
	v_perm_b32 v46, v216, v215, 0xc0c0004
	v_perm_b32 v47, v214, v213, 0xc0c0004
	v_lshl_or_b32 v46, v47, 16, v46
	v_lshl_or_b32 v47, v54, 16, v48
	v_wmma_i32_16x16x16_iu4 v[54:61], v[95:96], v[40:41], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v95, off, off offset:492 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[54:61], v[115:116], v[42:43], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[110:111], v[44:45], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[122:123], v[46:47], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v57
	v_cvt_f32_i32_e32 v62, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v59
	v_cvt_f32_i32_e32 v64, v58
	v_cvt_f32_i32_e32 v205, v54
	v_cvt_f32_i32_e32 v197, v55
	v_cvt_f32_i32_e32 v61, v61
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s18
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	buffer_load_u8 v96, v49, s[44:47], 0 offen
	buffer_load_u8 v97, v51, s[44:47], 0 offen
	buffer_load_u8 v51, v52, s[44:47], 0 offen
	buffer_load_u8 v52, v53, s[44:47], 0 offen
	v_add_nc_u32_e32 v53, s35, v245
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v53, s11
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v49.l, 8, v95.l
	scratch_load_b32 v95, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v49.l, v52.l, v49.l
	scratch_load_b32 v52, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s59, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s15
	buffer_load_u8 v52, v52, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v49.h, 8, v52.l
	scratch_load_b32 v52, off, off offset:468 ; 4-byte Folded Reload
	v_or_b16 v49.h, v51.l, v49.h
	scratch_load_b32 v51, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s59, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s16
	buffer_load_u8 v51, v51, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v51.l, 8, v51.l
	v_or_b16 v51.l, v97.l, v51.l
	scratch_load_b32 v97, off, off offset:460 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v52, s59, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s17
	buffer_load_u8 v52, v52, s[44:47], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v97, s59, v97
	v_cndmask_b32_e64 v97, 0x80000000, v97, s14
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v51.h, 8, v52.l
	v_add_nc_u32_e32 v52, s35, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v51.h, v96.l, v51.h
	scratch_load_b32 v96, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v95, s35, v95
	v_cndmask_b32_e64 v52, 0x80000000, v52, s14
	v_cndmask_b32_e64 v95, 0x80000000, v95, s12
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s35, v96
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[101:108], v[124:125], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v96, 0x80000000, v96, s13
	v_wmma_i32_16x16x16_iu4 v[101:108], v[112:113], v[34:35], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[117:118], v[36:37], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[119:120], v[38:39], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v106
	v_cvt_f32_i32_e32 v66, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v108
	v_cvt_f32_i32_e32 v76, v102
	v_cvt_f32_i32_e32 v75, v103
	v_cvt_f32_i32_e32 v0, v104
	v_cvt_f32_i32_e32 v50, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[40:41], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v101
	v_cvt_f32_i32_e32 v101, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[42:43], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[44:45], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[46:47], v[102:109] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v102
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v97, v97, s[44:47], 0 offen
	buffer_load_u8 v96, v96, s[44:47], 0 offen
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	buffer_load_u8 v53, v53, s[44:47], 0 offen
	buffer_load_u8 v102, v52, s[44:47], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v60, v103
	v_cvt_f32_i32_e32 v59, v104
	v_cvt_f32_i32_e32 v58, v105
	v_cvt_f32_i32_e32 v56, v106
	v_cvt_f32_i32_e32 v55, v107
	v_cvt_f32_i32_e32 v54, v108
	v_cvt_f32_i32_e32 v48, v109
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:428
	scratch_load_b32 v105, off, off offset:396
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v52.l, 8, v97.l
	scratch_load_b32 v97, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_or_b16 v52.l, v102.l, v52.l
	scratch_load_b32 v102, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v103, s59, v103
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v105, s59, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v103, 0x80000000, v103, s10
	v_cndmask_b32_e64 v105, 0x80000000, v105, s6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v97, s59, v97
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v97, 0x80000000, v97, s11
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s35, v102
	buffer_load_u8 v97, v97, s[44:47], 0 offen
	v_cndmask_b32_e64 v102, 0x80000000, v102, s9
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v52.h, 8, v97.l
	scratch_load_b32 v97, off, off offset:252 ; 4-byte Folded Reload
	v_or_b16 v52.h, v53.l, v52.h
	scratch_load_b32 v53, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v97, s35, v97
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s59, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v97, 0x80000000, v97, s8
	v_cndmask_b32_e64 v53, 0x80000000, v53, s12
	buffer_load_u8 v53, v53, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v53.l, 8, v53.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v53.l, v95.l, v53.l
	scratch_load_b32 v95, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	v_cndmask_b32_e64 v95, 0x80000000, v95, s13
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v53.h, 8, v95.l
	scratch_load_b32 v95, off, off offset:260 ; 4-byte Folded Reload
	v_or_b16 v53.h, v96.l, v53.h
	scratch_load_b32 v96, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v95, s35, v95
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s35, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s10
	v_cndmask_b32_e64 v96, 0x80000000, v96, s7
	s_clause 0x4
	buffer_load_u8 v103, v103, s[44:47], 0 offen
	buffer_load_u8 v104, v102, s[44:47], 0 offen
	buffer_load_u8 v97, v97, s[44:47], 0 offen
	buffer_load_u8 v96, v96, s[44:47], 0 offen
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v102.l, 8, v103.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v95.l, v102.l
	scratch_load_b32 v95, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	v_cndmask_b32_e64 v95, 0x80000000, v95, s7
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v102.h, 8, v95.l
	scratch_load_b32 v95, off, off offset:412 ; 4-byte Folded Reload
	v_or_b16 v102.h, v96.l, v102.h
	scratch_load_b32 v96, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v95, s59, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s8
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v103.l, 8, v95.l
	scratch_load_b32 v95, off, off offset:404 ; 4-byte Folded Reload
	v_or_b16 v103.l, v97.l, v103.l
	scratch_load_b32 v97, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v95, s59, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s9
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v103.h, 8, v95.l
	scratch_load_b32 v95, off, off offset:244 ; 4-byte Folded Reload
	v_or_b16 v103.h, v104.l, v103.h
	scratch_load_b32 v104, off, off offset:236 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v97, s35, v97
	v_add_nc_u32_e32 v96, s35, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v95, s35, v95
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s35, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s6
	v_cndmask_b32_e64 v104, 0x80000000, v104, s5
	s_clause 0x4
	buffer_load_u8 v105, v105, s[44:47], 0 offen
	buffer_load_u8 v106, v104, s[44:47], 0 offen
	buffer_load_u8 v97, v97, s[44:47], 0 offen
	buffer_load_u8 v96, v96, s[44:47], 0 offen
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v104.l, 8, v105.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v104.l, v95.l, v104.l
	scratch_load_b32 v95, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v104.h, 8, v95.l
	scratch_load_b32 v95, off, off offset:380 ; 4-byte Folded Reload
	v_or_b16 v104.h, v96.l, v104.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s4
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v105.l, 8, v95.l
	scratch_load_b32 v95, off, off offset:372 ; 4-byte Folded Reload
	v_or_b16 v105.l, v97.l, v105.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s59, v95
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s59, s59, s58
	s_cmp_lg_u32 s26, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v95, 0x80000000, v95, s5
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v105.h, 8, v95.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v105.h, v106.l, v105.h
	ds_store_b16 v241, v49
	ds_store_b16_d16_hi v241, v49 offset:512
	ds_store_b16 v241, v51 offset:1024
	ds_store_b16_d16_hi v241, v51 offset:1536
	ds_store_b16 v241, v52 offset:2048
	ds_store_b16_d16_hi v241, v52 offset:2560
	ds_store_b16 v241, v53 offset:3072
	ds_store_b16_d16_hi v241, v53 offset:3584
	ds_store_b16 v241, v102 offset:4096
	ds_store_b16_d16_hi v241, v102 offset:4608
	ds_store_b16 v241, v103 offset:5120
	ds_store_b16_d16_hi v241, v103 offset:5632
	ds_store_b16 v241, v104 offset:6144
	ds_store_b16_d16_hi v241, v104 offset:6656
	ds_store_b16 v241, v105 offset:7168
	ds_store_b16_d16_hi v241, v105 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v49, v198 offset:1280
	ds_load_u8 v51, v198 offset:1024
	ds_load_u8 v52, v198 offset:1920
	ds_load_u8 v53, v198 offset:1664
	ds_load_u8 v97, v198 offset:1408
	ds_load_u8 v114, v198 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v198 offset:1792
	ds_load_u8 v95, v198 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v95, v51, 0xc0c0004
	ds_load_u8 v95, v198 offset:256
	ds_load_u8 v96, v198
	ds_load_u8 v117, v198 offset:896
	ds_load_u8 v118, v198 offset:640
	ds_load_u8 v119, v198 offset:384
	ds_load_u8 v120, v198 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v198 offset:768
	ds_load_u8 v102, v198 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v96, 0xc0c0004
	v_lshl_or_b32 v96, v51, 16, v49
	ds_load_u8 v49, v198 offset:3328
	ds_load_u8 v51, v198 offset:3072
	ds_load_u8 v121, v198 offset:3968
	ds_load_u8 v122, v198 offset:3712
	ds_load_u8 v123, v198 offset:3456
	ds_load_u8 v124, v198 offset:3200
	v_lshl_or_b32 v95, v102, 16, v95
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v198 offset:3840
	ds_load_u8 v102, v198 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v102, v51, 0xc0c0004
	ds_load_u8 v102, v198 offset:2304
	ds_load_u8 v103, v198 offset:2048
	ds_load_u8 v125, v198 offset:2944
	ds_load_u8 v126, v198 offset:2688
	ds_load_u8 v127, v198 offset:2432
	ds_load_u8 v128, v198 offset:2176
	v_lshl_or_b32 v111, v51, 16, v49
	ds_load_u8 v49, v198 offset:5376
	ds_load_u8 v51, v198 offset:5120
	ds_load_u8 v129, v198 offset:6016
	ds_load_u8 v130, v198 offset:5760
	ds_load_u8 v131, v198 offset:5504
	ds_load_u8 v132, v198 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v198 offset:2816
	ds_load_u8 v104, v198 offset:2560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v103, 16, v102
	ds_load_u8 v51, v198 offset:5888
	ds_load_u8 v102, v198 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v102, v51, 0xc0c0004
	ds_load_u8 v102, v198 offset:4352
	ds_load_u8 v103, v198 offset:4096
	ds_load_u8 v133, v198 offset:4992
	ds_load_u8 v134, v198 offset:4736
	ds_load_u8 v135, v198 offset:4480
	ds_load_u8 v138, v198 offset:4224
	v_lshl_or_b32 v113, v51, 16, v49
	ds_load_u8 v49, v198 offset:7424
	ds_load_u8 v51, v198 offset:7168
	ds_load_u8 v139, v198 offset:8064
	ds_load_u8 v140, v198 offset:7808
	ds_load_u8 v141, v198 offset:7552
	ds_load_u8 v214, v198 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v198 offset:4864
	ds_load_u8 v104, v198 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v103, 16, v102
	ds_load_u8 v51, v198 offset:7936
	ds_load_u8 v102, v198 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v102, v51, 0xc0c0004
	ds_load_u8 v102, v198 offset:6400
	ds_load_u8 v103, v198 offset:6144
	ds_load_u8 v215, v198 offset:7040
	ds_load_u8 v216, v198 offset:6784
	ds_load_u8 v217, v198 offset:6528
	ds_load_u8 v218, v198 offset:6272
	v_lshl_or_b32 v116, v51, 16, v49
	v_perm_b32 v49, v114, v97, 0xc0c0004
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v52, v120, v119, 0xc0c0004
	v_perm_b32 v53, v118, v117, 0xc0c0004
	v_mov_b32_e32 v114, v146
	v_mov_b32_e32 v146, v172
	v_lshl_or_b32 v118, v51, 16, v49
	v_perm_b32 v49, v124, v123, 0xc0c0004
	v_lshl_or_b32 v117, v53, 16, v52
	v_perm_b32 v51, v122, v121, 0xc0c0004
	v_perm_b32 v52, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v198 offset:6912
	ds_load_u8 v104, v198 offset:6656
	v_perm_b32 v53, v126, v125, 0xc0c0004
	v_lshl_or_b32 v120, v51, 16, v49
	v_perm_b32 v49, v132, v131, 0xc0c0004
	v_perm_b32 v51, v130, v129, 0xc0c0004
	v_mov_b32_e32 v131, v145
	v_lshl_or_b32 v119, v53, 16, v52
	v_perm_b32 v52, v138, v135, 0xc0c0004
	v_perm_b32 v53, v134, v133, 0xc0c0004
	v_lshl_or_b32 v123, v51, 16, v49
	v_perm_b32 v49, v214, v141, 0xc0c0004
	v_perm_b32 v51, v140, v139, 0xc0c0004
	v_mov_b32_e32 v145, v171
	v_lshl_or_b32 v122, v53, 16, v52
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v218, v217, 0xc0c0004
	v_perm_b32 v53, v216, v215, 0xc0c0004
	v_lshl_or_b32 v125, v51, 16, v49
	v_mov_b32_e32 v171, v246
	v_mov_b32_e32 v246, v14
	v_mov_b32_e32 v14, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_lshl_or_b32 v124, v53, 16, v52
	v_dual_mov_b32 v69, v70 :: v_dual_mov_b32 v70, v71
	v_mov_b32_e32 v129, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v115, v103, 16, v102
	v_wmma_i32_16x16x16_iu4 v[102:109], v[95:96], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v157, v174
	v_mov_b32_e32 v126, v154
	v_mov_b32_e32 v154, v161
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[18:19], v[102:109] neg_lo:[1,1,0]
	v_dual_mov_b32 v161, v184 :: v_dual_mov_b32 v184, v235
	v_mov_b32_e32 v235, v15
	v_mov_b32_e32 v127, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[20:21], v[102:109] neg_lo:[1,1,0]
	v_dual_mov_b32 v155, v162 :: v_dual_mov_b32 v162, v185
	v_mov_b32_e32 v141, v167
	v_mov_b32_e32 v172, v247
	v_wmma_i32_16x16x16_iu4 v[102:109], v[115:116], v[22:23], v[102:109] neg_lo:[1,1,0]
	v_dual_mov_b32 v247, v13 :: v_dual_mov_b32 v138, v190
	v_dual_mov_b32 v130, v144 :: v_dual_mov_b32 v121, v137
	v_mov_b32_e32 v140, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v245, v102
	v_cvt_f32_i32_e32 v213, v103
	v_cvt_f32_i32_e32 v211, v104
	v_cvt_f32_i32_e32 v210, v105
	v_cvt_f32_i32_e32 v209, v106
	v_cvt_f32_i32_e32 v208, v107
	v_cvt_f32_i32_e32 v207, v108
	v_cvt_f32_i32_e32 v206, v109
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v137, v164 :: v_dual_mov_b32 v164, v187
	v_dual_mov_b32 v187, v202 :: v_dual_mov_b32 v166, v204
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[18:19], v[102:109] neg_lo:[1,1,0]
	v_mov_b32_e32 v190, v10
	v_mov_b32_e32 v144, v170
	v_mov_b32_e32 v128, v156
	v_mov_b32_e32 v156, v173
	v_wmma_i32_16x16x16_iu4 v[102:109], v[122:123], v[20:21], v[102:109] neg_lo:[1,1,0]
	v_mov_b32_e32 v170, v199
	v_mov_b32_e32 v134, v152
	v_mov_b32_e32 v152, v178
	v_mov_b32_e32 v132, v150
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[22:23], v[102:109] neg_lo:[1,1,0]
	v_mov_b32_e32 v150, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v102
	v_cvt_f32_i32_e32 v16, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v108
	v_cvt_f32_i32_e32 v18, v109
	v_cvt_f32_i32_e32 v52, v103
	v_cvt_f32_i32_e32 v51, v104
	v_cvt_f32_i32_e32 v49, v105
	v_cvt_f32_i32_e32 v19, v106
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[95:96], v[24:25], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[26:27], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[28:29], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[115:116], v[30:31], v[102:109] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v228, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v227, v103
	v_cvt_f32_i32_e32 v226, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v225, v105
	v_cvt_f32_i32_e32 v217, v106
	v_cvt_f32_i32_e32 v216, v107
	v_cvt_f32_i32_e32 v215, v108
	v_cvt_f32_i32_e32 v214, v109
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[24:25], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[26:27], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[122:123], v[28:29], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[30:31], v[102:109] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v20, v107
	v_cvt_f32_i32_e32 v21, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v109
	v_cvt_f32_i32_e32 v31, v103
	v_cvt_f32_i32_e32 v30, v104
	v_cvt_f32_i32_e32 v29, v105
	v_cvt_f32_i32_e32 v23, v106
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[95:96], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[34:35], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[36:37], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[115:116], v[38:39], v[102:109] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v244, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v242, v103
	v_cvt_f32_i32_e32 v240, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v231, v105
	v_cvt_f32_i32_e32 v224, v106
	v_cvt_f32_i32_e32 v222, v107
	v_cvt_f32_i32_e32 v220, v108
	v_cvt_f32_i32_e32 v218, v109
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[34:35], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[122:123], v[36:37], v[102:109] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v36, 0x80000000, v200, vcc_lo
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v200, 2, v200
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[38:39], v[102:109] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v39, 0x80000000, v70, s0
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v70, 2, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v32, v102
	v_cvt_f32_i32_e32 v24, v107
	v_cvt_f32_i32_e32 v25, v108
	v_cvt_f32_i32_e32 v26, v109
	v_cvt_f32_i32_e32 v35, v103
	v_cvt_f32_i32_e32 v34, v104
	v_cvt_f32_i32_e32 v33, v105
	v_cvt_f32_i32_e32 v27, v106
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[95:96], v[40:41], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[42:43], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[112:113], v[44:45], v[102:109] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:28
	scratch_load_b32 v112, off, off offset:24
	v_wmma_i32_16x16x16_iu4 v[102:109], v[115:116], v[46:47], v[102:109] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:92
	scratch_load_b32 v115, off, off offset:88
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v95, v102
	v_cvt_f32_i32_e32 v96, v103
	v_cvt_f32_i32_e32 v97, v104
	v_cvt_f32_i32_e32 v110, v105
	v_cvt_f32_i32_e32 v230, v106
	v_cvt_f32_i32_e32 v229, v107
	v_cvt_f32_i32_e32 v38, v108
	v_cvt_f32_i32_e32 v37, v109
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v118, v148
	v_mov_b32_e32 v148, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[42:43], v[102:109] neg_lo:[1,1,0]
	v_dual_mov_b32 v120, v149 :: v_dual_mov_b32 v149, v160
	v_mov_b32_e32 v160, v183
	v_mov_b32_e32 v147, v175
	v_wmma_i32_16x16x16_iu4 v[102:109], v[122:123], v[44:45], v[102:109] neg_lo:[1,1,0]
	v_mov_b32_e32 v122, v179
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[46:47], v[102:109] neg_lo:[1,1,0]
	v_mov_b32_e32 v124, v142
	v_mov_b32_e32 v142, v168
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v40, 0x80000000, v69, s1
	v_mov_b32_e32 v168, v192
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v107
	v_cvt_f32_i32_e32 v4, v106
	v_cvt_f32_i32_e32 v5, v102
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	v_dual_mov_b32 v119, v136 :: v_dual_mov_b32 v136, v153
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v103
	v_cvt_f32_i32_e32 v7, v104
	v_cvt_f32_i32_e32 v6, v105
	v_cvt_f32_i32_e32 v3, v109
	v_cvt_f32_i32_e32 v2, v108
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v47, off, off offset:188
	scratch_load_b32 v192, off, off offset:148
	scratch_load_b32 v107, off, off offset:84
	scratch_load_b32 v106, off, off offset:80
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v69, 2, v69
	s_waitcnt vmcnt(10)
	v_dual_mov_b32 v167, v191 :: v_dual_lshlrev_b32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v191, v11 :: v_dual_mul_f32 v46, v36, v94
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v153, v181 :: v_dual_lshlrev_b32 v40, 16, v40
	scratch_load_b32 v181, off, off offset:184 ; 4-byte Folded Reload
	v_mov_b32_e32 v125, v143
	v_mov_b32_e32 v143, v169
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v41, 0x80000000, v47, s2
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v42, v12, s[52:55], 0 offen
	v_mov_b32_e32 v135, v163
	v_dual_mov_b32 v163, v186 :: v_dual_mov_b32 v186, v239
	v_mov_b32_e32 v239, v243
	v_mov_b32_e32 v243, v74
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v47, 2, v47
	v_add_nc_u32_e32 v12, s56, v12
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v39, 16, v39
	v_mov_b32_e32 v117, v158
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v158, off, off offset:144
	scratch_load_b32 v175, off, off offset:132
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v11, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v183, v201 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mov_b32_e32 v139, v165
	v_dual_mov_b32 v165, v188 :: v_dual_mov_b32 v188, v203
	s_waitcnt vmcnt(0)
	ds_store_b32 v11, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v13, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[42:45], v236
	ds_load_b128 v[102:105], v236 offset:16
	v_mov_b32_e32 v133, v151
	v_mov_b32_e32 v151, v177
	scratch_load_b32 v71, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v182, v46, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v36, v83
	scratch_load_b32 v83, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v183, v46, v43 :: v_dual_mul_f32 v46, v36, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v250, v46, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v46, v36, v13
	scratch_load_b32 v13, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v184, v46, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v39, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v46, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v39, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v46, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v39, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v46, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v39, v86
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v161, v46, v45 :: v_dual_mul_f32 v46, v40, v100
	v_mov_b32_e32 v123, v180
	scratch_load_b32 v100, off, off offset:72 ; 4-byte Folded Reload
	v_fmac_f32_e32 v106, v46, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v40, v99
	scratch_load_b32 v99, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v46, v43 :: v_dual_mul_f32 v46, v40, v98
	v_mov_b32_e32 v169, v193
	v_mov_b32_e32 v193, v73
	v_mov_b32_e32 v73, v84
	scratch_load_b32 v98, off, off offset:8 ; 4-byte Folded Reload
	v_fmac_f32_e32 v142, v46, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v40, v93
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v93, off, off offset:64
	scratch_load_b32 v77, off, off offset:32
	scratch_load_b32 v84, off, off offset:48
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v46, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v41, v205
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v46, v42 :: v_dual_mul_f32 v42, v41, v197
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v232, v36
	scratch_load_b32 v232, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v83, v42, v43 :: v_dual_mul_f32 v42, v41, v101
	scratch_load_b32 v101, off, off offset:76 ; 4-byte Folded Reload
	v_dual_fmac_f32 v127, v42, v44 :: v_dual_mul_f32 v42, v41, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v126, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v42, v36, v13
	scratch_load_b32 v13, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v249, v42, v102 :: v_dual_mul_f32 v42, v36, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v13, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v175, v42, v103 :: v_dual_mul_f32 v42, v36, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v13, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v251, v42, v104 :: v_dual_mul_f32 v42, v36, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v252, v42, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v39, v81
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v42, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v42, v39, v80 :: v_dual_mul_f32 v1, v1, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v41
	v_mul_f32_e32 v2, v2, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v4, v41, v4 :: v_dual_fmac_f32 v123, v42, v103
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v39, v79
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v153, v42, v104 :: v_dual_mul_f32 v42, v39, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v154, v42, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v40, v92
	scratch_load_b32 v92, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v42, v102 :: v_dual_mul_f32 v42, v40, v91
	scratch_load_b32 v91, off, off offset:56 ; 4-byte Folded Reload
	v_dual_fmac_f32 v99, v42, v103 :: v_dual_mul_f32 v42, v40, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v42, v104
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v40, v85
	scratch_load_b32 v85, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v42, v105 :: v_dual_mul_f32 v42, v41, v64
	v_fmac_f32_e32 v112, v42, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v41, v63
	scratch_load_b32 v102, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v42, v103 :: v_dual_mul_f32 v42, v41, v62
	scratch_load_b32 v103, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v120, v42, v104
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v41, v61
	scratch_load_b32 v104, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v42, v105
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[42:45], v236 offset:512
	ds_load_b128 v[61:64], v236 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v247, v46, v42 :: v_dual_mul_f32 v46, v36, v223
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v138, v46, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v36, v221
	scratch_load_b32 v221, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v167, v46, v44 :: v_dual_mul_f32 v46, v36, v219
	scratch_load_b32 v219, off, off offset:104 ; 4-byte Folded Reload
	v_fmac_f32_e32 v168, v46, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v212, v39
	scratch_load_b32 v212, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v237, v46, v42 :: v_dual_mul_f32 v46, v39, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:168
	scratch_load_b32 v223, off, off offset:112
	v_dual_fmac_f32 v147, v46, v43 :: v_dual_mul_f32 v46, v39, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v115, v46, v44 :: v_dual_mul_f32 v46, v39, v194
	v_fmac_f32_e32 v116, v46, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v9, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v21, v39
	v_mul_f32_e32 v21, v40, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v223, v46, v42 :: v_dual_mul_f32 v46, v40, v76
	scratch_load_b32 v76, off, off offset:40 ; 4-byte Folded Reload
	v_fmac_f32_e32 v130, v46, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v40, v75
	scratch_load_b32 v75, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v46, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v40, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v46, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v57, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v193, v46, v42 :: v_dual_mul_f32 v42, v41, v60
	v_fmac_f32_e32 v102, v42, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v41, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v42, v44 :: v_dual_mul_f32 v42, v41, v58
	v_fmac_f32_e32 v104, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v36, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v169, v42, v61 :: v_dual_mul_f32 v0, v0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v246, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v243, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v239, v0, v64 :: v_dual_mul_f32 v0, v39, v238
	v_fmac_f32_e32 v148, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v235, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v39
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v232, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v40, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v93, v0, v61 :: v_dual_mul_f32 v0, v67, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v221, v0, v62 :: v_dual_mul_f32 v0, v66, v40
	v_fmac_f32_e32 v219, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v41, v56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v55, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v54, v41
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v48, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v0, v64
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v14, s[52:55], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v14, s56, v14
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v11, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v236
	ds_load_b128 v[54:57], v236 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v189, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v213
	scratch_load_b32 v213, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v188, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v211
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v187, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v210
	scratch_load_b32 v210, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v186, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v165, v0, v43 :: v_dual_mul_f32 v0, v39, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v163, v0, v44 :: v_dual_mul_f32 v0, v39, v225
	v_fmac_f32_e32 v164, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v231
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v0, v45 :: v_dual_mul_f32 v0, v41, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v129, v0, v42 :: v_dual_mul_f32 v0, v41, v96
	v_fmac_f32_e32 v84, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v0, v44 :: v_dual_mul_f32 v0, v41, v110
	scratch_load_b32 v110, off, off offset:352 ; 4-byte Folded Reload
	v_fmac_f32_e32 v128, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v209
	scratch_load_b32 v209, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v181, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v208
	scratch_load_b32 v208, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v255, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v207
	scratch_load_b32 v207, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v254, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v253, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v217
	scratch_load_b32 v217, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v216
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v157, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v215
	scratch_load_b32 v215, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v155, v0, v56 :: v_dual_mul_f32 v0, v39, v214
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v214, off, off offset:156
	scratch_load_b32 v211, off, off offset:140
	v_fmac_f32_e32 v156, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v222
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v220
	scratch_load_b32 v220, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v230
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v75, v0, v54 :: v_dual_mul_f32 v0, v41, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v121, v0, v56 :: v_dual_mul_f32 v0, v41, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v76, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v36
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[42:45], v236 offset:512
	ds_load_b128 v[53:56], v236 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v71, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v132, v21, v53
	v_fmac_f32_e32 v118, v4, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v248, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v172, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v28, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v152, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v151, v0, v44 :: v_dual_mul_f32 v0, v39, v29
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[29:30], off, off
	scratch_load_b64 v[30:31], off, off offset:200
	v_fmac_f32_e32 v150, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v32, v40
	scratch_load_b64 v[31:32], off, off offset:208 ; 8-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v213, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v5, v41
	v_mul_f32_e32 v5, v17, v36
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v17, v39, v23 :: v_dual_fmac_f32 v210, v0, v42
	v_mul_f32_e32 v0, v41, v8
	v_mul_f32_e32 v8, v20, v39
	v_mul_f32_e32 v20, v26, v40
	s_clause 0x5                            ; 40-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:356
	scratch_load_b64 v[32:33], off, off offset:216
	scratch_load_b64 v[33:34], off, off offset:224
	scratch_load_b64 v[27:28], off, off offset:192
	scratch_load_b32 v218, off, off offset:176
	scratch_load_b32 v216, off, off offset:164
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v149, v17, v53
	v_fmac_f32_e32 v113, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v7
	v_mul_f32_e32 v7, v36, v19
	v_mul_f32_e32 v19, v25, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v6
	v_mul_f32_e32 v6, v18, v36
	v_dual_mul_f32 v18, v24, v40 :: v_dual_fmac_f32 v171, v7, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v234, v19, v55 :: v_dual_fmac_f32 v117, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v36
	v_mul_f32_e32 v16, v22, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v18, v54
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v209, v1, v54 :: v_dual_fmac_f32 v208, v2, v55
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v207, v3, v56
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v217, v6, v56
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v215, v9, v55 :: v_dual_fmac_f32 v214, v16, v56
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v211, v20, v56
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v220, v0, v54 :: v_dual_add_nc_u32 v29, s57, v29
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v30, s57, v30
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v31, s57, v31
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v32, s57, v32
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v27, s57, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v218, v5, v55
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v216, v8, v54 :: v_dual_add_nc_u32 v15, s57, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v105, off, off offset:520
	scratch_load_b32 v108, off, off offset:524
	scratch_load_b32 v109, off, off offset:528
	scratch_load_b32 v111, off, off offset:532
	scratch_load_b32 v78, off, off offset:536
	scratch_load_b32 v79, off, off offset:540
	scratch_load_b32 v80, off, off offset:544
	scratch_load_b32 v81, off, off offset:548
	scratch_load_b32 v82, off, off offset:552
	scratch_load_b32 v86, off, off offset:556
	scratch_load_b32 v87, off, off offset:560
	scratch_load_b32 v88, off, off offset:564
	scratch_load_b32 v89, off, off offset:568
	scratch_load_b32 v90, off, off offset:572
	scratch_load_b32 v94, off, off offset:576
	scratch_load_b32 v95, off, off offset:580
	scratch_load_b32 v96, off, off offset:584
	scratch_load_b32 v97, off, off offset:588
	v_mov_b32_e32 v5, v26
.LBB0_7:                                ; %Flow778
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v110
	v_or_b32_e32 v2, 60, v110
	v_or_b32_e32 v4, 58, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s68, v0
	v_add_co_ci_u32_e64 v1, null, s69, 0, s0
	v_add_co_u32 v2, s1, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s1
	v_add_co_u32 v7, s1, s68, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v110
	v_or_b32_e32 v4, 52, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s5, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s5
	v_add_co_u32 v2, s5, s68, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s9, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s9
	v_add_co_u32 v7, s9, s68, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 46, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v188
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s13, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	v_add_co_u32 v1, s13, s68, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v220 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v217
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v39, 0xbfb8aa3b, v181
	v_mul_f32_e32 v37, 0xbfb8aa3b, v172
	v_mul_f32_e32 v45, 0xbfb8aa3b, v166
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v13
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v12, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v16, 0, 0x42800000, s18
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v12
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v217
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v14, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v17
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v220
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v21, 0, 0x42800000, s18
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s17
	v_ldexp_f32 v11, v11, v0
	v_exp_f32_e32 v14, v14
	v_dual_mul_f32 v0, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v214
	v_mul_f32_e32 v43, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s18
	v_dual_mul_f32 v22, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v201, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v216
	v_ldexp_f32 v12, v12, v4
	v_ldexp_f32 v13, v14, v13
	v_ldexp_f32 v14, v16, v15
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v32, 0xbfb8aa3b, v163
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v0, 0xbfb8aa3b, v155 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v16, 0xbfb8aa3b, v215
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v22
	v_mul_f32_e32 v52, 0xbfb8aa3b, v84
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v216
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, s18
	v_mul_f32_e32 v42, 0xbfb8aa3b, v144
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v19, 0, 0x42800000, s17
	v_mul_f32_e32 v36, 0xbfb8aa3b, v248
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s17
	v_ldexp_f32 v15, v15, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v4, 0xbfb8aa3b, v213 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v215
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v211
	v_mul_f32_e32 v49, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s18
	v_ldexp_f32 v16, v17, v16
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v25, v25
	v_mul_f32_e32 v196, 0xbfb8aa3b, v85
	v_mul_f32_e32 v33, 0xbfb8aa3b, v121
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	s_waitcnt vmcnt(17)
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_and_b32 v6, 0x80, v105
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v197, 0xbfb8aa3b, v129 :: v_dual_add_f32 v14, 1.0, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v18
	v_ldexp_f32 v18, v21, v20
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	v_mul_f32_e32 v21, 0xbfb8aa3b, v234
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v11, v11, v71
	v_div_scale_f32 v67, s18, v218, v13, v218
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v56
	v_div_scale_f32 v70, null, v15, v15, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s17
	v_mul_f32_e32 v44, 0xbfb8aa3b, v150
	v_mul_f32_e32 v206, 0xbfb8aa3b, v152
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v213
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v73
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v234
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s17
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v195, 0xbfb8aa3b, v75 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v254
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v4
	v_ldexp_f32 v19, v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v21, v23, v22
	v_dual_mul_f32 v4, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v209
	v_ldexp_f32 v22, v25, v24
	v_dual_mul_f32 v24, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v23
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v20, 1.0, v20
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v50, 0, 0x42800000, s17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v25
	v_dual_mul_f32 v194, 0xbfb8aa3b, v124 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v210
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[7:8]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s17
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s17
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v61, vcc_lo, v71, v11, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v58, v25
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v7, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v186
	v_dual_mul_f32 v30, 0xbfb8aa3b, v255 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v165
	v_ldexp_f32 v48, v50, v48
	v_dual_mul_f32 v26, 0xbfb8aa3b, v253 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v170
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v50, v57, v54
	v_ldexp_f32 v54, v58, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v56, v60, 1.0
	v_div_scale_f32 v57, null, v12, v12, v220
	v_div_scale_f32 v58, null, v13, v13, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v55, v60
	v_rcp_f32_e32 v55, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_mul_f32 v63, v61, v60
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v23, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v38, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v57, v55, 1.0
	v_fma_f32 v65, -v56, v63, v61
	v_fma_f32 v66, -v58, v62, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v64, v55
	v_div_scale_f32 v64, s17, v220, v12, v220
	v_dual_fmac_f32 v63, v65, v60 :: v_dual_fmac_f32 v62, v66, v62
	v_div_scale_f32 v66, null, v14, v14, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v65, v64, v55
	v_fma_f32 v56, -v56, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v40, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v203, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v61, -v57, v65, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v56, v56, v60, v63
	v_rcp_f32_e32 v60, v70
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v205, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v61, v55
	v_div_fixup_f32 v11, v56, v11, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v204, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v131
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v66, v68, 1.0
	v_fma_f32 v56, -v57, v65, v64
	v_div_scale_f32 v57, s19, v217, v14, v217
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v202, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v63, v68
	v_mul_f32_e32 v69, v67, v62
	v_div_fmas_f32 v55, v56, v55, v65
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v63, s17, v72, v15, v72
	v_fma_f32 v61, -v58, v69, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v55, v12, v220
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v200, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v128
	v_dual_mul_f32 v46, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v199, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v61, v62
	v_fma_f32 v61, -v70, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v198, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v76
	v_dual_mul_f32 v24, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v58, v69, v67
	v_mul_f32_e32 v58, v57, v68
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, null, v16, v16, v216
	v_div_scale_f32 v67, null, v17, v17, v215
	v_fma_f32 v64, -v66, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v117
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v64, v68
	v_div_fmas_f32 v56, v56, v62, v69
	v_rcp_f32_e32 v62, v61
	s_mov_b32 vcc_lo, s19
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 44, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v66, v58, v57
	v_div_fixup_f32 v13, v56, v13, v218
	v_rcp_f32_e32 v56, v67
	v_div_scale_f32 v66, null, v18, v18, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v57, v57, v68, v58
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v64, -v61, v62, 1.0
	v_mul_f32_e32 v65, v63, v60
	v_div_scale_f32 v68, s19, v215, v17, v215
	v_div_scale_f32 v71, s17, v214, v18, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v64, v62
	v_fma_f32 v55, -v70, v65, v63
	v_rcp_f32_e32 v64, v66
	v_fma_f32 v69, -v67, v56, 1.0
	v_div_fixup_f32 v14, v57, v14, v217
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[1:2]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v55, v60
	v_div_scale_f32 v55, s18, v216, v16, v216
	v_fmac_f32_e32 v56, v69, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v70, v65, v63
	v_mul_f32_e32 v63, v55, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v66, v64, 1.0
	v_div_scale_f32 v70, null, v20, v20, v213
	v_div_fmas_f32 v58, v58, v60, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v61, v63, v55
	v_fmac_f32_e32 v64, v69, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v70
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v15, v58, v15, v72
	v_fmac_f32_e32 v63, v60, v62
	v_div_scale_f32 v60, null, v19, v19, v73
	v_fma_f32 v55, -v61, v63, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v61, v60
	v_fma_f32 v72, -v70, v69, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v62, v63
	s_mov_b32 vcc_lo, s19
	v_dual_fmac_f32 v69, v72, v69 :: v_dual_mul_f32 v58, v71, v64
	v_div_scale_f32 v72, s20, v213, v20, v213
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v60, v61, 1.0
	v_div_fixup_f32 v16, v55, v16, v216
	v_fmac_f32_e32 v61, v63, v61
	v_mul_f32_e32 v65, v68, v56
	v_div_scale_f32 v63, null, v21, v21, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v67, v65, v68
	v_fmac_f32_e32 v65, v57, v56
	v_fma_f32 v57, -v66, v58, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v67, v65, v68
	v_dual_fmac_f32 v58, v57, v64 :: v_dual_mul_f32 v57, v72, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v62, v56, v65
	v_fma_f32 v62, -v66, v58, v71
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v70, v57, v72
	v_div_scale_f32 v66, s18, v73, v19, v73
	v_div_fmas_f32 v58, v62, v64, v58
	v_rcp_f32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v65, v69
	v_div_fixup_f32 v55, v56, v17, v215
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v56, v58, v18, v214
	v_div_scale_f32 v58, null, v22, v22, v211
	v_fma_f32 v17, -v70, v57, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v63, v62, 1.0
	v_div_fmas_f32 v17, v17, v69, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v57, v58
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v62, v65, v62
	v_mul_f32_e32 v64, v66, v61
	v_div_scale_f32 v65, null, v59, v59, v210
	v_div_fixup_f32 v67, v17, v20, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v60, v64, v66
	v_fmac_f32_e32 v64, v18, v61
	v_div_scale_f32 v18, s17, v234, v21, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v60, v64, v66
	v_mul_f32_e32 v20, v18, v62
	v_fma_f32 v60, -v58, v57, 1.0
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v61, v64
	v_fma_f32 v61, -v63, v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v60, v57
	v_div_scale_f32 v64, s18, v211, v22, v211
	v_div_scale_f32 v60, null, v48, v48, v209
	v_div_fixup_f32 v69, v17, v19, v73
	v_fma_f32 v68, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v20, v61, v62 :: v_dual_mul_f32 v19, v64, v57
	v_rcp_f32_e32 v17, v60
	v_div_scale_f32 v61, s19, v210, v59, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v63, v20, v18
	v_fma_f32 v63, -v58, v19, v64
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, null, v50, v50, v208
	v_div_scale_f32 v73, null, v54, v54, v207
	s_mov_b32 vcc_lo, s17
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v60, v17, 1.0
	v_div_fmas_f32 v18, v18, v62, v20
	v_dual_fmac_f32 v19, v63, v57 :: v_dual_mul_f32 v70, v61, v66
	v_rcp_f32_e32 v62, v73
	v_fmac_f32_e32 v17, v71, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v74, v18, v21, v234
	v_fma_f32 v18, -v58, v19, v64
	v_fma_f32 v20, -v65, v70, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v71, -v68, v72, 1.0
	v_div_scale_f32 v21, s20, v208, v50, v208
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v63, s17, v209, v48, v209
	v_fmac_f32_e32 v72, v71, v72
	v_fmac_f32_e32 v70, v20, v66
	v_fma_f32 v58, -v73, v62, 1.0
	v_div_fmas_f32 v18, v18, v57, v19
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v65, v70, v61
	v_fmac_f32_e32 v62, v58, v62
	v_div_scale_f32 v58, s18, v207, v54, v207
	v_mul_f32_e32 v61, v21, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v66, v70
	v_div_fixup_f32 v65, v18, v22, v211
	v_mul_f32_e32 v64, v58, v62
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v19, v59, v210
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v247, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v73, v64, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v19, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s19
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v63, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v60, v20, v63
	v_fmac_f32_e32 v20, v57, v17
	v_fma_f32 v57, -v68, v61, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v60, v20, v63
	v_fmac_f32_e32 v61, v57, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v18, v17, v20
	v_fma_f32 v17, -v68, v61, v21
	v_fma_f32 v20, -v73, v64, v58
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s17
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v72, v61
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v246, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v20, v62, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v10, v48, v209
	v_div_fixup_f32 v9, v9, v54, v207
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v243, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v221, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v190, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v20, v18
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v186
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v17, v50, v208
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v235, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v10, v57
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v233, v55
	v_dual_mul_f32 v18, v237, v15 :: v_dual_mul_f32 v15, v232, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v212, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v8, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v239, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v55, v55, v188
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v219, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v54, v54, v189
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v63, v63, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v193, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, vcc_lo, v189, v54, v189
	v_rcp_f32_e32 v59, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v61, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v56, v62, 1.0
	v_fma_f32 v8, -v58, v60, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v223, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, s17, v188, v55, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v62, v7, v62 :: v_dual_mul_f32 v7, v192, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v65, v59, 1.0
	v_fmac_f32_e32 v60, v8, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v191, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v50, v67, v62 :: v_dual_fmac_f32 v59, v57, v59
	v_mul_f32_e32 v66, v64, v60
	v_div_scale_f32 v68, s18, v186, v63, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v58, v66, v64
	v_fmac_f32_e32 v66, v61, v60
	v_div_scale_f32 v61, null, v48, v48, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v58, v66, v64
	v_rcp_f32_e32 v57, v61
	v_fma_f32 v64, -v56, v50, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v58, v60, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v64, v62
	v_mul_f32_e32 v64, v68, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v54, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v181
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v61, v57, 1.0
	v_fma_f32 v54, -v56, v50, v67
	v_fma_f32 v56, -v65, v64, v68
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v66, v57
	v_div_scale_f32 v66, s19, v187, v48, v187
	v_div_fmas_f32 v30, v54, v62, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v56, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v66, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s20
	v_ldexp_f32 v56, v60, v58
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v255
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v61, v50, v66
	v_fma_f32 v65, -v65, v64, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v27, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v62, null, v56, v56, v181
	v_div_fmas_f32 v59, v65, v59, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v61, v50, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v254
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v55, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v54
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v57, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v62, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v253
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v57, v64
	v_div_scale_f32 v57, vcc_lo, v181, v56, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v27, v60, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v50, v50, v255
	v_dual_mul_f32 v67, v57, v64 :: v_dual_add_f32 v60, 1.0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v58
	v_div_fixup_f32 v27, v59, v63, v186
	v_fma_f32 v55, -v62, v67, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v61, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v60, v60, v254
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v184, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v67, v55, v64 :: v_dual_add_f32 v54, 1.0, v54
	v_div_scale_f32 v55, s17, v255, v50, v255
	v_fma_f32 v59, -v58, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v62, v67, v57
	v_div_scale_f32 v62, null, v54, v54, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v59, v65
	v_div_fmas_f32 v57, v57, v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v36, v182, v39 :: v_dual_mul_f32 v61, v55, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v57, v56, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v58, v61, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v249, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v248
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v48, v187
	v_rcp_f32_e32 v48, v66
	v_fma_f32 v57, -v62, v63, 1.0
	v_fmac_f32_e32 v61, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v250, v26 :: v_dual_fmac_f32 v63, v57, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v58, v61, v55
	v_div_scale_f32 v58, s19, v253, v54, v253
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v66, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v172
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v37, v37, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v59, v48
	v_div_scale_f32 v59, s18, v254, v60, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v59, v48
	v_fma_f32 v56, -v66, v67, v59
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v67, v56, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_fmas_f32 v55, v55, v65, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_exp_f32_e32 v31, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v58, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v66, v67, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v62, v61, v58
	v_div_scale_f32 v66, null, v57, v57, v248
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v59, v48, v67
	v_rcp_f32_e32 v56, v66
	v_fmac_f32_e32 v61, v37, v63
	v_div_fixup_f32 v37, v55, v50, v255
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v170
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v175, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v48, v60, v254
	v_fma_f32 v48, -v62, v61, v58
	v_div_scale_f32 v58, null, v50, v50, v172
	v_fma_f32 v59, -v66, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v63, v61
	v_rcp_f32_e32 v60, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v59, v56
	v_div_scale_f32 v59, s17, v248, v57, v248
	v_div_fixup_f32 v28, v48, v54, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v58, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v63, -v66, v61, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_fmac_f32 v60, v62, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s18, v172, v50, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v64, null, v55, v55, v170
	v_mul_f32_e32 v63, v62, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v251, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v66, v61, v59
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v66, -v58, v63, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v183, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v54, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v59, v56, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v66, v60
	v_div_scale_f32 v45, s17, v170, v55, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v54, v54, v57, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v64, v65, 1.0
	v_div_fmas_f32 v41, v57, v60, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s19
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v48, v48, v171
	v_fmac_f32_e32 v65, v56, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v45, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v138, v138, v54
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v58, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v61, v59
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v57, v60, v57
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v63, v56
	v_div_scale_f32 v63, s18, v171, v48, v171
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v50, v172
	v_fma_f32 v50, -v64, v62, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v66, null, v57, v57, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v50, v65
	v_mul_f32_e32 v50, v63, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v167, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v64, v62, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v58, v50, v63
	v_div_fmas_f32 v32, v45, v65, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v60, null, v64, v64, v166
	v_fmac_f32_e32 v50, v38, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v61, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v58, v50, v63
	v_rcp_f32_e32 v63, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s19
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v206
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v166, v64, v166
	v_fma_f32 v65, -v60, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v252, v28 :: v_dual_add_f32 v59, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v66, v63, 1.0
	v_div_fixup_f32 v38, v32, v55, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v65, v61
	v_div_scale_f32 v65, null, v59, v59, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v56, v63
	v_div_scale_f32 v56, s17, v165, v57, v165
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v56, v63
	v_div_fixup_f32 v45, v45, v48, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v50, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v169, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v60, v62, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v45, v61
	v_fma_f32 v45, -v66, v55, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v60, v62, v50
	v_fmac_f32_e32 v55, v45, v63
	v_fma_f32 v45, -v65, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v54, null, v48, v48, v163
	v_div_fmas_f32 v50, v50, v61, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v66, v55, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v54
	v_fmac_f32_e32 v67, v45, v67
	v_div_scale_f32 v45, s18, v164, v59, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v62, s17, v163, v48, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v56, v63, v55
	v_fma_f32 v61, -v54, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v45, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v57, v165
	v_fmac_f32_e32 v40, v61, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v65, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v157
	v_ldexp_f32 v0, v35, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v62, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v64, v166
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v57, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v54, v35, v62
	v_div_scale_f32 v64, null, v0, v0, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_exp_f32_e32 v34, v58
	v_ldexp_f32 v58, v61, v60
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v64
	v_fma_f32 v45, -v65, v56, v45
	v_fmac_f32_e32 v35, v63, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v45, v45, v67, v56
	v_fma_f32 v54, -v54, v35, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v58 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v60, 1.0
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_3)
	v_div_scale_f32 v58, null, v56, v56, v157
	v_div_fmas_f32 v35, v54, v40, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v57, v60
	v_div_scale_f32 v57, vcc_lo, v158, v0, v158
	v_rcp_f32_e32 v54, v58
	v_div_fixup_f32 v45, v45, v59, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v62, 1.0, v34 :: v_dual_mul_f32 v59, v57, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v35, v48, v163
	v_div_scale_f32 v66, s17, v157, v56, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v40, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v64, v59, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v168, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v58, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v160, v55 :: v_dual_add_f32 v55, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v62, v62, v155
	v_dual_fmac_f32 v59, v65, v60 :: v_dual_fmac_f32 v54, v35, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v67, null, v55, v55, v156
	v_rcp_f32_e32 v63, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v161, v45
	v_mul_f32_e32 v45, v159, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v64, v59, v57
	v_mul_f32_e32 v61, v66, v54
	v_rcp_f32_e32 v64, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v60, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v61, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v48, v63, 1.0
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v0, v50, v0, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v57, v54
	v_fma_f32 v68, -v67, v64, 1.0
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, s18, v155, v62, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v58, v61, v66
	v_fmac_f32_e32 v64, v68, v64
	v_div_scale_f32 v66, s19, v156, v55, v156
	v_mul_f32_e32 v60, v65, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v50, v50, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v48, v60, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v59, v57
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v67, v54, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v60, v58, v63 :: v_dual_add_f32 v57, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v44, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v60, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v57, v57, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v63, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v65
	v_fma_f32 v43, -v67, v54, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v56, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v122, v122, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v64, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v59, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v65, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v55, v156
	v_div_scale_f32 v59, null, v54, v54, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v58, vcc_lo, v152, v57, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v123, v123, v50 :: v_dual_mul_f32 v68, v58, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v48, v62, v155
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v154, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v65, v68, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v63, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v59, v66, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v55, v60
	v_div_scale_f32 v55, s17, v151, v54, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v56, v66
	v_fma_f32 v58, -v65, v68, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v62, null, v50, v50, v149
	v_mul_f32_e32 v61, v55, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v60, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v204
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v59, v61, v55
	v_div_fixup_f32 v0, v58, v57, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v66
	v_div_scale_f32 v63, s19, v149, v50, v149
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v62, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v59, v61, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v162, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v55, v66, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v202
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v63, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v55, v54, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v62, v61, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v61, v66, v60
	v_rcp_f32_e32 v48, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v67, v48, 1.0
	v_fmac_f32_e32 v48, v56, v48
	v_div_scale_f32 v56, s18, v150, v64, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v56, v48
	v_fma_f32 v57, -v67, v65, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v57, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v67, v65, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v57, v57, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v48, v56, v48, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v59, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v64, v150
	v_div_scale_f32 v69, null, v57, v57, v146
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v62, v61, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v62, null, v55, v55, v145
	v_div_fmas_f32 v56, v56, v60, v61
	v_div_scale_f32 v61, s17, v146, v57, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v56, v50, v149
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v69, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v63, v58
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v62, v60, 1.0
	v_dual_mul_f32 v63, v61, v58 :: v_dual_fmac_f32 v60, v64, v60
	v_div_scale_f32 v64, s18, v145, v55, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v69, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v143 :: v_dual_fmac_f32 v63, v65, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v69, v63, v61
	v_fma_f32 v61, -v62, v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v54, v58, v63
	v_fmac_f32_e32 v65, v61, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v201
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v59, v59, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v54, v57, v146
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v57, -v62, v65, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v57, v60, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s19
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v140
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v59, v59, v143
	v_div_fixup_f32 v55, v57, v55, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v144
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s19
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v46
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v47, v63, v62
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v50, v56, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v56, v147, v0 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v64, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v66, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s17, v143, v59, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v148, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v60, v60, v139
	v_mul_f32_e32 v65, v50, v48
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v66, v65, v50
	v_fmac_f32_e32 v65, v57, v48
	v_div_scale_f32 v58, null, v0, v0, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v66, v65, v50
	v_rcp_f32_e32 v61, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v50, v48, v65
	v_rcp_f32_e32 v65, v68
	v_div_scale_f32 v64, null, v66, v66, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v58, v61, 1.0
	v_fmac_f32_e32 v61, v67, v61
	v_div_scale_f32 v67, s18, v144, v0, v144
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v57, v67, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v58, v57, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v153, v44 :: v_dual_fmac_f32 v57, v47, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v58, v57, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v61, v57
	v_div_scale_f32 v57, vcc_lo, v140, v66, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v67, -v64, v63, 1.0
	v_fma_f32 v61, -v68, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v62
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v48, v0, v144
	v_fmac_f32_e32 v63, v67, v63
	v_fmac_f32_e32 v65, v61, v65
	v_div_scale_f32 v61, s17, v139, v60, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v57, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v46, v59, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v142, v0 :: v_dual_mul_f32 v59, v61, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v64, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v67, null, v58, v58, v137
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v141, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v0, v63
	v_fma_f32 v0, -v68, v59, v61
	v_rcp_f32_e32 v69, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v64, v62, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v0, v65
	v_div_fmas_f32 v50, v50, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v68, v59, v61
	v_fma_f32 v0, -v67, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v0, v69
	v_div_fmas_f32 v55, v55, v65, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v60, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v48, v48, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v133
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v54, v0, 1.0
	v_fmac_f32_e32 v0, v63, v0
	v_div_scale_f32 v63, s17, v136, v48, v136
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v65, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v63, v0
	v_div_fixup_f32 v50, v50, v66, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v54, v53, v63
	v_fmac_f32_e32 v53, v66, v0
	v_div_scale_f32 v57, s18, v137, v58, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v54, v53, v63
	v_mul_f32_e32 v59, v57, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v67, v59, v57
	v_fmac_f32_e32 v59, v60, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v62, v61
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v59, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v131
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v49, v62
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v57, v69, v59
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v54, v0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v58, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v59, v59, v133
	v_div_fixup_f32 v0, v0, v48, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v63, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v65, v65, v131
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s17, v133, v59, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v53
	v_fma_f32 v57, -v53, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v57, v58
	v_div_scale_f32 v57, s19, v131, v65, v131
	v_dual_mul_f32 v55, v57, v58 :: v_dual_add_f32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v67, null, v60, v60, v134
	v_div_scale_f32 v49, s18, v134, v60, v134
	s_mov_b32 vcc_lo, s18
	v_rcp_f32_e32 v66, v67
	v_fma_f32 v61, -v67, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v61, v66
	v_rcp_f32_e32 v61, v64
	v_mul_f32_e32 v54, v49, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v67, v54, v49
	v_fma_f32 v63, -v64, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v54, v62, v66 :: v_dual_fmac_f32 v61, v63, v61
	v_div_scale_f32 v62, null, v0, v0, v132
	v_fma_f32 v49, -v67, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v63, v48, v61
	v_rcp_f32_e32 v67, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v54, v49, v66, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v135, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v64, v63, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v50, v61
	v_fma_f32 v50, -v53, v55, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v64, v63, v48
	v_fmac_f32_e32 v55, v50, v58
	v_div_fixup_f32 v54, v54, v60, v134
	v_fma_f32 v60, -v62, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, s18, v132, v0, v132
	v_fma_f32 v53, -v53, v55, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v60, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v52, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v129
	v_exp_f32_e32 v51, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v59, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v62, v64, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v128 :: v_dual_fmac_f32 v64, v57, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v58, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	v_ldexp_f32 v51, v51, v60
	v_exp_f32_e32 v57, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v62, v64, v52
	v_div_fixup_f32 v53, v53, v65, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v52, v67, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v92, v53 :: v_dual_mul_f32 v91, v91, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v51, v51, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v52, v0, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v57, v57, v128
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v93, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s19
	v_ldexp_f32 v48, v52, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v63, v64, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v130, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s18, v128, v57, v128
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v62, v64
	v_div_scale_f32 v62, s17, v84, v51, v84
	v_fma_f32 v66, -v59, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v62, v64
	v_fmac_f32_e32 v0, v66, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v48, v48, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v55, null, v50, v50, v129
	v_rcp_f32_e32 v58, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v55, v58, 1.0
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, vcc_lo, v129, v50, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v61, v58
	v_fma_f32 v53, -v55, v65, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v65, v53, v58
	v_fma_f32 v53, -v63, v60, v62
	v_fma_f32 v55, -v55, v65, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v53, v64
	v_mul_f32_e32 v53, v54, v0
	v_rcp_f32_e32 v61, v66
	v_div_fmas_f32 v55, v55, v58, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v63, v60, v62
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v62, -v59, v53, v54
	v_div_fmas_f32 v58, v58, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v62, v0
	v_div_fixup_f32 v50, v55, v50, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v58, v51, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v66, v61, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v83, v83, v51 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v124
	v_mul_f32_e32 v51, v125, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v68
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v60, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, s17, v85, v48, v85
	v_fma_f32 v54, -v59, v53, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v59, v33, v61
	v_div_fmas_f32 v0, v54, v0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v65
	v_ldexp_f32 v63, v64, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v66, v59, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v57, v128
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v62, v62, v75
	v_fmac_f32_e32 v59, v53, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v54, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v55, v55, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v65
	v_fma_f32 v33, -v66, v59, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v61, v59
	v_div_scale_f32 v61, vcc_lo, v75, v62, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v65, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v29, v29, v121
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v84, v126, v0 :: v_dual_fmac_f32 v53, v63, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v54, v64, 1.0
	v_div_fixup_f32 v33, v33, v48, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v59
	v_mul_f32_e32 v66, v61, v53
	v_fmac_f32_e32 v64, v63, v64
	v_div_scale_f32 v63, s17, v124, v55, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v127, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v65, v66, v61
	v_mul_f32_e32 v33, v63, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v0, v53
	v_div_scale_f32 v57, s18, v121, v29, v121
	v_fma_f32 v0, -v54, v33, v63
	v_fmac_f32_e32 v60, v58, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v65, v66, v61
	v_fmac_f32_e32 v33, v0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v57, v60
	v_div_fmas_f32 v50, v50, v53, v66
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v54, v33, v63
	v_fma_f32 v54, -v59, v0, v57
	v_div_fixup_f32 v50, v50, v62, v75
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v62, 3, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v53, v64, v33
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v53, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v54, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v55, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v113
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v59, v0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v114
	v_exp_f32_e32 v53, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v119, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v4, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s17
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v57, v60, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s17
	v_ldexp_f32 v33, v53, v33
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v32|, |v21|, |v19|
.Ltmp8:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v61
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v29, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v29, 1.0, v33 :: v_dual_add_f32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v29, v29, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v4, v4, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v59, v61, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v48, 1.0, v48 :: v_dual_fmac_f32 v61, v67, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v48, v48, v76
	v_div_scale_f32 v55, vcc_lo, v76, v48, v76
	v_div_scale_f32 v67, s18, v114, v4, v114
	v_rcp_f32_e32 v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v71, v67, v61
	v_fma_f32 v60, -v24, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v60, v23
	v_mul_f32_e32 v60, v55, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v24, v60, v55
	v_fmac_f32_e32 v60, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v60, v55
	v_div_fmas_f32 v23, v24, v23, v60
	v_fma_f32 v24, -v59, v71, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v23, v48, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v118 :: v_dual_fmac_f32 v71, v24, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v120, v0 :: v_dual_mul_f32 v77, v77, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v53, v53, v117
	v_fma_f32 v63, -v54, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v63, v58
	v_div_scale_f32 v63, s17, v113, v29, v113
	v_div_scale_f32 v66, null, v33, v33, v118
	s_mov_b32 vcc_lo, s17
	v_mul_f32_e32 v69, v63, v58
	s_mov_b32 s17, 0x76543210
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v57, v64, 1.0
	v_fma_f32 v55, -v54, v69, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, s19, v117, v53, v117
	v_fmac_f32_e32 v69, v55, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v66, v68, 1.0
	v_mul_f32_e32 v72, v65, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v54, v69, v63
	v_fmac_f32_e32 v68, v70, v68
	v_div_scale_f32 v70, s20, v118, v33, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v57, v72, v65
	v_fma_f32 v54, -v59, v71, v67
	v_div_fmas_f32 v48, v48, v58, v69
	v_mul_f32_e32 v60, v70, v68
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v72, v55, v64
	v_div_fmas_f32 v54, v54, v61, v71
.Ltmp9:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v61, 8, v105
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v66, v60, v70
	s_mov_b32 vcc_lo, s19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s68, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v54, v4, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v24, v68
	v_fma_f32 v24, -v57, v72, v65
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v54, |v93|, |v13|, |v11|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v66, v60, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v64, v72
	s_mov_b32 vcc_lo, s20
	v_div_fmas_f32 v55, v55, v68, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v24, v53, v117
	v_div_fixup_f32 v24, v48, v29, v113
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_dual_mul_f32 v53, v112, v50 :: v_dual_mul_f32 v68, v103, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v55, v33, v118
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v27|, |v39|, |v37|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v102, v24
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v138|, |v41|, |v38|
	v_max_f32_e64 v29, |v45|, |v40|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v98, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v36|, |v30|
	v_max3_f32 v33, |v35|, |v122|, |v123|
	v_max3_f32 v48, |v56|, |v115|, |v116|
	v_max3_f32 v50, |v42|, |v17|, |v16|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v104, v23
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v31|, |v28|, |v22|
	v_max3_f32 v0, v0, |v26|, v4
	v_max3_f32 v4, v24, v25, |v20|
	v_max3_f32 v24, |v44|, |v43|, |v18|
	v_max3_f32 v25, v29, |v34|, v33
	v_max3_f32 v29, v48, v50, |v15|
	v_max_f32_e64 v33, |v106|, |v107|
	v_max3_f32 v48, |v47|, |v49|, |v99|
	v_max3_f32 v50, |v52|, |v91|, |v92|
	v_max3_f32 v0, v0, v23, v4
	v_max3_f32 v23, v25, v24, v29
	v_max3_f32 v4, |v100|, |v101|, |v14|
	v_max3_f32 v24, v33, |v46|, v48
	v_max3_f32 v25, v50, v54, |v12|
	v_max_f32_e64 v29, |v51|, |v83|
	v_max3_f32 v33, |v84|, |v53|, |v75|
	v_max3_f32 v48, |v67|, |v68|, |v69|
	v_max3_f32 v50, |v66|, |v7|, |v8|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v54, v0, s17, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v4, v25
	v_max3_f32 v25, |v76|, |v77|, |v10|
	v_max3_f32 v29, v29, |v85|, v33
	v_max3_f32 v33, v48, v50, |v9|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v50, v23, s17, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v54, v54
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v54, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v55, 1, v6
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v29, v25, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v57, v0, v48
	v_dual_max_f32 v54, v54, v54 :: v_dual_and_b32 v33, 3, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v58, v23, v50 :: v_dual_lshlrev_b32 v29, 4, v105
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 4, v105
	v_lshl_add_u32 v48, v33, 9, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v59, v24, v54 :: v_dual_lshlrev_b32 v50, 5, v33
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v25, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x60, v105
	v_lshl_add_u32 v48, v23, 2, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v54, 0x680, v29, v50
	v_lshl_add_u32 v63, v23, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v50, v50, v24
	v_lshl_add_u32 v48, v61, 4, v48
	v_xor_b32_e32 v54, v54, v24
.Ltmp31:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s18
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v60, v25, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v48, v55, v50
	v_add3_u32 v48, v63, v62, v54
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 42, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[3:4]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v48
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v54, s17, s68, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v55, null, s69, 0, s17
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 38, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s22, s68, v0
	v_add_co_ci_u32_e64 v1, null, s69, 0, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s22, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[2:3]
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v57
.Ltmp38:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[2:3]
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v59
.Ltmp40:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s26, s68, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s26
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v57, v57
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v4, v4 :: v_dual_mov_b32 v4, v58
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[0:1]
.Ltmp47:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v60, v60
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v60, v60 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v3
	v_max_f32_e32 v1, v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v48, v60, v60
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 5, v23
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v4, v4 :: v_dual_max_f32 v4, v59, v59
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v33, 4, v33
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 34, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[54:55]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v1, v3 :: v_dual_max_f32 v4, v4, v25
	v_max_f32_e32 v25, v0, v48
.Ltmp55:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[54:55]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s28, s68, v50
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v48, v3 :: v_dual_mov_b32 v55, v25
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s28
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v50, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp59:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[0:1]
.Ltmp60:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v48, v48
	v_max_f32_e32 v48, v55, v55
.Ltmp62:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v57, 3, v61
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v50, v50
	v_max_f32_e32 v3, v3, v0
	v_max_f32_e32 v25, v25, v48
.Ltmp65:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 32, v110
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v48, v3 :: v_dual_mov_b32 v55, v25
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s30, s68, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s30
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v50, v4
.Ltmp71:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v48, v48 :: v_dual_max_f32 v48, v55, v55
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v54, v2
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_barrier
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v3, v1
	v_max_f32_e32 v3, v25, v48
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v54, v54, v54 :: v_dual_add_nc_u32 v25, 0, v33
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v23, v25, v23, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v54
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v0, v2, v54
	v_max_f32_e32 v2, v50, v50
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v50, 1, v24
	v_add_nc_u32_e32 v54, 0, v6
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v54, v50, v57
.Ltmp84:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v54, s33, s68, v97
	v_add_co_ci_u32_e64 v55, null, s69, 0, s33
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v23
.Ltmp86:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v57, s33, s68, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v58, null, s69, 0, s33
	v_add_co_u32 v59, s33, s68, v95
	v_add_co_ci_u32_e64 v60, null, s69, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v54, s38, s68, v94
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[57:58]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[57:58]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s69, 0, s38
	v_add_co_u32 v57, s38, s68, v90
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v58, null, s69, 0, s38
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[70:71], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v54, s43, s68, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, 0x2b8cbccc, v0
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[57:58]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[57:58]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s69, 0, s43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v57, s43, s68, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[59:60]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v23, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[59:60]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v58, null, s69, 0, s43
	v_add_co_u32 v59, s43, s68, v87
	v_add_co_ci_u32_e64 v60, null, s69, 0, s43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[54:55]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v0, v23, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[59:60]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[59:60]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v50, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v4, 0x40e00000, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[54:55]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v54, s49, s68, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v48, v25, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[57:58]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[57:58]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s69, 0, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v59, -v0, v48, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v57, s49, s68, v82
	v_add_co_ci_u32_e64 v58, null, s69, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v60, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v1, v1, v1 :: v_dual_fmac_f32 v48, v59, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v54, s52, s68, v81
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[57:58]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s69, 0, s52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[57:58]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v57, 0x2b8cbccc, v1
	v_fma_f32 v0, -v0, v48, v25
	v_fma_f32 v1, -v50, v60, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[54:55]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v23, v0, v23, v48
	v_div_scale_f32 v48, null, 0x40e00000, 0x40e00000, v57
	v_fmac_f32_e32 v60, v1, v60
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v58, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v48
	v_div_fixup_f32 v4, v23, 0x40e00000, v4
	v_mul_f32_e32 v61, v25, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v62, v58
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s54, s68, v80
	v_add_co_ci_u32_e64 v1, null, s69, 0, s54
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[54:55]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v50, v61, v25
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v54.l, v4.h
	v_mov_b16_e32 v54.h, v63.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v55, -v48, v59, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v61, v23, v60
	v_fma_f32 v0, -v58, v62, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v23, 1, v54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v59, v55, v59
	v_div_scale_f32 v54, s59, v57, 0x40e00000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v0, v62
	v_div_scale_f32 v55, s60, v3, 0x40e00000, v3
	v_fma_f32 v25, -v50, v61, v25
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v23, v4, v23, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v4, v54, v59
	v_mul_f32_e32 v50, v55, v62
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s57, s68, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v25, v25, v60, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v48, v4, v54
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v61, 0xffff0000, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s57
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v64, -v58, v50, v55
	v_fmac_f32_e32 v4, v60, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v60, null, v61, v61, v36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[0:1]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v50, v64, v62
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v48, v4, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v64, v60
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v2, v25, 0x40e00000, v2
	v_fma_f32 v1, -v58, v50, v55
	v_div_fmas_f32 v0, v0, v59, v4
	s_mov_b32 vcc_lo, s60
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v54.h, v63.h
	v_mov_b16_e32 v63.l, v2.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v62, v50
	v_div_fixup_f32 v0, v0, 0x40e00000, v57
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v4, -v60, v64, 1.0
	v_div_scale_f32 v50, null, v61, v61, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v25, 1, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v54.l, v0.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v64, v4, v64
	v_div_scale_f32 v57, vcc_lo, v36, v61, v36
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v48, v1, 0x40e00000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v55, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v25, 0x7fff
	v_and_b32_e32 v2, 1, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v58, v57, v64
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v48.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v62, null, v61, v61, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v60, v58, v57
	v_div_scale_f32 v65, null, v61, v61, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v50, v55, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v59, 1, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v63, v62
	v_fmac_f32_e32 v58, v0, v64
	v_rcp_f32_e32 v0, v65
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v55, v54, v55
	v_div_scale_f32 v70, s59, v30, v61, v30
	v_fma_f32 v72, -v62, v63, 1.0
	v_fma_f32 v57, -v60, v58, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v65, v0, 1.0
	v_mul_f32_e32 v71, v70, v55
	v_div_scale_f32 v74, null, v61, v61, v39
	v_fmac_f32_e32 v63, v72, v63
	v_div_scale_f32 v72, s60, v26, v61, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v50, v71, v70
	v_fmac_f32_e32 v0, v73, v0
	v_div_scale_f32 v73, null, v61, v61, v37
	v_div_fmas_f32 v57, v57, v64, v58
	v_fmac_f32_e32 v71, v60, v55
	v_mul_f32_e32 v58, v72, v63
	v_rcp_f32_e32 v60, v74
	v_div_scale_f32 v64, s61, v27, v61, v27
	v_rcp_f32_e32 v78, v73
	v_div_fixup_f32 v36, v57, v61, v36
	v_fma_f32 v50, -v50, v71, v70
	v_fma_f32 v57, -v62, v58, v72
	v_mul_f32_e32 v70, v64, v0
	s_mov_b32 vcc_lo, s59
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v48, v59, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v74, v60, 1.0
	v_div_fmas_f32 v50, v50, v55, v71
	v_fmac_f32_e32 v58, v57, v63
	v_fma_f32 v55, -v65, v70, v64
	v_fma_f32 v71, -v73, v78, 1.0
	v_fmac_f32_e32 v60, v79, v60
	v_div_scale_f32 v57, s59, v39, v61, v39
	v_div_fixup_f32 v30, v50, v61, v30
	v_fma_f32 v50, -v62, v58, v72
	v_fmac_f32_e32 v70, v55, v0
	v_fmac_f32_e32 v78, v71, v78
	v_div_scale_f32 v71, null, v61, v61, v31
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v55, v57, v60
	v_div_scale_f32 v62, s62, v37, v61, v37
	v_div_fmas_f32 v50, v50, v63, v58
	v_fma_f32 v58, -v65, v70, v64
	v_rcp_f32_e32 v64, v71
	v_div_scale_f32 v72, null, v61, v61, v28
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v63, -v74, v55, v57
	v_mul_f32_e32 v65, v62, v78
	v_div_fmas_f32 v0, v58, v0, v70
	v_rcp_f32_e32 v58, v72
	v_div_fixup_f32 v26, v50, v61, v26
	v_fmac_f32_e32 v55, v63, v60
	v_fma_f32 v63, -v73, v65, v62
	v_fma_f32 v70, -v71, v64, 1.0
	v_div_fixup_f32 v27, v0, v61, v27
	v_div_scale_f32 v50, s60, v31, v61, v31
	v_fma_f32 v0, -v74, v55, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v65, v63, v78 :: v_dual_fmac_f32 v64, v70, v64
	v_fma_f32 v57, -v72, v58, 1.0
	v_div_scale_f32 v63, null, v61, v61, v22
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v70, null, v61, v61, v138
	v_div_fmas_f32 v0, v0, v60, v55
	v_fma_f32 v55, -v73, v65, v62
	v_mul_f32_e32 v60, v50, v64
	v_fmac_f32_e32 v58, v57, v58
	v_rcp_f32_e32 v57, v63
	v_div_scale_f32 v62, s59, v28, v61, v28
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v39, v0, v61, v39
	v_div_fmas_f32 v55, v55, v78, v65
	v_fma_f32 v65, -v71, v60, v50
	v_mul_f32_e32 v73, v62, v58
	v_rcp_f32_e32 v78, v70
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v63, v57, 1.0
	v_fmac_f32_e32 v60, v65, v64
	v_fma_f32 v0, -v72, v73, v62
	v_div_scale_f32 v65, null, v61, v61, v41
	v_div_fixup_f32 v37, v55, v61, v37
	v_fmac_f32_e32 v57, v74, v57
	v_div_scale_f32 v55, s61, v22, v61, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v70, v78, 1.0
	v_fma_f32 v50, -v71, v60, v50
	v_fmac_f32_e32 v73, v0, v58
	v_rcp_f32_e32 v71, v65
	v_mul_f32_e32 v0, v55, v57
	v_fmac_f32_e32 v78, v74, v78
	v_div_scale_f32 v74, s62, v138, v61, v138
	v_div_fmas_f32 v50, v50, v64, v60
	v_fma_f32 v60, -v72, v73, v62
	v_div_scale_f32 v79, null, v61, v61, v38
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v62, -v63, v0, v55
	v_mul_f32_e32 v64, v74, v78
	v_fma_f32 v72, -v65, v71, 1.0
	v_div_fmas_f32 v58, v60, v58, v73
	v_rcp_f32_e32 v60, v79
	v_fmac_f32_e32 v0, v62, v57
	v_fma_f32 v62, -v70, v64, v74
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, s59, v41, v61, v41
	v_div_fixup_f32 v31, v50, v61, v31
	v_div_fixup_f32 v28, v58, v61, v28
	v_fma_f32 v50, -v63, v0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v64, v62, v78 :: v_dual_mul_f32 v55, v72, v71
	v_fma_f32 v58, -v79, v60, 1.0
	v_div_scale_f32 v62, null, v61, v61, v32
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v63, s60, v38, v61, v38
	v_div_fmas_f32 v0, v50, v57, v0
	v_fma_f32 v50, -v70, v64, v74
	v_fma_f32 v57, -v65, v55, v72
	v_fmac_f32_e32 v60, v58, v60
	v_rcp_f32_e32 v58, v62
	v_div_scale_f32 v70, null, v61, v61, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v57, v71
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v0, v0, v61, v22
	v_rcp_f32_e32 v57, v70
	v_div_fmas_f32 v50, v50, v78, v64
	v_mul_f32_e32 v64, v63, v60
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v73, -v62, v58, 1.0
	v_div_scale_f32 v74, null, v61, v61, v19
	v_div_fixup_f32 v22, v50, v61, v138
	v_fma_f32 v50, -v65, v55, v72
	v_fma_f32 v65, -v79, v64, v63
	v_fmac_f32_e32 v58, v73, v58
	v_fma_f32 v73, -v70, v57, 1.0
	v_div_scale_f32 v72, s61, v32, v61, v32
	v_div_fmas_f32 v50, v50, v71, v55
	v_fmac_f32_e32 v64, v65, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, v73, v57
	v_div_scale_f32 v73, null, v61, v61, v20
	v_dual_mul_f32 v55, v72, v58 :: v_dual_and_b32 v48, 0xffff0000, v1
	v_rcp_f32_e32 v65, v74
	v_div_scale_f32 v71, s59, v21, v61, v21
	v_div_fixup_f32 v41, v50, v61, v41
	v_fma_f32 v50, -v79, v64, v63
	v_rcp_f32_e32 v79, v73
	v_fma_f32 v63, -v62, v55, v72
	v_mul_f32_e32 v78, v71, v57
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v74, v65, 1.0
	v_div_fmas_f32 v50, v50, v60, v64
	v_fmac_f32_e32 v55, v63, v58
	v_fma_f32 v60, -v70, v78, v71
	v_div_scale_f32 v63, s60, v19, v61, v19
	v_fma_f32 v64, -v73, v79, 1.0
	v_dual_fmac_f32 v65, v80, v65 :: v_dual_and_b32 v54, 0xffff0000, v2
	v_div_fixup_f32 v38, v50, v61, v38
	v_fma_f32 v50, -v62, v55, v72
	v_fmac_f32_e32 v78, v60, v57
	v_fmac_f32_e32 v79, v64, v79
	v_div_scale_f32 v64, null, v59, v59, v45
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v60, v63, v65
	v_div_scale_f32 v62, s62, v20, v61, v20
	v_div_fmas_f32 v50, v50, v58, v55
	v_fma_f32 v55, -v70, v78, v71
	v_rcp_f32_e32 v70, v64
	v_div_scale_f32 v72, null, v59, v59, v40
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v58, -v74, v60, v63
	v_mul_f32_e32 v71, v62, v79
	v_div_fmas_f32 v55, v55, v57, v78
	v_rcp_f32_e32 v57, v72
	v_div_fixup_f32 v32, v50, v61, v32
	v_fmac_f32_e32 v60, v58, v65
	v_fma_f32 v58, -v73, v71, v62
	v_fma_f32 v78, -v64, v70, 1.0
	v_div_fixup_f32 v21, v55, v61, v21
	v_div_scale_f32 v55, s59, v45, v59, v45
	v_fma_f32 v50, -v74, v60, v63
	v_fmac_f32_e32 v71, v58, v79
	v_fmac_f32_e32 v70, v78, v70
	v_fma_f32 v58, -v72, v57, 1.0
	v_div_scale_f32 v63, null, v59, v59, v34
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v88, null, v48, v48, v93
	v_div_fmas_f32 v50, v50, v65, v60
	v_fma_f32 v60, -v73, v71, v62
	v_dual_mul_f32 v62, v55, v70 :: v_dual_fmac_f32 v57, v58, v57
	v_rcp_f32_e32 v58, v63
	v_div_scale_f32 v65, s60, v40, v59, v40
	v_div_scale_f32 v73, null, v59, v59, v35
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v74, v65, v57
	v_div_fmas_f32 v60, v60, v79, v71
	v_fma_f32 v71, -v64, v62, v55
	v_rcp_f32_e32 v79, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v63, v58, 1.0
	v_div_fixup_f32 v19, v50, v61, v19
	v_div_fixup_f32 v20, v60, v61, v20
	v_fmac_f32_e32 v62, v71, v70
	v_fma_f32 v50, -v72, v74, v65
	v_div_scale_f32 v61, null, v59, v59, v122
	v_fmac_f32_e32 v58, v78, v58
	v_div_scale_f32 v60, s61, v34, v59, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v71, -v73, v79, 1.0
	v_fma_f32 v55, -v64, v62, v55
	v_fmac_f32_e32 v74, v50, v57
	v_rcp_f32_e32 v64, v61
	s_mov_b32 vcc_lo, s59
	v_dual_mul_f32 v50, v60, v58 :: v_dual_fmac_f32 v79, v71, v79
	v_div_scale_f32 v71, s62, v35, v59, v35
	v_div_fmas_f32 v55, v55, v70, v62
	v_fma_f32 v62, -v72, v74, v65
	v_div_scale_f32 v78, null, v59, v59, v123
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v65, -v63, v50, v60
	v_mul_f32_e32 v70, v71, v79
	v_fma_f32 v72, -v61, v64, 1.0
	v_div_fmas_f32 v57, v62, v57, v74
	v_rcp_f32_e32 v62, v78
	v_fmac_f32_e32 v50, v65, v58
	v_fma_f32 v65, -v73, v70, v71
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s59, v122, v59, v122
	v_div_fixup_f32 v45, v55, v59, v45
	v_div_fixup_f32 v40, v57, v59, v40
	v_fma_f32 v55, -v63, v50, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v70, v65, v79 :: v_dual_mul_f32 v57, v72, v64
	v_fma_f32 v60, -v78, v62, 1.0
	v_div_scale_f32 v63, null, v59, v59, v44
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v65, s60, v123, v59, v123
	v_div_fmas_f32 v50, v55, v58, v50
	v_fma_f32 v55, -v73, v70, v71
	v_fma_f32 v58, -v61, v57, v72
	v_fmac_f32_e32 v62, v60, v62
	v_rcp_f32_e32 v60, v63
	v_div_scale_f32 v71, null, v59, v59, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v58, v64
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v34, v50, v59, v34
	v_rcp_f32_e32 v58, v71
	v_div_fmas_f32 v55, v55, v79, v70
	v_mul_f32_e32 v70, v65, v62
	v_fma_f32 v50, -v61, v57, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v63, v60, 1.0
	v_div_scale_f32 v61, s61, v44, v59, v44
	v_div_fixup_f32 v35, v55, v59, v35
	v_fma_f32 v55, -v78, v70, v65
	v_fmac_f32_e32 v60, v73, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v71, v58, 1.0
	v_div_scale_f32 v73, null, v59, v59, v18
	v_div_scale_f32 v74, null, v59, v59, v56
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v70, v55, v62
	v_div_fmas_f32 v50, v50, v64, v57
	v_dual_mul_f32 v57, v61, v60 :: v_dual_fmac_f32 v58, v72, v58
	v_rcp_f32_e32 v64, v73
	v_div_scale_f32 v72, s59, v43, v59, v43
	v_rcp_f32_e32 v79, v74
	v_fma_f32 v55, -v78, v70, v65
	v_fma_f32 v65, -v63, v57, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v78, v72, v58
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v50, v50, v59, v122
	v_div_fmas_f32 v55, v55, v62, v70
	v_fma_f32 v80, -v73, v64, 1.0
	v_fmac_f32_e32 v57, v65, v60
	v_fma_f32 v62, -v71, v78, v72
	v_fma_f32 v70, -v74, v79, 1.0
	v_div_scale_f32 v65, s60, v18, v59, v18
	v_fmac_f32_e32 v64, v80, v64
	v_fma_f32 v61, -v63, v57, v61
	v_fmac_f32_e32 v78, v62, v58
	v_fmac_f32_e32 v79, v70, v79
	v_div_scale_f32 v70, null, v59, v59, v115
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v62, v65, v64
	v_div_scale_f32 v63, s62, v56, v59, v56
	v_div_fmas_f32 v57, v61, v60, v57
	v_fma_f32 v60, -v71, v78, v72
	v_rcp_f32_e32 v71, v70
	v_div_scale_f32 v80, null, v59, v59, v116
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v61, -v73, v62, v65
	v_mul_f32_e32 v72, v63, v79
	v_div_fmas_f32 v58, v60, v58, v78
	v_rcp_f32_e32 v60, v80
	v_div_fixup_f32 v44, v57, v59, v44
	v_fmac_f32_e32 v62, v61, v64
	v_fma_f32 v61, -v74, v72, v63
	v_fma_f32 v78, -v70, v71, 1.0
	v_div_fixup_f32 v43, v58, v59, v43
	v_div_scale_f32 v58, s59, v115, v59, v115
	v_fma_f32 v57, -v73, v62, v65
	v_fmac_f32_e32 v72, v61, v79
	v_fmac_f32_e32 v71, v78, v71
	v_fma_f32 v61, -v80, v60, 1.0
	v_div_scale_f32 v65, null, v59, v59, v42
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v73, null, v59, v59, v17
	v_div_fmas_f32 v57, v57, v64, v62
	v_fma_f32 v62, -v74, v72, v63
	v_dual_mul_f32 v63, v58, v71 :: v_dual_fmac_f32 v60, v61, v60
	v_rcp_f32_e32 v61, v65
	v_div_scale_f32 v64, s60, v116, v59, v116
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v18, v57, v59, v18
	v_div_fmas_f32 v62, v62, v79, v72
	v_fma_f32 v72, -v70, v63, v58
	v_mul_f32_e32 v74, v64, v60
	v_rcp_f32_e32 v79, v73
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v65, v61, 1.0
	v_fmac_f32_e32 v63, v72, v71
	v_fma_f32 v57, -v80, v74, v64
	v_div_scale_f32 v72, null, v59, v59, v16
	v_div_fixup_f32 v56, v62, v59, v56
	v_fmac_f32_e32 v61, v78, v61
	v_div_scale_f32 v62, s61, v42, v59, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v73, v79, 1.0
	v_fma_f32 v58, -v70, v63, v58
	v_fmac_f32_e32 v74, v57, v60
	v_rcp_f32_e32 v81, v72
	v_mul_f32_e32 v70, v62, v61
	v_fmac_f32_e32 v79, v78, v79
	v_div_scale_f32 v78, s62, v17, v59, v17
	v_div_fmas_f32 v57, v58, v71, v63
	v_fma_f32 v58, -v80, v74, v64
	v_div_scale_f32 v80, null, v59, v59, v15
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v63, -v65, v70, v62
	v_mul_f32_e32 v64, v78, v79
	v_fma_f32 v71, -v72, v81, 1.0
	v_div_fmas_f32 v58, v58, v60, v74
	v_rcp_f32_e32 v60, v80
	v_fmac_f32_e32 v70, v63, v61
	v_fma_f32 v63, -v73, v64, v78
	v_fmac_f32_e32 v81, v71, v81
	v_div_scale_f32 v71, s59, v16, v59, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v65, v70, v62
	v_fmac_f32_e32 v64, v63, v79
	v_div_scale_f32 v74, null, v48, v48, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v71, v81
	v_fma_f32 v65, -v80, v60, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v55, v55, v59, v123
	v_div_fmas_f32 v61, v62, v61, v70
	v_fma_f32 v70, -v72, v63, v71
	v_fmac_f32_e32 v60, v65, v60
	v_rcp_f32_e32 v65, v74
	v_fma_f32 v62, -v73, v64, v78
	v_div_scale_f32 v73, s60, v15, v59, v15
	v_div_scale_f32 v78, null, v48, v48, v107
	v_fmac_f32_e32 v63, v70, v81
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v70, v73, v60
	v_div_fmas_f32 v62, v62, v79, v64
	v_rcp_f32_e32 v64, v78
	v_fma_f32 v79, -v74, v65, 1.0
	v_div_fixup_f32 v42, v61, v59, v42
	v_fma_f32 v61, -v72, v63, v71
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v17, v62, v59, v17
	v_fma_f32 v62, -v80, v70, v73
	v_fmac_f32_e32 v65, v79, v65
	v_div_scale_f32 v71, s61, v106, v48, v106
	v_div_scale_f32 v79, null, v48, v48, v46
	v_div_fmas_f32 v61, v61, v81, v63
	v_div_scale_f32 v81, null, v48, v48, v47
	v_fma_f32 v72, -v78, v64, 1.0
	v_fmac_f32_e32 v70, v62, v60
	v_mul_f32_e32 v62, v71, v65
	v_rcp_f32_e32 v63, v79
	v_rcp_f32_e32 v82, v81
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s59, v107, v48, v107
	v_div_fixup_f32 v16, v61, v59, v16
	v_fma_f32 v61, -v80, v70, v73
	v_fma_f32 v73, -v74, v62, v71
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v80, v72, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v79, v63, 1.0
	v_div_fmas_f32 v60, v61, v60, v70
	v_fmac_f32_e32 v62, v73, v65
	v_fma_f32 v73, -v81, v82, 1.0
	v_div_fixup_f32 v57, v57, v59, v115
	v_div_fixup_f32 v58, v58, v59, v116
	v_fma_f32 v61, -v78, v80, v72
	v_fmac_f32_e32 v63, v86, v63
	v_div_scale_f32 v70, s60, v46, v48, v46
	v_div_fixup_f32 v15, v60, v59, v15
	v_fma_f32 v59, -v74, v62, v71
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, null, v48, v48, v49
	s_mov_b32 vcc_lo, s61
	v_dual_fmac_f32 v80, v61, v64 :: v_dual_mul_f32 v61, v70, v63
	v_div_scale_f32 v71, s62, v47, v48, v47
	v_div_fmas_f32 v59, v59, v65, v62
	v_rcp_f32_e32 v65, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v60, -v78, v80, v72
	v_fma_f32 v62, -v79, v61, v70
	v_mul_f32_e32 v72, v71, v82
	v_div_scale_f32 v74, null, v48, v48, v99
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v61, v62, v63
	v_div_fmas_f32 v60, v60, v64, v80
	v_rcp_f32_e32 v62, v74
	v_fma_f32 v64, -v81, v72, v71
	v_fma_f32 v78, -v73, v65, 1.0
	v_fma_f32 v70, -v79, v61, v70
	v_div_scale_f32 v79, null, v48, v48, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v72, v64, v82 :: v_dual_fmac_f32 v65, v78, v65
	v_div_scale_f32 v64, s59, v49, v48, v49
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v78, -v74, v62, 1.0
	v_div_fmas_f32 v61, v70, v63, v61
	v_fma_f32 v63, -v81, v72, v71
	v_mul_f32_e32 v70, v64, v65
	v_rcp_f32_e32 v71, v79
	v_div_scale_f32 v80, null, v48, v48, v101
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v62, v78, v62
	v_div_scale_f32 v78, s60, v99, v48, v99
	v_div_fmas_f32 v63, v63, v82, v72
	v_fma_f32 v72, -v73, v70, v64
	v_rcp_f32_e32 v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v81, v78, v62
	v_fma_f32 v82, -v79, v71, 1.0
	v_div_fixup_f32 v46, v61, v48, v46
	v_fmac_f32_e32 v70, v72, v65
	v_div_scale_f32 v72, null, v48, v48, v14
	v_div_fixup_f32 v47, v63, v48, v47
	v_fma_f32 v61, -v74, v81, v78
	v_fmac_f32_e32 v71, v82, v71
	v_div_scale_f32 v63, s61, v100, v48, v100
	v_fma_f32 v82, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v72
	v_fma_f32 v64, -v73, v70, v64
	v_fmac_f32_e32 v81, v61, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v73, v63, v71 :: v_dual_fmac_f32 v86, v82, v86
	v_div_scale_f32 v82, s62, v101, v48, v101
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v59, v59, v48, v106
	v_div_fmas_f32 v61, v64, v65, v70
	v_fma_f32 v64, -v74, v81, v78
	v_fma_f32 v65, -v79, v73, v63
	v_mul_f32_e32 v70, v82, v86
	v_fma_f32 v74, -v72, v87, 1.0
	v_div_scale_f32 v78, null, v48, v48, v52
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v73, v65, v71
	v_div_fmas_f32 v62, v64, v62, v81
	v_rcp_f32_e32 v64, v78
	v_fma_f32 v65, -v80, v70, v82
	v_fmac_f32_e32 v87, v74, v87
	v_div_scale_f32 v74, s59, v14, v48, v14
	v_div_fixup_f32 v49, v61, v48, v49
	v_div_fixup_f32 v61, v62, v48, v99
	v_fma_f32 v62, -v79, v73, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v70, v65, v86 :: v_dual_mul_f32 v65, v74, v87
	v_div_scale_f32 v79, null, v48, v48, v91
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v63, -v78, v64, 1.0
	v_div_fmas_f32 v62, v62, v71, v73
	v_fma_f32 v71, -v80, v70, v82
	v_fma_f32 v73, -v72, v65, v74
	v_rcp_f32_e32 v80, v79
	v_fmac_f32_e32 v64, v63, v64
	v_div_scale_f32 v81, s60, v52, v48, v52
	v_div_scale_f32 v82, null, v48, v48, v92
	v_fmac_f32_e32 v65, v73, v87
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v60, v60, v48, v107
	v_div_fmas_f32 v63, v71, v86, v70
	v_rcp_f32_e32 v70, v82
	v_mul_f32_e32 v71, v81, v64
	v_fma_f32 v73, -v79, v80, 1.0
	v_fma_f32 v72, -v72, v65, v74
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v62, v62, v48, v100
	v_fma_f32 v74, -v78, v71, v81
	v_fmac_f32_e32 v80, v73, v80
	v_div_scale_f32 v73, s61, v91, v48, v91
	v_div_fmas_f32 v65, v72, v87, v65
	v_div_scale_f32 v87, null, v48, v48, v13
	v_fma_f32 v86, -v82, v70, 1.0
	v_fmac_f32_e32 v71, v74, v64
	v_mul_f32_e32 v72, v73, v80
	v_rcp_f32_e32 v74, v88
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v70, v86, v70
	v_div_scale_f32 v86, s59, v92, v48, v92
	v_div_fixup_f32 v14, v65, v48, v14
	v_fma_f32 v65, -v78, v71, v81
	v_fma_f32 v78, -v79, v72, v73
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v81, v86, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v88, v74, 1.0
	v_div_fmas_f32 v64, v65, v64, v71
	v_fmac_f32_e32 v72, v78, v80
	v_fma_f32 v78, -v87, v89, 1.0
	v_fma_f32 v65, -v82, v81, v86
	v_fmac_f32_e32 v74, v90, v74
	v_div_scale_f32 v71, s60, v93, v48, v93
	v_div_fixup_f32 v52, v64, v48, v52
	v_fma_f32 v64, -v79, v72, v73
	v_fmac_f32_e32 v89, v78, v89
	v_div_scale_f32 v78, null, v48, v48, v11
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v65, v70
	v_mul_f32_e32 v65, v71, v74
	v_div_scale_f32 v73, s62, v13, v48, v13
	v_div_fmas_f32 v64, v64, v80, v72
	v_rcp_f32_e32 v80, v78
	v_fma_f32 v72, -v82, v81, v86
	v_fma_f32 v79, -v88, v65, v71
	v_mul_f32_e32 v82, v73, v89
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v86, null, v48, v48, v12
	v_div_fmas_f32 v70, v72, v70, v81
	v_fmac_f32_e32 v65, v79, v74
	v_fma_f32 v79, -v87, v82, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v78, v80, 1.0
	v_rcp_f32_e32 v72, v86
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v71, -v88, v65, v71
	v_fmac_f32_e32 v82, v79, v89
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v79, s59, v11, v48, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v71, v74, v65
	v_fma_f32 v71, -v87, v82, v73
	v_div_scale_f32 v74, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v79, v80
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v81, -v86, v72, 1.0
	v_div_fmas_f32 v71, v71, v89, v82
	v_rcp_f32_e32 v82, v74
	v_fma_f32 v87, -v78, v73, v79
	v_div_scale_f32 v89, null, v54, v54, v83
	v_fmac_f32_e32 v72, v81, v72
	v_div_scale_f32 v81, s60, v12, v48, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v87, v80
	v_div_fixup_f32 v13, v71, v48, v13
	v_rcp_f32_e32 v87, v89
	v_mul_f32_e32 v88, v81, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v74, v82, 1.0
	v_fma_f32 v78, -v78, v73, v79
	v_div_scale_f32 v79, null, v54, v54, v85
	v_fma_f32 v71, -v86, v88, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v90, v82
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v90, v79
	v_div_fixup_f32 v64, v64, v48, v91
	v_fmac_f32_e32 v88, v71, v72
	v_div_scale_f32 v71, s61, v51, v54, v51
	v_fma_f32 v91, -v89, v87, 1.0
	v_div_fmas_f32 v73, v78, v80, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v86, v88, v81
	v_mul_f32_e32 v80, v71, v82
	v_div_scale_f32 v81, s59, v83, v54, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v79, v90, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_fma_f32 v91, -v74, v80, v71
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v70, v70, v48, v92
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v86, s62, v85, v54, v85
	v_div_scale_f32 v92, null, v54, v54, v84
	v_div_fmas_f32 v72, v78, v72, v88
	v_fmac_f32_e32 v80, v91, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v86, v90
	v_div_fixup_f32 v65, v65, v48, v93
	v_mul_f32_e32 v93, v81, v87
	v_div_fixup_f32 v63, v63, v48, v101
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v11, v73, v48, v11
	v_div_fixup_f32 v12, v72, v48, v12
	v_fma_f32 v48, -v74, v80, v71
	v_fma_f32 v71, -v79, v88, v86
	v_div_scale_f32 v73, null, v54, v54, v53
	v_fma_f32 v78, -v89, v93, v81
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v71, v90
	v_rcp_f32_e32 v71, v73
	v_fma_f32 v72, -v92, v94, 1.0
	v_fmac_f32_e32 v93, v78, v87
	v_div_fmas_f32 v48, v48, v82, v80
	v_fma_f32 v78, -v79, v88, v86
	v_div_scale_f32 v80, null, v54, v54, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v74, -v89, v93, v81
	v_fmac_f32_e32 v94, v72, v94
	v_div_scale_f32 v72, s60, v84, v54, v84
	v_fma_f32 v81, -v73, v71, 1.0
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v82, v80
	v_div_fmas_f32 v74, v74, v87, v93
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v79, v72, v94
	v_div_fmas_f32 v78, v78, v90, v88
	v_fmac_f32_e32 v71, v81, v71
	v_div_scale_f32 v81, s59, v53, v54, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v92, v79, v72
	v_div_fixup_f32 v48, v48, v54, v51
	v_div_fixup_f32 v51, v74, v54, v83
	v_div_fixup_f32 v74, v78, v54, v85
	v_dual_mul_f32 v78, v81, v71 :: v_dual_fmac_f32 v79, v86, v94
	v_fma_f32 v83, -v80, v82, 1.0
	v_div_scale_f32 v85, null, v54, v54, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v73, v78, v81
	v_fma_f32 v72, -v92, v79, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s61, v75, v54, v75
	v_fmac_f32_e32 v78, v86, v71
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v72, v72, v94, v79
	v_mul_f32_e32 v79, v83, v82
	v_fma_f32 v73, -v73, v78, v81
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v86, null, v54, v54, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v80, v79, v83
	v_div_fmas_f32 v71, v73, v71, v78
	v_div_scale_f32 v73, null, v54, v54, v10
	v_div_fixup_f32 v72, v72, v54, v84
	v_fma_f32 v84, -v85, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v79, v81, v82
	v_rcp_f32_e32 v81, v73
	v_div_scale_f32 v78, s59, v76, v54, v76
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v54, v54, v67
	v_div_fixup_f32 v53, v71, v54, v53
	v_fma_f32 v80, -v80, v79, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v73, v81, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v88, v71, v88
	v_div_scale_f32 v71, s60, v77, v54, v77
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, null, v54, v54, v68
	v_div_fmas_f32 v79, v80, v82, v79
	v_fma_f32 v80, -v85, v83, v78
	v_mul_f32_e32 v82, v71, v88
	v_div_scale_f32 v91, s61, v10, v54, v10
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v80, v87
	v_fma_f32 v80, -v86, v82, v71
	v_mul_f32_e32 v94, v91, v81
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s62, v67, v54, v67
	v_div_fixup_f32 v75, v79, v54, v75
	v_fma_f32 v78, -v85, v83, v78
	v_fmac_f32_e32 v82, v80, v88
	v_fma_f32 v79, -v73, v94, v91
	v_mul_f32_e32 v80, v92, v90
	v_fma_f32 v85, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v71, -v86, v82, v71
	v_div_fmas_f32 v78, v78, v87, v83
	v_fmac_f32_e32 v94, v79, v81
	v_fma_f32 v79, -v84, v80, v92
	v_fmac_f32_e32 v93, v85, v93
	v_div_scale_f32 v83, s59, v68, v54, v68
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v73, -v73, v94, v91
	v_fmac_f32_e32 v80, v79, v90
	v_mul_f32_e32 v79, v83, v93
	v_div_fmas_f32 v71, v71, v88, v82
	v_div_scale_f32 v82, null, v54, v54, v69
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v76, v78, v54, v76
	v_div_fmas_f32 v73, v73, v81, v94
	v_fma_f32 v81, -v84, v80, v92
	v_fma_f32 v84, -v89, v79, v83
	v_rcp_f32_e32 v85, v82
	v_div_fixup_f32 v71, v71, v54, v77
	v_div_fixup_f32 v10, v73, v54, v10
	v_div_scale_f32 v77, null, v54, v54, v66
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, null, v54, v54, v9
	v_div_fmas_f32 v80, v81, v90, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v73, -v89, v79, v83
	v_fma_f32 v78, -v82, v85, 1.0
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v67, v80, v54, v67
	v_div_fmas_f32 v73, v73, v93, v79
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v54, v54, v7
	v_div_scale_f32 v80, null, v54, v54, v8
	v_div_scale_f32 v81, vcc_lo, v69, v54, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v78
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v68, v73, v54, v68
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v73, -v77, v79, 1.0
	v_mul_f32_e32 v86, v81, v85
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v73, v79
	v_div_scale_f32 v73, s59, v66, v54, v66
	v_fma_f32 v88, -v78, v83, 1.0
	v_fma_f32 v91, -v80, v84, 1.0
	v_fma_f32 v90, -v82, v86, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v73, v79
	v_fmac_f32_e32 v89, v93, v89
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v88, s60, v7, v54, v7
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s61, v8, v54, v8
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v77, v92, v73
	v_div_scale_f32 v93, s62, v9, v54, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v88, v83 :: v_dual_mul_f32 v95, v91, v84
	v_fmac_f32_e32 v92, v90, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v81, -v82, v86, v81
	v_fma_f32 v82, -v78, v94, v88
	v_fma_f32 v90, -v80, v95, v91
	v_fma_f32 v73, -v77, v92, v73
	v_fma_f32 v77, -v87, v96, v93
	v_div_fmas_f32 v81, v81, v85, v86
	v_fmac_f32_e32 v94, v82, v83
	v_fmac_f32_e32 v95, v90, v84
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v96, v77, v89
	v_div_fmas_f32 v73, v73, v79, v92
	v_fma_f32 v78, -v78, v94, v88
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v79, -v87, v96, v93
	s_mov_b32 s59, 0xc1000000
	v_div_fmas_f32 v78, v78, v83, v94
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v27, v27, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v81, v54, v69
	v_div_fixup_f32 v66, v73, v54, v66
	v_div_fixup_f32 v7, v78, v54, v7
	v_div_fixup_f32 v8, v77, v54, v8
	v_div_fixup_f32 v9, v79, v54, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s59, 0x40e00000
	v_med3_f32 v31, v31, s59, 0x40e00000
	v_med3_f32 v0, v0, s59, 0x40e00000
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v78, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_med3_f32 v57, v57, s59, 0x40e00000
	v_med3_f32 v46, v46, s59, 0x40e00000
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v11, v11, s59, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v76, v19
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v27, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v73, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_cvt_i32_f32_e32 v75, v38
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v85, v46
	v_cvt_i32_f32_e32 v87, v62
	v_cvt_i32_f32_e32 v90, v11
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v38, 15, v31
	v_and_b32_e32 v46, 15, v0
	v_and_b32_e32 v62, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v105
	v_and_b32_e32 v30, 0x2f0, v29
	v_lshlrev_b32_e32 v31, 8, v78
	v_and_b32_e32 v32, 64, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_cvt_i32_f32_e32 v84, v59
	v_and_b32_e32 v59, 15, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v6
	v_and_or_b32 v0, 0xe000, v0, v31
	v_xor_b32_e32 v30, v30, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_med3_f32 v14, v14, s59, 0x40e00000
	v_med3_f32 v10, v10, s59, 0x40e00000
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v66, v66, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s59, 0x40e00000
	v_med3_f32 v51, v51, s59, 0x40e00000
	v_med3_f32 v7, v7, s59, 0x40e00000
	v_med3_f32 v8, v8, s59, 0x40e00000
	v_med3_f32 v9, v9, s59, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v83, v58
	v_cvt_i32_f32_e32 v92, v48
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v57, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v35, v35, s59, 0x40e00000
	v_med3_f32 v54, v54, s59, 0x40e00000
	v_med3_f32 v15, v15, s59, 0x40e00000
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v53, v53
	v_med3_f32 v47, v47, s59, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v98, v10
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_cvt_i32_f32_e32 v80, v42
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v101, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s59, 0x40e00000
	v_med3_f32 v12, v12, s59, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v93, v51
	v_cvt_i32_f32_e32 v102, v7
	v_cvt_i32_f32_e32 v103, v8
	v_cvt_i32_f32_e32 v104, v9
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v8, 15, v45
	v_and_b32_e32 v9, 15, v83
	v_and_b32_e32 v10, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v30, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v79, v54
	v_cvt_i32_f32_e32 v82, v15
	v_cvt_i32_f32_e32 v73, v73
	v_and_b32_e32 v15, 15, v26
	v_and_b32_e32 v26, 15, v39
	v_and_b32_e32 v42, 15, v28
	v_and_b32_e32 v28, 15, v49
	v_and_b32_e32 v29, 15, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v47
	v_and_b32_e32 v47, 15, v18
	v_and_b32_e32 v48, 15, v14
	v_and_b32_e32 v49, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v63
	v_and_b32_e32 v63, 15, v80
	v_and_b32_e32 v36, 15, v60
	v_and_b32_e32 v60, 15, v64
	v_and_b32_e32 v64, 15, v65
	v_and_b32_e32 v65, 15, v101
	v_med3_f32 v22, v22, s59, 0x40e00000
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_cvt_i32_f32_e32 v89, v13
	v_cvt_i32_f32_e32 v91, v12
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v13, 15, v84
	v_and_b32_e32 v14, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v30, v[7:10]
	ds_store_b128 v30, v[26:29] offset:256
	ds_store_b128 v30, v[46:49] offset:2048
	ds_store_b128 v30, v[62:65] offset:2304
	v_xad_u32 v7, v0, 16, 0
	v_lshlrev_b32_e32 v8, 6, v105
	v_lshlrev_b32_e32 v9, 5, v24
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s59, 0x40e00000
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	v_cvt_i32_f32_e32 v77, v34
	v_cvt_i32_f32_e32 v96, v74
	v_and_b32_e32 v34, 15, v37
	v_and_b32_e32 v74, 15, v20
	v_and_b32_e32 v20, 15, v35
	v_and_b32_e32 v35, 15, v79
	v_and_b32_e32 v37, 15, v73
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_med3_f32 v43, v43, s59, 0x40e00000
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v94, v70
	v_cvt_i32_f32_e32 v99, v67
	v_cvt_i32_f32_e32 v100, v68
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[34:37] offset:256
	v_lshlrev_b32_e32 v11, 2, v78
	v_and_or_b32 v8, 0x300, v8, v9
	v_xor_b32_e32 v6, v6, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v81, v16
	v_cvt_i32_f32_e32 v95, v72
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v97, v71
	v_and_b32_e32 v50, 15, v22
	v_and_b32_e32 v54, 15, v41
	v_and_b32_e32 v58, 15, v75
	v_and_b32_e32 v16, 15, v77
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v67, 15, v17
	v_and_b32_e32 v17, 15, v85
	v_and_b32_e32 v40, 15, v61
	v_and_b32_e32 v52, 15, v52
	v_and_b32_e32 v56, 15, v88
	v_and_b32_e32 v18, 15, v94
	v_and_b32_e32 v53, 15, v99
	v_and_b32_e32 v57, 15, v100
	v_and_b32_e32 v61, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v10, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v24, v6, v8, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v21
	v_and_b32_e32 v70, 15, v76
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v71, 15, v81
	v_and_b32_e32 v75, 15, v82
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v72, 15, v90
	v_and_b32_e32 v76, 15, v91
	v_and_b32_e32 v41, 15, v96
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v21, 15, v86
	v_and_b32_e32 v22, 15, v95
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v87
	v_and_b32_e32 v45, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[50:53] offset:2048
	ds_store_b128 v7, v[66:69] offset:2304
	ds_store_b128 v10, v[15:18]
	ds_store_b128 v10, v[38:41] offset:256
	ds_store_b128 v10, v[54:57] offset:2048
	ds_store_b128 v10, v[70:73] offset:2304
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[42:45] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v24, 0
	v_add_nc_u32_e32 v18, 0, v24
	v_xad_u32 v22, 0x8040, v24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v0 offset:128
	ds_load_b128 v[34:37], v0 offset:4096
	ds_load_b128 v[38:41], v0 offset:4224
	v_xad_u32 v0, 0xc060, v24, 0
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[10:13], v18 offset:128
	ds_load_b128 v[14:17], v18 offset:4096
	ds_load_b128 v[18:21], v18 offset:4224
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[46:49], v22 offset:128
	ds_load_b128 v[50:53], v22 offset:4096
	ds_load_b128 v[54:57], v22 offset:4224
	ds_load_b128 v[58:61], v0 offset:4096
	ds_load_b128 v[62:65], v0
	ds_load_b128 v[66:69], v0 offset:128
	ds_load_b128 v[70:73], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v74, s59, s68, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v75, null, s69, 0, s59
	v_add_co_u32 v76, s59, s68, v110
	v_add_co_ci_u32_e64 v77, null, s69, 0, s59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s68, v110
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s75, 7, v109
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[74:75]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v24, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v67, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v68, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[76:77]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v50, 4, v42
	v_lshl_or_b32 v50, v58, 4, v62
	v_lshl_or_b32 v58, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v59, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v70, 4, v66
	v_lshl_or_b32 v66, v15, 4, v7
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[74:75]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v74, v34, 4, v26
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v26, 34, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v71, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v28, 36, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v29, 38, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v70, v35, 4, v27
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[26:27], null, v26, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[76:77]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v65, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v22, 0x80000000, v3, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v65, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v24, v22, s[68:71], 0 offen
	buffer_store_b8 v74, v0, s[68:71], 0 offen
	buffer_store_b8 v42, v4, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v7, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v25.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v23.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v46, v0, s[68:71], 0 offen
	buffer_store_b8 v54, v4, s[68:71], 0 offen
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v7, s[68:71], 0 offen
	buffer_store_b8 v43, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[68:71], 0 offen
	buffer_store_b8 v59, v4, s[68:71], 0 offen
	buffer_store_b8 v63, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v7, s[68:71], 0 offen
	buffer_store_b8 v55, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v67, v0, s[68:71], 0 offen
	buffer_store_b8 v71, v4, s[68:71], 0 offen
	buffer_store_b8 v44, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v7, s[68:71], 0 offen
	buffer_store_b8 v60, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v0, s[68:71], 0 offen
	buffer_store_b8 v48, v4, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v7, s[68:71], 0 offen
	buffer_store_b8 v72, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v45, v0, s[68:71], 0 offen
	buffer_store_b8 v53, v4, s[68:71], 0 offen
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v41, v7, s[68:71], 0 offen
	buffer_store_b8 v49, v8, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v105
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v108
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v105
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 596
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
		.amdhsa_next_free_sgpr 77
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 596
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37504
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 596
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
    .private_segment_fixed_size: 596
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 148
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
