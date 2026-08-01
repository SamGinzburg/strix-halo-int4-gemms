	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_dual_mov_b32 v200, v0 :: v_dual_mov_b32 v211, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v9, 4, v200
	v_and_b32_e32 v38, 0x7f, v200
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s76, 0xff
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
	s_sub_i32 s5, s35, s4
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v200
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s77, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s77, s5
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
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[72:73], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[74:75], s[2:3], 0x0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v39, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[74:75], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v3, 8, v200
	v_lshlrev_b32_e32 v7, 4, v200
.Ltmp4:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v200
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow680
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v203, 0x80, v200
	v_dual_mov_b32 v216, 0 :: v_dual_and_b32 v109, 15, v200
	v_lshrrev_b32_e32 v201, 4, v200
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v172, 0
	v_cmp_eq_u32_e64 s3, 0, v203
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_mov_b32_e32 v171, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v34, 3, v200
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[74:75], v[0:1]
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v0, s66, v109
	v_bfe_i32 v35, v200, 3, 1
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_addc_u32 s7, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[2:3]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v2, v0, s34
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v1, 6, v200
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v36, 0x70, v9
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v34, 0x700, v34
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v35, 0x88, v35
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v250, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:92
	scratch_store_b32 off, v109, off offset:88
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	scratch_store_b32 off, v9, off offset:408 ; 4-byte Folded Spill
	v_or3_b32 v9, v36, v34, v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:96
	scratch_store_b32 off, v203, off offset:404
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v0, 48, v0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s10, s[6:7], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[4:5]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s34
	v_mul_lo_u32 v0, v0, s34
	v_mul_lo_u32 v1, v1, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s7, s77, 8
	v_cndmask_b32_e64 v37, 0x88, 0, s3
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v2, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v36, 5, v200
	scratch_store_b32 off, v9, off offset:112 ; 4-byte Folded Spill
	v_xor_b32_e32 v44, 8, v9
	v_or_b32_e32 v9, s7, v200
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_dual_mov_b32 v175, 0 :: v_dual_and_b32 v0, 0xf0, v200
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s76, 1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:100
	scratch_store_b32 off, v201, off offset:400
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v1, s7, v201
	v_xor_b32_e32 v35, v37, v38
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v37, 2, v0
	v_dual_mov_b32 v235, 0 :: v_dual_and_b32 v36, 32, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s4, s6, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s8, s9, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s34, s10
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s10, s8, s10
	v_add3_u32 v46, 0, v37, v36
	v_mad_u64_u32 v[36:37], null, v1, s9, s[10:11]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v1
	v_or_b32_e32 v26, 32, v1
	v_or_b32_e32 v27, 16, v1
	v_or_b32_e32 v3, 0xe0, v1
	v_or_b32_e32 v4, 0xd0, v1
	v_or_b32_e32 v5, 0xc0, v1
	v_or_b32_e32 v6, 0xb0, v1
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v7, s76, v2
	v_or_b32_e32 v13, 0xa0, v1
	v_or_b32_e32 v14, 0x90, v1
	v_or_b32_e32 v15, 0x80, v1
	v_or_b32_e32 v16, 0x70, v1
	v_or_b32_e32 v17, 0x60, v1
	v_or_b32_e32 v23, 0x50, v1
	v_or_b32_e32 v24, 64, v1
	v_or_b32_e32 v25, 48, v1
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v31, s76, v26
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v32, s76, v27
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v33, s76, v1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v9, off offset:116
	scratch_store_b64 off, v[36:37], off offset:120
	v_mad_u64_u32 v[36:37], null, s9, v27, s[10:11]
	v_mad_u64_u32 v[26:27], null, s9, v26, s[10:11]
	v_mad_u64_u32 v[1:2], null, s9, v2, s[10:11]
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v30, s76, v25
	scratch_store_b64 off, v[36:37], off offset:128 ; 8-byte Folded Spill
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v29, s76, v24
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[26:27], off offset:136
	scratch_store_b32 off, v38, off offset:412
	scratch_store_b64 off, v[1:2], off offset:240
	v_mad_u64_u32 v[25:26], null, s9, v25, s[10:11]
	v_mad_u64_u32 v[1:2], null, v33, s9, s[10:11]
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v28, s76, v23
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v21, s76, v16
	scratch_store_b64 off, v[25:26], off offset:144 ; 8-byte Folded Spill
	v_mad_u64_u32 v[24:25], null, s9, v24, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v32, s9, s[10:11]
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v22, s76, v17
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v20, s76, v15
	scratch_store_b64 off, v[24:25], off offset:152 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s9, v23, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:256 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v31, s9, s[10:11]
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v19, s76, v14
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v18, s76, v13
	scratch_store_b64 off, v[23:24], off offset:160 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s9, v17, s[10:11]
	v_mad_u64_u32 v[16:17], null, s9, v16, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:264 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v30, s9, s[10:11]
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v11, s76, v5
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[23:24], off offset:168
	scratch_store_b64 off, v[16:17], off offset:176
	v_mad_u64_u32 v[15:16], null, s9, v15, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:272 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v29, s9, s[10:11]
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v12, s76, v6
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v10, s76, v4
	scratch_store_b64 off, v[15:16], off offset:184 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s9, v14, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:280 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v28, s9, s[10:11]
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v8, s76, v3
	v_or_b32_e32 v43, 0x300, v200
	scratch_store_b64 off, v[14:15], off offset:192 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s9, v13, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:288 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v22, s9, s[10:11]
	v_or_b32_e32 v34, 0x3f0, v200
	v_dual_mov_b32 v249, 0 :: v_dual_lshlrev_b32 v38, 1, v200
	scratch_store_b64 off, v[13:14], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s9, v6, s[10:11]
	v_mad_u64_u32 v[5:6], null, s9, v5, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:296 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v21, s9, s[10:11]
	v_mov_b32_e32 v158, 0
	scratch_store_b64 off, v[13:14], off offset:208 ; 8-byte Folded Spill
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v45, 28, v38
	scratch_store_b64 off, v[5:6], off offset:216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s9, v4, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v20, s9, s[10:11]
	v_mov_b32_e32 v156, 0
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	scratch_store_b64 off, v[4:5], off offset:224 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s9, v3, s[10:11]
	scratch_store_b64 off, v[1:2], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v19, s9, s[10:11]
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v189, 0, v35
	v_mov_b32_e32 v148, 0
	scratch_store_b64 off, v[3:4], off offset:232 ; 8-byte Folded Spill
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v160, 0, v0
	scratch_store_b64 off, v[1:2], off offset:320 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v18, s9, s[10:11]
	v_mov_b32_e32 v218, 0
	v_mov_b32_e32 v230, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b64 off, v[1:2], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v12, s9, s[10:11]
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b64 off, v[1:2], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v11, s9, s[10:11]
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b64 off, v[1:2], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v10, s9, s[10:11]
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	scratch_store_b64 off, v[1:2], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v8, s9, s[10:11]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	scratch_store_b64 off, v[1:2], off offset:360 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v7, s9, s[10:11]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[1:2], off offset:368
	scratch_store_b32 off, v200, off offset:396
	v_add_nc_u32_e32 v1, 0, v200
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v1, 0, v43
	v_mov_b32_e32 v151, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, 0, v34
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_mov_b32_e32 v131, 0
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v1, 0, v44
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, v46, v45
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v216, 0
	s_mov_b32 s8, 0
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s7, s8
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	scratch_load_b32 v5, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s18, s7, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	v_or_b32_e32 v193, s18, v109
	s_mov_b32 s27, s23
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_clause 0x11                           ; 72-byte Folded Spill
	scratch_store_b32 off, v34, off offset:68
	scratch_store_b32 off, v32, off offset:64
	scratch_store_b32 off, v31, off offset:60
	scratch_store_b32 off, v30, off offset:56
	scratch_store_b32 off, v92, off offset:52
	scratch_store_b32 off, v117, off offset:48
	scratch_store_b32 off, v118, off offset:44
	scratch_store_b32 off, v146, off offset:40
	scratch_store_b32 off, v80, off offset:36
	scratch_store_b32 off, v84, off offset:32
	scratch_store_b32 off, v70, off offset:28
	scratch_store_b32 off, v172, off offset:24
	scratch_store_b32 off, v83, off offset:20
	scratch_store_b32 off, v165, off offset:16
	scratch_store_b32 off, v221, off offset:12
	scratch_store_b32 off, v104, off offset:8
	scratch_store_b32 off, v69, off offset:4
	scratch_store_b32 off, v166, off
	v_mov_b32_e32 v194, v173
	v_dual_mov_b32 v104, v102 :: v_dual_mov_b32 v91, v249
	v_mov_b32_e32 v102, v238
	v_mov_b32_e32 v118, v218
	v_mov_b32_e32 v146, v241
	v_mov_b32_e32 v84, v179
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s19, s23
	v_mov_b32_e32 v83, v184
	v_mov_b32_e32 v173, v159
	v_dual_mov_b32 v159, v136 :: v_dual_mov_b32 v136, v122
	v_mov_b32_e32 v122, v98
	v_dual_mov_b32 v98, v68 :: v_dual_mov_b32 v117, v185
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s18, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[39:40]
	v_cndmask_b32_e64 v2, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s18, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[39:40]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v0, s2
	v_or_b32_e32 v0, 8, v5
	v_or_b32_e32 v0, s18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[39:40]
	v_cndmask_b32_e64 v4, 0x80000000, v0, s2
	v_or_b32_e32 v0, 12, v5
	scratch_load_b64 v[5:6], off, off offset:120 ; 8-byte Folded Reload
	v_or_b32_e32 v0, s18, v0
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[39:40]
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, v5, v193
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[5:6], off, off offset:128
	scratch_load_b64 v[6:7], off, off offset:136
	scratch_load_b64 v[7:8], off, off offset:144
	scratch_load_b64 v[8:9], off, off offset:152
	scratch_load_b64 v[9:10], off, off offset:160
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v5, v5, v193
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v6, v6, v193
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v7, v7, v193
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v8, v8, v193
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, v9, v193
	s_clause 0x4
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v11, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:168 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v12, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:176 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v13, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:184 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v14, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:192 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v15, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:200 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v16, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:208 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v17, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:216 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v18, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:224 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v19, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:232 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v20, v10, s[24:27], 0 offen
	scratch_load_b64 v[9:10], off, off offset:240 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v193
	buffer_load_u8 v21, v10, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v2
	ds_store_b8 v9, v3 offset:256
	ds_store_b8 v9, v4 offset:512
	scratch_load_b32 v2, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v9, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v2, 0, v109
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v3, v2 offset:320
	ds_load_u8 v4, v2 offset:256
	ds_load_u8 v22, v2 offset:336
	ds_load_u8 v23, v2 offset:272
	ds_load_u8 v24, v2 offset:352
	ds_load_u8 v25, v2 offset:288
	ds_load_u8 v0, v2 offset:368
	ds_load_u8 v47, v2 offset:304
	s_waitcnt vmcnt(0)
	ds_load_u8 v227, v9
	ds_load_u8 v228, v2 offset:944
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v2 offset:448
	ds_load_u8 v10, v2 offset:384
	ds_load_u8 v26, v2 offset:464
	ds_load_u8 v27, v2 offset:400
	ds_load_u8 v28, v2 offset:480
	ds_load_u8 v29, v2 offset:416
	ds_load_u8 v48, v2 offset:496
	ds_load_u8 v178, v2 offset:432
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v47, v0, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v10, v4, 0xc0c0004
	ds_load_u8 v30, v2 offset:64
	ds_load_u8 v31, v2
	ds_load_u8 v32, v2 offset:80
	ds_load_u8 v33, v2 offset:96
	ds_load_u8 v10, v2 offset:112
	ds_load_u8 v34, v2 offset:16
	ds_load_u8 v35, v2 offset:32
	ds_load_u8 v180, v2 offset:48
	v_lshl_or_b32 v43, v4, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v2 offset:192
	ds_load_u8 v42, v2 offset:128
	ds_load_u8 v46, v2 offset:208
	ds_load_u8 v181, v2 offset:144
	ds_load_u8 v182, v2 offset:224
	ds_load_u8 v183, v2 offset:160
	ds_load_u8 v208, v2 offset:240
	ds_load_u8 v209, v2 offset:176
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v180, v10, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v42, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v31, 16, v30
	ds_load_u8 v3, v2 offset:832
	ds_load_u8 v4, v2 offset:768
	ds_load_u8 v30, v2 offset:848
	ds_load_u8 v31, v2 offset:784
	ds_load_u8 v210, v2 offset:864
	ds_load_u8 v214, v2 offset:800
	ds_load_u8 v219, v2 offset:880
	ds_load_u8 v220, v2 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v2 offset:960
	ds_load_u8 v44, v2 offset:896
	ds_load_u8 v207, v2 offset:976
	ds_load_u8 v212, v2 offset:912
	ds_load_u8 v215, v2 offset:992
	ds_load_u8 v226, v2 offset:928
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v44, v4, 0xc0c0004
	ds_load_u8 v44, v2 offset:576
	ds_load_u8 v45, v2 offset:512
	ds_load_u8 v213, v2 offset:592
	ds_load_u8 v221, v2 offset:528
	ds_load_u8 v229, v2 offset:608
	ds_load_u8 v231, v2 offset:544
	ds_load_u8 v232, v2 offset:624
	ds_load_u8 v233, v2 offset:560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v2 offset:704
	ds_load_u8 v177, v2 offset:640
	ds_load_u8 v222, v2 offset:720
	ds_load_u8 v223, v2 offset:656
	ds_load_u8 v234, v2 offset:736
	ds_load_u8 v240, v2 offset:672
	ds_load_u8 v242, v2 offset:752
	ds_load_u8 v244, v2 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v189, v1
	ds_store_b8 v189, v5 offset:256
	ds_store_b8 v189, v6 offset:512
	ds_store_b8 v189, v7 offset:768
	ds_store_b8 v189, v8 offset:1024
	ds_store_b8 v189, v11 offset:1280
	ds_store_b8 v189, v12 offset:1536
	ds_store_b8 v189, v13 offset:1792
	ds_store_b8 v189, v14 offset:2048
	ds_store_b8 v189, v15 offset:2304
	ds_store_b8 v189, v16 offset:2560
	ds_store_b8 v189, v17 offset:2816
	ds_store_b8 v189, v18 offset:3072
	ds_store_b8 v189, v19 offset:3328
	ds_store_b8 v189, v20 offset:3584
	ds_store_b8 v189, v21 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:112
	scratch_load_b32 v245, off, off offset:388
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v11, v23, v22, 0xc0c0004
	v_perm_b32 v20, v27, v26, 0xc0c0004
	v_perm_b32 v22, v34, v32, 0xc0c0004
	v_perm_b32 v23, v181, v46, 0xc0c0004
	v_perm_b32 v26, v221, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v21, v20, 16, v11
	v_perm_b32 v11, v31, v30, 0xc0c0004
	v_lshl_or_b32 v20, v23, 16, v22
	v_perm_b32 v22, v212, v207, 0xc0c0004
	v_perm_b32 v27, v223, v222, 0xc0c0004
	v_perm_b32 v2, v177, v45, 0xc0c0004
	v_lshl_or_b32 v45, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v22, 16, v11
	v_lshl_or_b32 v22, v27, 16, v26
	v_perm_b32 v11, v25, v24, 0xc0c0004
	v_perm_b32 v24, v29, v28, 0xc0c0004
	v_perm_b32 v25, v35, v33, 0xc0c0004
	v_perm_b32 v26, v183, v182, 0xc0c0004
	v_lshl_or_b32 v44, v2, 16, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v213, v24, 16, v11
	v_perm_b32 v11, v214, v210, 0xc0c0004
	v_lshl_or_b32 v212, v26, 16, v25
	v_perm_b32 v24, v226, v215, 0xc0c0004
	v_perm_b32 v25, v231, v229, 0xc0c0004
	v_perm_b32 v26, v240, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v215, v24, 16, v11
	v_perm_b32 v24, v178, v48, 0xc0c0004
	v_lshl_or_b32 v214, v26, 16, v25
	v_perm_b32 v25, v209, v208, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v24, 16, v0
	v_perm_b32 v24, v233, v232, 0xc0c0004
	v_lshl_or_b32 v32, v25, 16, v10
	v_perm_b32 v25, v244, v242, 0xc0c0004
	v_perm_b32 v0, v220, v219, 0xc0c0004
	v_perm_b32 v10, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v34, v25, 16, v24
	scratch_load_b64 v[24:25], off, off offset:320 ; 8-byte Folded Reload
	v_lshl_or_b32 v35, v10, 16, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v109, 0, v1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v8, s15
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[16:19], v245 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_mov_b32_e32 v2, s9
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[12:15], v109 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_mov_b32_e32 v7, s14
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[195:202], v[12:13], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[16:17], v[44:45], v[195:202] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v238, v199
	v_cvt_f32_i32_e32 v78, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v201
	v_cvt_f32_i32_e32 v161, v202
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[199:206], v[14:15], v[42:43], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v197
	v_cvt_f32_i32_e32 v72, v198
	v_cvt_f32_i32_e32 v36, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[199:206], v[18:19], v[44:45], v[199:206] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v196
	v_dual_mov_b32 v196, v230 :: v_dual_mov_b32 v195, v239
	v_cvt_f32_i32_e32 v81, v199
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v204
	v_cvt_f32_i32_e32 v198, v205
	v_cvt_f32_i32_e32 v9, v206
	v_cvt_f32_i32_e32 v218, v200
	v_cvt_f32_i32_e32 v172, v201
	v_cvt_f32_i32_e32 v163, v202
	v_cvt_f32_i32_e32 v197, v203
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[12:13], v[20:21], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v9, off offset:84 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[200:207], v[16:17], v[22:23], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v37, v200
	v_cvt_f32_i32_e32 v38, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v40, v202
	v_cvt_f32_i32_e32 v41, v203
	v_cvt_f32_i32_e32 v46, v204
	v_cvt_f32_i32_e32 v187, v205
	v_cvt_f32_i32_e32 v188, v206
	v_cvt_f32_i32_e32 v184, v207
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[14:15], v[20:21], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[18:19], v[22:23], v[200:207] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v223, v205
	v_cvt_f32_i32_e32 v222, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v221, v207
	v_cvt_f32_i32_e32 v243, v201
	v_cvt_f32_i32_e32 v241, v202
	v_cvt_f32_i32_e32 v239, v203
	v_cvt_f32_i32_e32 v225, v204
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[12:13], v[212:213], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[16:17], v[214:215], v[200:207] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v186, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v179, v201
	v_cvt_f32_i32_e32 v185, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v190, v203
	v_cvt_f32_i32_e32 v191, v204
	v_cvt_f32_i32_e32 v49, v205
	v_cvt_f32_i32_e32 v50, v206
	v_cvt_f32_i32_e32 v51, v207
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[14:15], v[212:213], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[18:19], v[214:215], v[200:207] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v52, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v205
	v_cvt_f32_i32_e32 v254, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v251, v207
	v_cvt_f32_i32_e32 v53, v201
	v_cvt_f32_i32_e32 v58, v202
	v_cvt_f32_i32_e32 v59, v203
	v_cvt_f32_i32_e32 v11, v204
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[12:13], v[32:33], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[12:13], off, off offset:248 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[200:207], v[16:17], v[34:35], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v60, v200
	v_cvt_f32_i32_e32 v192, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v202
	v_cvt_f32_i32_e32 v249, v203
	v_cvt_f32_i32_e32 v68, v204
	v_cvt_f32_i32_e32 v54, v205
	v_cvt_f32_i32_e32 v55, v206
	v_cvt_f32_i32_e32 v56, v207
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[14:15], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[18:19], v[34:35], v[200:207] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v205
	v_cvt_f32_i32_e32 v62, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v207
	v_cvt_f32_i32_e32 v64, v201
	v_cvt_f32_i32_e32 v165, v202
	v_cvt_f32_i32_e32 v166, v203
	v_cvt_f32_i32_e32 v92, v204
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v12, v193
	scratch_load_b64 v[12:13], off, off offset:256 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v12, v193
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[12:13], off, off offset:264
	scratch_load_b64 v[13:14], off, off offset:272
	scratch_load_b64 v[14:15], off, off offset:280
	scratch_load_b64 v[15:16], off, off offset:288
	scratch_load_b64 v[16:17], off, off offset:296
	scratch_load_b64 v[17:18], off, off offset:304
	scratch_load_b64 v[18:19], off, off offset:312
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v24, v193
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[24:25], off, off offset:328
	scratch_load_b64 v[25:26], off, off offset:336
	scratch_load_b64 v[26:27], off, off offset:344
	scratch_load_b64 v[27:28], off, off offset:352
	scratch_load_b64 v[28:29], off, off offset:360
	scratch_load_b64 v[29:30], off, off offset:368
	v_add_nc_u32_e32 v12, v12, v193
	v_add_nc_u32_e32 v13, v13, v193
	v_add_nc_u32_e32 v14, v14, v193
	v_add_nc_u32_e32 v15, v15, v193
	v_add_nc_u32_e32 v16, v16, v193
	v_add_nc_u32_e32 v17, v17, v193
	v_add_nc_u32_e32 v18, v18, v193
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v24, v24, v193
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v25, v25, v193
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v26, v26, v193
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v27, v27, v193
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v28, v28, v193
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, v29, v193
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s7, s6
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(15)
	ds_store_b8 v189, v0
	s_waitcnt vmcnt(14)
	ds_store_b8 v189, v10 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v189, v12 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v189, v13 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v189, v14 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v189, v15 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v189, v16 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v189, v17 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v189, v18 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v189, v19 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v189, v24 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v189, v25 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v189, v26 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v189, v27 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v189, v28 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v189, v29 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[24:27], v109 offset1:4
	ds_load_2addr_stride64_b64 v[28:31], v245 offset1:4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s5
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[26:27], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[24:25], v[42:43], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[30:31], v[44:45], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[28:29], v[44:45], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v17
	v_cvt_f32_i32_e32 v219, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v109, v200
	v_cvt_f32_i32_e32 v229, v204
	v_cvt_f32_i32_e32 v228, v205
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v18
	v_cvt_f32_i32_e32 v205, v13
	v_cvt_f32_i32_e32 v204, v14
	v_cvt_f32_i32_e32 v200, v15
	v_cvt_f32_i32_e32 v45, v16
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v19
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[12:19], v[24:25], v[20:21], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v226, v207
	v_cvt_f32_i32_e32 v248, v201
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[22:23], v[12:19] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v247, v202
	v_cvt_f32_i32_e32 v246, v203
	v_cvt_f32_i32_e32 v227, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v12
	v_cvt_f32_i32_e32 v180, v13
	v_cvt_f32_i32_e32 v47, v14
	v_cvt_f32_i32_e32 v48, v15
	v_cvt_f32_i32_e32 v234, v16
	v_cvt_f32_i32_e32 v233, v17
	v_cvt_f32_i32_e32 v232, v18
	v_cvt_f32_i32_e32 v231, v19
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[12:19], v[26:27], v[20:21], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[30:31], v[22:23], v[12:19] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v207, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v193, v17
	v_cvt_f32_i32_e32 v44, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v19
	v_cvt_f32_i32_e32 v210, v13
	v_cvt_f32_i32_e32 v209, v14
	v_cvt_f32_i32_e32 v208, v15
	v_cvt_f32_i32_e32 v42, v16
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[12:19], v[24:25], v[212:213], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[214:215], v[12:19] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v10, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v182, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v245, v16
	v_cvt_f32_i32_e32 v244, v17
	v_cvt_f32_i32_e32 v242, v18
	v_cvt_f32_i32_e32 v240, v19
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[12:19], v[26:27], v[212:213], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[30:31], v[214:215], v[12:19] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v201, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v202, v18
	v_cvt_f32_i32_e32 v203, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v206, v16
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v212, v12
	v_cvt_f32_i32_e32 v215, v13
	v_cvt_f32_i32_e32 v214, v14
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[16:23], v[28:29], v[34:35], v[16:23] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v213, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v14, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v178, v20
	v_cvt_f32_i32_e32 v253, v21
	v_cvt_f32_i32_e32 v29, v22
	v_cvt_f32_i32_e32 v28, v23
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[16:23], v[26:27], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:64
	scratch_load_b32 v33, off, off offset:116
	v_wmma_i32_16x16x16_iu4 v[16:23], v[30:31], v[34:35], v[16:23] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v34, off, off offset:68
	scratch_load_b32 v31, off, off offset:60
	scratch_load_b32 v30, off, off offset:56
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v16, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v17
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v7, v18
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v18, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v19, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v4, v20
	v_cvt_f32_i32_e32 v1, v21
	v_cvt_f32_i32_e32 v2, v22
	v_cvt_f32_i32_e32 v3, v23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v20, v33, s26, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v16, s7, v16, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v17, s7, v17, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v18, s7, v18, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s7, v19, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s7, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s7, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v24, v17, s[16:19], 0 offen
	buffer_load_u16 v25, v18, s[16:19], 0 offen
	buffer_load_u16 v26, v19, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v35, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v17, 16, v20
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v220, 16, v16
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v160
	ds_load_b128 v[20:23], v160 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v27, v220, v36 :: v_dual_lshlrev_b32 v26, 16, v26
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v11, v25, v11 :: v_dual_fmac_f32 v30, v27, v16
	v_mul_f32_e32 v27, v220, v177
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v31, v27, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v220, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v32, v27, v18 :: v_dual_mul_f32 v27, v220, v72
	v_fmac_f32_e32 v151, v27, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v24, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v24, v38
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v27, v17 :: v_dual_mul_f32 v27, v24, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v27, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v24, v41
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v138, v27, v19 :: v_dual_mul_f32 v27, v25, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v255, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v25, v179
	v_dual_mov_b32 v179, v84 :: v_dual_fmac_f32 v110, v27, v17
	v_mul_f32_e32 v27, v25, v185
	v_dual_mov_b32 v185, v117 :: v_dual_mul_f32 v0, v24, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v34, v27, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v25, v190
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v27, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v26, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v252, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v26, v192
	v_dual_mul_f32 v27, v81, v220 :: v_dual_fmac_f32 v86, v16, v17
	v_mul_f32_e32 v16, v26, v9
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v16, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v26, v249 :: v_dual_mov_b32 v249, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v16, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v220, v238
	v_mov_b32_e32 v238, v102
	v_mov_b32_e32 v102, v104
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v140, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v220, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v220, v80
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v220, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v24, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v24, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v24, v188
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v26
	v_dual_mul_f32 v4, v26, v4 :: v_dual_mul_f32 v1, v1, v26
	v_mul_f32_e32 v3, v3, v26
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v24, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v25, v191
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v238, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v25, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v25, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v25, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v16, v23 :: v_dual_mul_f32 v16, v26, v68
	v_dual_mov_b32 v68, v98 :: v_dual_fmac_f32 v235, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v26, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v26, v55
	v_mov_b32_e32 v98, v122
	v_mov_b32_e32 v122, v136
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v79, v16, v22 :: v_dual_mul_f32 v16, v26, v56
	v_dual_mov_b32 v136, v159 :: v_dual_mov_b32 v159, v173
	v_mov_b32_e32 v173, v194
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v237, v16, v23
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[16:19], v160 offset:512
	ds_load_b128 v[20:23], v160 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v171, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v220, v218
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v73, v11, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v69, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v27, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v220, v172
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v11, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v254, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v27, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v27, v220, v163 :: v_dual_fmac_f32 v156, v11, v22
	v_mul_f32_e32 v11, v251, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v132, v27, v19 :: v_dual_mul_f32 v27, v230, v24
	v_dual_mov_b32 v230, v196 :: v_dual_fmac_f32 v155, v11, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v26, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v167, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v24, v243
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v211, v11, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v61, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v27, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v24, v241
	v_dual_mov_b32 v241, v146 :: v_dual_fmac_f32 v152, v11, v21
	v_mul_f32_e32 v11, v62, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v98, v27, v18 :: v_dual_mul_f32 v27, v24, v239
	v_mov_b32_e32 v239, v195
	v_fmac_f32_e32 v149, v11, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v63, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v27, v19 :: v_dual_mul_f32 v27, v52, v25
	v_dual_fmac_f32 v148, v11, v23 :: v_dual_add_nc_u32 v11, s76, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v158, v27, v16 :: v_dual_mul_f32 v27, v25, v53
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v11, v11, s26, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v27, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v25, v58
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v11, v11, s[28:31], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v94, v27, v18 :: v_dual_mul_f32 v27, v25, v59
	v_dual_fmac_f32 v224, v27, v19 :: v_dual_mul_f32 v27, v57, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v153, v27, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v26, v64
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v16, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v26, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v218, v118 :: v_dual_fmac_f32 v217, v16, v18
	v_mul_f32_e32 v16, v26, v166
	v_dual_mov_b32 v184, v83 :: v_dual_fmac_f32 v179, v16, v19
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v220, v197 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v199, v220
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v169, v16, v21 :: v_dual_mul_f32 v16, v198, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, v16, v22 :: v_dual_mul_f32 v16, v9, v220
	v_fmac_f32_e32 v168, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v24, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v241, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v223, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v222, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v221, v24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:36
	scratch_load_b32 v221, off, off offset:12
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v35, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v165, off, off offset:16
	scratch_load_b32 v146, off, off offset:40
	scratch_load_b32 v70, off, off offset:28
	scratch_load_b32 v83, off, off offset:20
	scratch_load_b32 v172, off, off offset:24
	scratch_load_b32 v92, off, off offset:52
	scratch_load_b32 v118, off, off offset:44
	scratch_load_b32 v84, off, off offset:32
	scratch_load_b32 v117, off, off offset:48
	scratch_load_b32 v104, off, off offset:8
	scratch_load_b32 v166, off, off
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v16, v23
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[16:19], v160
	ds_load_b128 v[20:23], v160 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v220, v109
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v109, off, off offset:88
	scratch_load_b32 v69, off, off offset:4
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v122, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v180
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v11, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v220, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v0, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v10
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v221, v0, v16 :: v_dual_mul_f32 v0, v25, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v185, v0, v17 :: v_dual_mul_f32 v0, v25, v182
	v_fmac_f32_e32 v90, v0, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v15
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v0, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v13
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v144, v11, v17 :: v_dual_mul_f32 v11, v220, v247
	v_dual_fmac_f32 v239, v0, v18 :: v_dual_mul_f32 v0, v26, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v143, v11, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v220, v246 :: v_dual_mul_f32 v18, v202, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v85, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v229
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v11, v19
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[10:13], v160 offset:512
	ds_load_b128 v[14:17], v160 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v203, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v137, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v0, v220, v226 :: v_dual_fmac_f32 v67, v18, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v24, v234 :: v_dual_fmac_f32 v173, v19, v17
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v166, v4, v14
	v_fmac_f32_e32 v154, v1, v15
	v_fmac_f32_e32 v92, v2, v16
	v_fmac_f32_e32 v115, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v3, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v101, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v0, v22 :: v_dual_mul_f32 v0, v25, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v184, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v178
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v218, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v20, v25, v206 :: v_dual_fmac_f32 v249, v0, v21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v26, v29 :: v_dual_fmac_f32 v69, v20, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v230, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v80, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v219, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v250, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v205
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v220, v200
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v207, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v65, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v210
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v208
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v212, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v0, v10 :: v_dual_mul_f32 v0, v25, v215
	v_fmac_f32_e32 v76, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v75, v0, v12 :: v_dual_mul_f32 v0, v25, v213
	v_fmac_f32_e32 v74, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v5, v26
	scratch_load_b32 v5, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v8
	v_mul_f32_e32 v8, v193, v24
	v_mul_f32_e32 v10, v44, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v26, v7 :: v_dual_mul_f32 v7, v220, v45
	v_mul_f32_e32 v11, v43, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v175, v8, v15
	v_fmac_f32_e32 v71, v10, v16
	v_fmac_f32_e32 v172, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v26, v6
	scratch_load_b32 v6, off, off offset:80 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v24, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v7, v14
	v_fmac_f32_e32 v174, v11, v17
	v_fmac_f32_e32 v104, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v201, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v12, v14 :: v_dual_fmac_f32 v66, v13, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v5, v5, v220
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v5, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, v6, v220 :: v_dual_fmac_f32 v147, v0, v15
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v6, v17
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v200, off, off offset:396
	scratch_load_b32 v7, off, off offset:408
	scratch_load_b32 v6, off, off offset:412
	scratch_load_b32 v201, off, off offset:400
	scratch_load_b32 v203, off, off offset:404
	v_dual_mov_b32 v5, v39 :: v_dual_mov_b32 v160, v30
	v_mov_b32_e32 v161, v31
	v_dual_mov_b32 v163, v32 :: v_dual_mov_b32 v78, v34
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v3, 8, v200
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v8, 7, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v147
	v_dual_mul_f32 v15, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v176
	v_dual_mul_f32 v41, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v8
	v_or_b32_e32 v2, 60, v8
	v_or_b32_e32 v4, 58, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v9, s0, s66, v2
	v_add_co_u32 v11, s1, s66, v4
	v_add_co_ci_u32_e64 v10, null, s67, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v8
	v_or_b32_e32 v2, 54, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 50, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s7
	v_add_co_u32 v9, s7, s66, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 52, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[11:12]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s7
	v_add_co_u32 v0, s11, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v8
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s11, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s15, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s15
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 44, v8
	v_or_b32_e32 v4, 46, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[9:10]
	v_cmp_le_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s19, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s19
	v_add_co_ci_u32_e64 v12, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s15, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 42, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s15
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 38, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[11:12]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v11, s19, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s23, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v10, null, s67, 0, s23
	v_add_co_u32 v1, s23, s66, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v250
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[9:10]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v143
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[11:12]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[11:12]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v17, 0, 0x42800000, s27
	v_cndmask_b32_e64 v19, 0, 0x42800000, s28
	v_mul_f32_e32 v28, 0xbfb8aa3b, v134
	v_mul_f32_e32 v40, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v250 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v99
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v176
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v147
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s27
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s28
	v_dual_mul_f32 v39, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v174
	v_mul_f32_e32 v196, 0xbfb8aa3b, v112
	v_mul_f32_e32 v192, 0xbfb8aa3b, v89
	v_ldexp_f32 v0, v14, v0
	v_mul_f32_e32 v14, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v20
	v_mul_f32_e32 v202, 0xbfb8aa3b, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v13, v15, v13
	v_ldexp_f32 v15, v17, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_ldexp_f32 v16, v19, v18
	v_mul_f32_e32 v17, 0xbfb8aa3b, v175
	v_cndmask_b32_e64 v23, 0, 0x42800000, s28
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v174 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v24
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v21, 0, 0x42800000, s27
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v175
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s27
	v_mul_f32_e32 v186, 0xbfb8aa3b, v75
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v27, 0, 0x42800000, s28
	v_exp_f32_e32 v19, v19
	v_dual_mul_f32 v81, 0xbfb8aa3b, v69 :: v_dual_add_f32 v0, 1.0, v0
	v_ldexp_f32 v14, v18, v14
	v_mul_f32_e32 v18, 0xbfb8aa3b, v117
	v_exp_f32_e32 v21, v21
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v80
	v_mul_f32_e32 v182, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_ldexp_f32 v17, v19, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v27, v27
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s28
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v0, v0, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v21, v20
	v_ldexp_f32 v20, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v45, 0xbfb8aa3b, v83
	v_mul_f32_e32 v21, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v23
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_mul_f32_e32 v189, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v25, 0, 0x42800000, s27
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s27
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v67 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v144
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v18, v22, v18
	v_exp_f32_e32 v23, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v31, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v30, 0xbfb8aa3b, v118
	v_ldexp_f32 v22, v25, v24
	v_mul_f32_e32 v25, 0xbfb8aa3b, v154
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v21, v23, v21
	v_ldexp_f32 v23, v27, v26
	v_mul_f32_e32 v24, 0xbfb8aa3b, v170
	v_mul_f32_e32 v27, 0xbfb8aa3b, v146
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v25
	v_dual_mul_f32 v26, 0xbfb8aa3b, v92 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v34, 0, 0x42800000, s27
	v_mul_f32_e32 v191, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s27
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v27
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v27, 0, 0x42800000, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s28, v99, v15, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v34
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, vcc_lo, v250, v0, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v181, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v14, v14, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v49, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v170
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_fmac_f32 v53, v49, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v146
	v_dual_mul_f32 v38, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v25, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v54, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v27
	v_ldexp_f32 v47, v51, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v13, v13, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v50, v56, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v172
	v_dual_mul_f32 v199, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v25, v24
	v_ldexp_f32 v48, v52, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v15, v15, v99
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v25, 0xbfb8aa3b, v166 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v51, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v33, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v120
	v_dual_mul_f32 v35, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v198, 0xbfb8aa3b, v115
	v_dual_mul_f32 v197, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v184
	v_dual_mul_f32 v195, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v221
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v52, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v193, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v180, 0xbfb8aa3b, v239
	v_dual_mul_f32 v43, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, null, v16, v16, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v187, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v62, v60, v55 :: v_dual_fmac_f32 v49, v57, v49
	v_div_scale_f32 v57, s27, v147, v13, v147
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v56, v58, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_mul_f32 v58, v57, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v183, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v50, v56, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v51, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v177, 0xbfb8aa3b, v230 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v165
	v_mul_f32_e32 v26, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v53, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v58, v54, v49
	v_fma_f32 v54, -v52, v62, v60
	v_fma_f32 v56, -v59, v61, 1.0
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v0, v50, v0, v250
	v_fma_f32 v50, -v51, v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v62, v54, v55 :: v_dual_fmac_f32 v61, v56, v61
	v_div_scale_f32 v51, s29, v176, v16, v176
	v_div_fmas_f32 v49, v50, v49, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v52, v62, v60
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_mul_f32 v52, v51, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v19, v19, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v55, v62
	v_rcp_f32_e32 v53, v63
	v_fma_f32 v57, -v59, v52, v51
	s_mov_b32 vcc_lo, s29
	v_div_scale_f32 v56, s27, v65, v14, v65
	v_div_fixup_f32 v15, v50, v15, v99
	v_rcp_f32_e32 v50, v60
	v_fmac_f32_e32 v52, v57, v61
	v_div_fixup_f32 v13, v49, v13, v147
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 36, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v53, 1.0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v59, v52, v51
	v_div_scale_f32 v59, null, v20, v20, v174
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v60, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v51, v51, v61, v52
	v_div_scale_f32 v61, s29, v71, v19, v71
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v50, v62, v50
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, null, v17, v17, v175
	v_div_scale_f32 v64, s27, v174, v20, v174
	v_div_fixup_f32 v16, v51, v16, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_rcp_f32_e32 v55, v54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[1:2]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	s_add_i32 s65, s76, s65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v54, v55, 1.0
	v_dual_mul_f32 v58, v56, v53 :: v_dual_fmac_f32 v55, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v63, v58, v56
	v_rcp_f32_e32 v57, v59
	v_fmac_f32_e32 v58, v49, v53
	v_div_scale_f32 v49, s28, v175, v17, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v63, v58, v56
	v_mul_f32_e32 v56, v49, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v59, v57, 1.0
	v_div_scale_f32 v63, null, v18, v18, v117
	v_div_fmas_f32 v52, v52, v53, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v54, v56, v49
	v_fmac_f32_e32 v57, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v62, v63
	v_mul_f32_e32 v58, v61, v50
	v_div_fixup_f32 v14, v52, v14, v65
	v_fmac_f32_e32 v56, v53, v55
	v_div_scale_f32 v53, null, v21, v21, v66
	v_fma_f32 v51, -v60, v58, v61
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v54, v56, v49
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v63, v62, 1.0
	v_fmac_f32_e32 v58, v51, v50
	v_div_fmas_f32 v49, v49, v55, v56
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v62, v65, v62
	v_div_scale_f32 v65, s30, v117, v18, v117
	v_mul_f32_e32 v52, v64, v57
	v_fma_f32 v56, -v53, v54, 1.0
	v_fma_f32 v55, -v60, v58, v61
	v_div_fixup_f32 v17, v49, v17, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v59, v52, v64
	v_fmac_f32_e32 v54, v56, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v50, v55, v50, v58
	v_div_scale_f32 v56, null, v22, v22, v67
	v_dual_fmac_f32 v52, v51, v57 :: v_dual_mul_f32 v51, v65, v62
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v50, v19, v71
	v_fma_f32 v55, -v59, v52, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v63, v51, v65
	v_div_scale_f32 v59, s28, v66, v21, v66
	v_div_fmas_f32 v52, v55, v57, v52
	v_rcp_f32_e32 v55, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v58, v62
	v_mul_f32_e32 v57, v59, v54
	s_mov_b32 vcc_lo, s30
	v_div_fixup_f32 v50, v52, v20, v174
	v_div_scale_f32 v52, null, v23, v23, v173
	v_fma_f32 v19, -v63, v51, v65
	v_fma_f32 v20, -v53, v57, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v56, v55, 1.0
	v_fmac_f32_e32 v57, v20, v54
	v_div_scale_f32 v20, s27, v67, v22, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v55, v58, v55
	v_div_fmas_f32 v19, v19, v62, v51
	v_rcp_f32_e32 v51, v52
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v58, null, v24, v24, v170
	v_div_fixup_f32 v60, v19, v18, v117
	v_fma_f32 v18, -v53, v57, v59
	v_mul_f32_e32 v19, v20, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v53, -v52, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v54, v57
	v_fma_f32 v54, -v56, v19, v20
	v_div_scale_f32 v57, s28, v173, v23, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, null, v46, v46, v154
	v_div_fixup_f32 v62, v18, v21, v66
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v21, v57, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v53
	v_fma_f32 v61, -v58, v59, 1.0
	v_div_scale_f32 v66, null, v48, v48, v146
	v_fma_f32 v64, -v53, v18, 1.0
	v_fmac_f32_e32 v19, v54, v55
	v_div_scale_f32 v54, s29, v170, v24, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v64, v18
	v_fma_f32 v20, -v56, v19, v20
	v_fma_f32 v56, -v52, v21, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v20, v55, v19
	s_mov_b32 vcc_lo, s28
	v_rcp_f32_e32 v55, v66
	v_div_fixup_f32 v67, v19, v22, v67
	v_div_scale_f32 v22, s30, v92, v47, v92
	v_fmac_f32_e32 v21, v56, v51
	v_div_scale_f32 v56, s27, v154, v46, v154
	v_fmac_f32_e32 v59, v61, v59
	v_div_scale_f32 v61, null, v47, v47, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v19, -v52, v21, v57
	v_fma_f32 v52, -v66, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v54, v59
	v_rcp_f32_e32 v65, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v51, v21
	s_mov_b32 vcc_lo, s29
	v_fma_f32 v20, -v58, v63, v54
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v61, v65, 1.0
	v_fmac_f32_e32 v65, v64, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v20, v59
	v_mul_f32_e32 v20, v56, v18
	v_fma_f32 v21, -v58, v63, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v53, v20, v56
	v_mul_f32_e32 v54, v22, v65
	v_div_fixup_f32 v58, v19, v23, v173
	v_fmac_f32_e32 v20, v51, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v61, v54, v22
	v_fma_f32 v19, -v53, v20, v56
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v54, v51, v65
	v_div_fmas_f32 v21, v21, v59, v63
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v19, v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v52, v55
	v_div_scale_f32 v52, s28, v146, v48, v146
	v_fma_f32 v18, -v61, v54, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v22, 0, 0x42800000, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v52, v55
	v_div_fixup_f32 v59, v21, v24, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s29
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v66, v57, v52
	s_mov_b32 vcc_lo, s30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v171, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v65, v54
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v57, v21, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v12, v46, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v20, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v169, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v66, v57, v52
	v_div_fixup_f32 v47, v18, v47, v92
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v162, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v19, v164, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v21, v55, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_exp_f32_e32 v10, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v77, v15 :: v_dual_mul_f32 v20, v167, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v11, v48, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v0, v0, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v142
	v_ldexp_f32 v9, v10, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v155, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v10, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, vcc_lo, v145, v0, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v22, v168, v16 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v143
	v_mul_f32_e32 v16, v158, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v40
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v31
	v_ldexp_f32 v9, v10, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v48, v52, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v153, v59 :: v_dual_add_f32 v55, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v52, v10, v52 :: v_dual_mul_f32 v17, v159, v50
	v_div_scale_f32 v50, null, v49, v49, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, v55, v55, v142
	v_mul_f32_e32 v58, v56, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v53, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v157, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v48, v58, v56
	v_div_scale_f32 v60, s27, v144, v49, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v149, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s28, v142, v55, v142
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v50, v54, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v156, v67 :: v_dual_fmac_f32 v54, v9, v54
	v_dual_mul_f32 v9, v152, v46 :: v_dual_add_f32 v46, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v59, v52
	v_fma_f32 v51, -v57, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v60, v54
	v_div_scale_f32 v59, null, v46, v46, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v48, v58, v56
	v_fma_f32 v56, -v50, v47, v60
	v_fmac_f32_e32 v53, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v59
	v_div_fmas_f32 v40, v48, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v56, v54
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v40, v0, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v50, v47, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v59, v51, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v40, v54, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v58, v51
	v_div_scale_f32 v58, s29, v143, v46, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v58, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v148, v11 :: v_dual_mul_f32 v56, v61, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v52, v48
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v59, v40, v58
	v_div_fixup_f32 v31, v31, v49, v144
	v_fma_f32 v50, -v57, v56, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v196
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v29, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v50, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v161, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v57, v56, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v57, v53, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v59, v40, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v51, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v134 :: v_dual_add_f32 v40, 1.0, v29
	v_ldexp_f32 v29, v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v46, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v40, v40, v136
	v_rcp_f32_e32 v58, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v57, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v53, v55, v142
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v48, 1.0, v48 :: v_dual_add_f32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v52, v52, v135
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v151, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v48, v48, v137
	v_rcp_f32_e32 v46, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v51, v58, 1.0
	v_div_scale_f32 v55, null, v47, v47, v134
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v58, v53, v58
	v_fma_f32 v53, -v59, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v54, v56, 1.0
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s28, v135, v52, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v50, v56
	v_div_scale_f32 v50, vcc_lo, v137, v48, v137
	v_mul_f32_e32 v60, v50, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v54, v60, v50
	v_fmac_f32_e32 v60, v49, v56
	v_div_scale_f32 v49, s27, v136, v40, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v54, v60, v50
	v_mul_f32_e32 v54, v49, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v55
	v_fma_f32 v57, -v51, v54, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v160, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v50, v48, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v53, v46
	v_fmac_f32_e32 v54, v57, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v59, v60, v53
	v_fma_f32 v49, -v51, v54, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v50, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v48, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v51, s29, v134, v47, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v58, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v61
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v51, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v59, v60, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v55, v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v59, null, v50, v50, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v54, v38, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v49, v40, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v59
	v_div_fmas_f32 v46, v53, v46, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v70 :: v_dual_add_f32 v49, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v55, v54, v51
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v46, v52, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v49, v49, v126
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v59, v48, 1.0
	v_div_fmas_f32 v40, v40, v56, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s27, v127, v50, v127
	v_div_fixup_f32 v30, v40, v47, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v46, v46, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v52, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v51, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v118
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v59, v54, v52
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s28, v126, v49, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v46, v46, v70
	v_fmac_f32_e32 v54, v56, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v55, v53
	v_rcp_f32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v59, v54, v52
	v_fma_f32 v59, -v51, v56, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v140, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v52, v48, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v59, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v57, v58, 1.0
	v_div_fixup_f32 v48, v48, v50, v127
	v_fma_f32 v50, -v51, v56, v55
	v_div_scale_f32 v51, null, v0, v0, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v163, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v47, v58
	v_div_scale_f32 v47, s27, v70, v46, v70
	v_rcp_f32_e32 v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v121, v121, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v50, v53, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v47, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v51, v52, 1.0
	v_div_fixup_f32 v42, v42, v49, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v57, v56, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v59, v52
	v_div_scale_f32 v59, s28, v118, v0, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v55, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v59, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v57, v56, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v51, v49, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v116
	v_ldexp_f32 v50, v53, v50
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v57, v57, v122
	v_fmac_f32_e32 v49, v39, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v53
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v33, v47, v58, v56
	v_div_scale_f32 v60, null, v50, v50, v120
	v_fma_f32 v47, -v51, v49, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v60
	v_fma_f32 v59, -v53, v55, 1.0
	v_div_fmas_f32 v47, v47, v52, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v113
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, vcc_lo, v122, v57, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v55, v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v47, v0, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v60, v58, 1.0
	v_mul_f32_e32 v56, v49, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v46, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v124, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v53, v56, v49
	v_fmac_f32_e32 v58, v52, v58
	v_div_scale_f32 v52, s27, v120, v50, v120
	v_div_scale_f32 v59, null, v54, v54, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v0, v55
	v_mul_f32_e32 v46, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v53, v56, v49
	v_fma_f32 v0, -v60, v46, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v132, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v55, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v0, v58
	v_fma_f32 v0, -v59, v61, 1.0
	v_div_scale_f32 v49, null, v47, v47, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v60, v46, v52
	v_fmac_f32_e32 v61, v0, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v52, s28, v116, v54, v116
	v_div_fmas_f32 v46, v51, v58, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v52, v61
	v_fma_f32 v56, -v49, v0, 1.0
	v_div_fixup_f32 v46, v46, v50, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v57, v122
	v_fma_f32 v50, -v59, v51, v52
	v_fmac_f32_e32 v0, v56, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_ldexp_f32 v36, v41, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, s27, v113, v47, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v50, v61 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v57, v0
	v_fma_f32 v52, -v59, v51, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v58, v58, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v49, v41, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_exp_f32_e32 v35, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v133, v30 :: v_dual_fmac_f32 v41, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v56, v55
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fma_f32 v49, -v49, v41, v57
	v_div_fmas_f32 v51, v52, v61, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v59, v53, 1.0
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v141, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v52, v52, v107
	v_div_fmas_f32 v0, v49, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v57, vcc_lo, v115, v58, v115
	v_rcp_f32_e32 v49, v50
	v_div_fixup_f32 v36, v51, v54, v116
	v_div_fixup_f32 v0, v0, v47, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v57, v53 :: v_dual_mul_f32 v38, v150, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v35 :: v_dual_mul_f32 v113, v125, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v139, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v59, v51, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v47, null, v56, v56, v105
	v_fma_f32 v54, -v50, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v51, v60, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v128, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v54, v49
	v_div_scale_f32 v54, s27, v107, v52, v107
	v_div_scale_f32 v61, null, v0, v0, v106
	v_fma_f32 v48, -v59, v51, v57
	v_mul_f32_e32 v46, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v59, v61
	v_fma_f32 v60, -v47, v55, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v50, v46, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v60, v55
	v_div_scale_f32 v60, s28, v105, v56, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v114 :: v_dual_fmac_f32 v46, v57, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v61, v59, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v60, v55
	v_div_fixup_f32 v48, v48, v58, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v50, v46, v54
	v_fmac_f32_e32 v59, v62, v59
	v_div_scale_f32 v58, s29, v106, v0, v106
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v54, -v47, v57, v60
	v_div_fmas_f32 v46, v50, v49, v46
	v_mul_f32_e32 v49, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, s30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_ldexp_f32 v51, v53, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v54, v55
	v_fma_f32 v54, -v61, v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v47, v57, v60
	v_fmac_f32_e32 v49, v54, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v62
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v51, v51, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v47, v55, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v61, v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v54, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v52, v107
	v_div_fixup_f32 v47, v47, v56, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v131, v42 :: v_dual_mul_f32 v107, v129, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v59, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v55, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v60, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v106
	v_div_scale_f32 v55, null, v49, v49, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v57, v53, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, vcc_lo, v114, v51, v114
	v_rcp_f32_e32 v59, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v61, null, v50, v50, v84
	v_mul_f32_e32 v62, v53, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v130, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v123, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v60, v62, v53
	v_div_scale_f32 v47, s27, v112, v49, v112
	v_fma_f32 v63, -v55, v59, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v105, v119, v48 :: v_dual_fmac_f32 v62, v56, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v58, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v61, v52, 1.0
	v_fmac_f32_e32 v59, v63, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v60, v62, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s28, v84, v50, v84
	v_div_fmas_f32 v46, v46, v57, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v47, v59
	v_div_scale_f32 v56, null, v0, v0, v83
	v_mul_f32_e32 v60, v54, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v55, v53, v47
	v_rcp_f32_e32 v57, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v61, v60, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v221
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v51, v114
	v_fmac_f32_e32 v60, v48, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v55, v53, v47
	v_fma_f32 v51, -v56, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, s29, v83, v0, v83
	v_fma_f32 v54, -v61, v60, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v51, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v48, v48, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v97, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v47, v59, v53
	v_mul_f32_e32 v53, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v47, v49, v112
	v_fma_f32 v59, -v56, v53, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v138, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v48, v48, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v55, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v54, v52, v60
	v_rcp_f32_e32 v54, v63
	v_fmac_f32_e32 v53, v59, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v89 :: v_dual_add_f32 v49, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v50, v52, v50, v84
	v_fma_f32 v51, -v56, v53, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v185
	v_fma_f32 v56, -v63, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v51, v51, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v108, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s27, v221, v48, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v51, v0, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v56, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v55, v53, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v241, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v63, v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v59, v53
	v_div_scale_f32 v59, s28, v185, v49, v185
	v_div_scale_f32 v60, null, v0, v0, v89
	v_fmac_f32_e32 v58, v52, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v59, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v98, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v60
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v57, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v63, v58, v56
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v56, -v55, v52, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v190
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v54, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v56, v53
	v_fma_f32 v51, -v60, v47, 1.0
	v_div_scale_f32 v54, null, v46, v46, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v50, v48, v221
	v_fma_f32 v50, -v55, v52, v59
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s27, v89, v0, v89
	v_rcp_f32_e32 v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_mul_f32_e32 v58, v51, v47
	v_div_fmas_f32 v50, v50, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s29
	v_exp_f32_e32 v57, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v54, v55, 1.0
	v_div_fixup_f32 v49, v50, v49, v185
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v60, v58, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s28, v90, v46, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v50, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v57, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v95
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v60, v58, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v54, v56, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v52, v53, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v53, null, v50, v50, v101
	v_fmac_f32_e32 v56, v60, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v53
	v_div_fmas_f32 v47, v51, v47, v58
	v_fma_f32 v51, -v54, v56, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v52, v52, v96
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v55, v56
	v_rcp_f32_e32 v59, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v53, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, vcc_lo, v101, v50, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v60, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v61
	v_div_fixup_f32 v46, v51, v46, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v47, v0, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v62, v59, 1.0
	v_dual_mul_f32 v58, v56, v61 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v78, v46 :: v_dual_mul_f32 v89, v255, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v57, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v53, v58, v56
	v_div_scale_f32 v57, s27, v96, v52, v96
	v_div_scale_f32 v60, null, v55, v55, v95
	v_dual_fmac_f32 v58, v46, v61 :: v_dual_mul_f32 v47, v57, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v111, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v53, v58, v56
	v_fma_f32 v46, -v62, v47, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v110, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s28, v95, v55, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v48, v48, v61, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v47, v46, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v60, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v0, v0, v184
	v_fma_f32 v51, -v62, v47, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v63, v46, v63 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v46, v49
	v_div_fmas_f32 v47, v51, v59, v47
	v_mul_f32_e32 v51, v53, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v47, v52, v96
	v_fma_f32 v52, -v60, v51, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v202
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v52, v63
	v_div_fixup_f32 v48, v48, v50, v101
	v_fma_f32 v50, -v49, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v56, v54
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s27, v184, v0, v184
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v50, v46
	v_fma_f32 v53, -v60, v51, v53
	v_div_scale_f32 v61, null, v54, v54, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v49, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v60, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v53, v63, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v49, v52, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v59, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v61, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v58, null, v50, v50, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_fmac_f32 v62, v56, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s28, v76, v54, v76
	v_rcp_f32_e32 v59, v58
	v_div_fmas_f32 v46, v49, v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v53, v53, v74
	v_mul_f32_e32 v52, v56, v62
	v_div_fixup_f32 v51, v51, v55, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v46, v0, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v57, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v49
	v_fma_f32 v57, -v61, v52, v56
	v_fma_f32 v60, -v58, v59, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v84, v103, v0 :: v_dual_mul_f32 v83, v102, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v52, v57, v62 :: v_dual_fmac_f32 v59, v60, v59
	v_div_scale_f32 v46, s27, v75, v50, v75
	v_fma_f32 v51, -v49, v55, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v56, -v61, v52, v56
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v57, null, v0, v0, v69
	v_mul_f32_e32 v60, v46, v59
	v_fmac_f32_e32 v55, v51, v55
	v_div_scale_f32 v51, s29, v74, v53, v74
	v_div_fmas_f32 v52, v56, v62, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v238, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v58, v60, v46
	v_mul_f32_e32 v48, v51, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v47, v59
	v_fma_f32 v47, -v49, v48, v51
	v_div_fixup_f32 v52, v52, v54, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v57, v61, 1.0
	v_fmac_f32_e32 v48, v47, v55
	v_fma_f32 v46, -v58, v60, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v68 :: v_dual_fmac_f32 v61, v54, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s28, v69, v0, v69
	v_fma_f32 v49, -v49, v48, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v64
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v58, v54, v61
	v_div_fmas_f32 v46, v46, v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	v_ldexp_f32 v47, v47, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v57, v58, v54
	v_div_fixup_f32 v46, v46, v50, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v49, v55, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v51, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v59, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v47, v47, v100
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v57, v58, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v51
	v_div_scale_f32 v62, null, v49, v49, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v48, v48, v53, v74
	v_div_fmas_f32 v54, v54, v61, v58
	v_rcp_f32_e32 v58, v62
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v56
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v239
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v51, v57, 1.0
	v_div_fixup_f32 v0, v54, v0, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v75, v224, v48 :: v_dual_add_f32 v50, 1.0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v56, v57
	v_div_scale_f32 v56, vcc_lo, v100, v47, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v62, v58, 1.0
	v_div_scale_f32 v55, null, v50, v50, v85
	v_dual_mul_f32 v53, v56, v57 :: v_dual_mul_f32 v76, v73, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s27, v68, v49, v68
	v_rcp_f32_e32 v0, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v94, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v54, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v51, v53, v56
	v_dual_mul_f32 v54, v60, v58 :: v_dual_mul_f32 v73, v93, v52
	v_div_scale_f32 v52, s28, v85, v50, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v48, v57
	v_fma_f32 v48, -v62, v54, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v55, v0, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v51, v53, v56
	v_fmac_f32_e32 v54, v48, v58
	v_fmac_f32_e32 v0, v59, v0
	v_div_scale_f32 v59, null, v46, v46, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v51, v51, v57, v53
	v_fma_f32 v53, -v62, v54, v60
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v48, v52, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v59
	v_div_fmas_f32 v53, v53, v58, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v55, v48, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v51, v47, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v57, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v63
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v59, v56, 1.0
	v_fma_f32 v52, -v55, v48, v52
	v_div_fixup_f32 v49, v53, v49, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v54, s27, v239, v46, v239
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v61
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v230
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_mul_f32_e32 v55, v54, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v52, v0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v63
	v_ldexp_f32 v58, v60, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v59, v55, v54
	v_div_scale_f32 v61, null, v57, v57, v218
	v_div_fixup_f32 v0, v0, v50, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v50, 1.0, v58 :: v_dual_fmac_f32 v55, v48, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v44, v52, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v50, v50, v249
	v_fma_f32 v51, -v59, v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v61, v48, 1.0
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v56, v55
	v_div_scale_f32 v56, vcc_lo, v218, v57, v218
	v_fmac_f32_e32 v48, v59, v48
	v_div_scale_f32 v55, null, v44, v44, v230
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v52, v60, 1.0
	v_div_fixup_f32 v46, v51, v46, v239
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v56, v48
	v_rcp_f32_e32 v58, v55
	v_fmac_f32_e32 v60, v59, v60
	v_div_scale_f32 v59, s27, v249, v50, v249
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v68, v88, v46 :: v_dual_mul_f32 v67, v87, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v61, v62, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v46, v59, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v86, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v51, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v55, v58, 1.0
	v_fmac_f32_e32 v62, v0, v48
	v_fma_f32 v0, -v52, v46, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v252, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v47, 1.0, v49 :: v_dual_fmac_f32 v58, v53, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v61, v62, v56
	v_fmac_f32_e32 v46, v0, v60
	v_div_scale_f32 v51, s28, v230, v44, v230
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v49, v48, v62
	v_fma_f32 v49, -v52, v46, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v0, v51, v58
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v57, v218
	v_div_fmas_f32 v34, v49, v60, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v55, v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v47, v47, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v49, v49
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v55, v0, v51
	v_rcp_f32_e32 v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v25, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v51, v58, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v49, v46
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v166
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s27
	v_exp_f32_e32 v49, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v44, v230
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v53
	v_ldexp_f32 v25, v25, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v27, v26, 1.0
	v_div_fixup_f32 v34, v34, v50, v249
	v_div_scale_f32 v50, null, v44, v44, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v56, v26
	v_div_scale_f32 v52, vcc_lo, v80, v47, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v25, v25, v172
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v49, v49, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v54
	v_mul_f32_e32 v55, v52, v26
	v_div_scale_f32 v61, null, v46, v46, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v59, v51
	v_fma_f32 v58, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v63, v61
	v_fma_f32 v60, -v27, v55, v52
	v_fma_f32 v62, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v58, v53
	v_div_scale_f32 v58, s27, v165, v44, v165
	v_fmac_f32_e32 v55, v60, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v60, -v51, v59, 1.0
	v_fmac_f32_e32 v56, v62, v56
	v_div_scale_f32 v62, s28, v172, v25, v172
	v_fma_f32 v69, -v61, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v64, v58, v53 :: v_dual_fmac_f32 v59, v60, v59
	v_div_scale_f32 v60, s29, v104, v49, v104
	v_fma_f32 v27, -v27, v55, v52
	v_dual_mul_f32 v70, v62, v56 :: v_dual_fmac_f32 v63, v69, v63
	v_div_scale_f32 v69, s30, v166, v46, v166
	v_fma_f32 v52, -v50, v64, v58
	v_mul_f32_e32 v71, v60, v59
	v_div_fmas_f32 v26, v27, v26, v55
	v_fma_f32 v27, -v54, v70, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v69, v63 :: v_dual_fmac_f32 v64, v52, v53
	v_fma_f32 v52, -v51, v71, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v26, v26, v47, v80
	v_fmac_f32_e32 v70, v27, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v27, -v61, v55, v69
	v_fma_f32 v47, -v50, v64, v58
	v_fmac_f32_e32 v71, v52, v59
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v50, -v54, v70, v62
	v_fmac_f32_e32 v55, v27, v63
	v_div_fmas_f32 v47, v47, v53, v64
	v_fma_f32 v27, -v51, v71, v60
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v237, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v61, v55, v69
	v_div_fmas_f32 v50, v50, v56, v70
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v236, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v59, v71
	s_mov_b32 vcc_lo, s30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v79, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v63, v55
	v_div_fixup_f32 v25, v50, v25, v172
	v_div_fixup_f32 v26, v27, v49, v104
	v_div_fixup_f32 v27, v47, v44, v165
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v235, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v51, v46, v166
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v217, v25
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v29|, |v40|, |v38|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v216, v27
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v121|, |v42|, |v39|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v211, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v37|, |v31|
	v_max3_f32 v34, |v33|, |v23|, |v21|
	v_max_f32_e64 v46, |v113|, |v41|
	v_max3_f32 v47, |v36|, |v105|, |v106|
	v_max3_f32 v48, |v97|, |v98|, |v99|
	v_max3_f32 v50, |v43|, |v19|, |v18|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v179, v26
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v32|, |v30|, |v24|
	v_max3_f32 v0, v0, |v28|, v25
	v_max3_f32 v25, v27, v34, |v22|
	v_max3_f32 v27, |v107|, |v45|, |v20|
	v_max3_f32 v34, v46, |v35|, v47
	v_max3_f32 v46, v48, v50, |v17|
	v_max_f32_e64 v47, |v89|, |v90|
	v_max3_f32 v48, |v91|, |v81|, |v82|
	v_max3_f32 v50, |v73|, |v74|, |v75|
	v_max3_f32 v54, |v76|, |v15|, |v13|
	v_max3_f32 v0, v0, v26, v25
	v_max3_f32 v25, v34, v27, v46
	v_max3_f32 v26, |v83|, |v84|, |v16|
	v_max3_f32 v27, v47, |v92|, v48
	v_max3_f32 v34, v50, v54, |v14|
	v_max_f32_e64 v46, |v65|, |v66|
	v_max3_f32 v47, |v67|, |v53|, |v58|
	v_max3_f32 v48, |v52|, |v51|, |v49|
	v_max3_f32 v50, |v44|, |v9|, |v10|
	s_mov_b32 s27, 0x76543210
	v_max3_f32 v26, v27, v26, v34
	v_max3_f32 v27, |v59|, |v60|, |v12|
	v_max3_f32 v34, v46, |v68|, v47
	v_max3_f32 v48, v48, v50, |v11|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v50, v0, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v25, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v46, s28, s66, v4
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v56, v26, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v50, v50
	v_max_f32_e32 v50, v54, v54
	v_max3_f32 v27, v34, v27, v48
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v34, 3, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v54, v0, v4 :: v_dual_lshlrev_b32 v61, 1, v203
	v_dual_max_f32 v55, v25, v50 :: v_dual_max_f32 v0, v56, v56
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v4, 4, v200
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v25, v34, 9, 0
	v_permlanex16_b32 v48, v27, s27, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v50, 5, v34
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v26, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v26, 0x60, v200
	v_lshl_add_u32 v0, v4, 2, v25
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v48, v48
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v48, 0x680, v7, v50
	v_lshrrev_b32_e32 v62, 3, v203
	v_xor_b32_e32 v50, v50, v26
	v_lshl_add_u32 v0, v3, 4, v0
	v_lshl_add_u32 v63, v4, 6, 0
	v_xor_b32_e32 v48, v48, v26
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v57, v27, v25
.Ltmp28:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 34, v8
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v61, v50
.Ltmp30:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s67, 0, s28
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v27, v63, v62, v48
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v61, s27, s66, v25
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[54:57]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v27
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v62, null, s67, 0, s27
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 30, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s33, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s33
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[46:47]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[46:47]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v46, s33, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v47, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 28, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[46:47]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, v54
	v_dual_mov_b32 v0, v55 :: v_dual_mov_b32 v25, v56
.Ltmp36:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[46:47]
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v46, v55, v55
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v47, v57, v57 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v0, v0, v0
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_lshlrev_b32 v34, 4, v34
	v_dual_max_f32 v2, v27, v2 :: v_dual_max_f32 v27, v46, v0
	v_max_f32_e32 v46, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v48, v57, v57
.Ltmp44:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s37, s66, v1
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v50, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v46, v25
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s37
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v54, v27
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v47, v48
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v25
.Ltmp51:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[0:1]
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v47, v48
.Ltmp53:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[0:1]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v50, v50
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v54, v54
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 26, v8
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v46, v46 :: v_dual_max_f32 v1, v27, v1
	v_max_f32_e32 v27, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v46, s39, s66, v50
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v25, v2
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v50, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v54, v1 :: v_dual_max_f32 v25, v48, v27
	v_add_nc_u32_e32 v57, 0, v203
	v_mov_b32_e32 v27, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v25
	v_lshlrev_b32_e32 v4, 5, v4
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v56, v54, v54
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v0, v0, v50
	v_max_f32_e32 v1, v1, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v48, v48, v48
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v50, 1, v26
	v_lshlrev_b32_e32 v56, 3, v3
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v27 :: v_dual_add_nc_u32 v27, 0, v34
	v_max_f32_e32 v3, v25, v48
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v57, v50, v56
.Ltmp69:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 24, v8
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v27, v4, v56
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v48, 22, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s67, 0, s39
.Ltmp72:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v25, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v54, s40, s66, v55
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s67, 0, s40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 18, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v56, s40, s66, v48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[46:47]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v57, null, s67, 0, s40
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[46:47]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v46, s45, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s67, 0, s45
	v_add_co_u32 v54, s45, s66, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s67, 0, s45
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[46:47]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v25, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[46:47]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v46, s49, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s67, 0, s49
	v_add_co_u32 v54, s49, s66, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v27
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 12, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[56:57]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[56:57]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add_co_u32 v56, s49, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v8
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_fma_f32 v48, -v27, v0, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v57, null, s67, 0, s49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[46:47]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[46:47]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v46, s55, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v8
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_fmac_f32_e32 v0, v48, v0
	v_div_scale_f32 v48, vcc_lo, v25, 0x40e00000, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[54:55]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[54:55]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s67, 0, s55
	v_add_co_u32 v54, s55, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v50, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v48, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[56:57]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[56:57]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[46:47]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v56, v50
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[46:47]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[54:55]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v46, -v27, v4, v48
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[54:55]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v54, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v47, 6, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v46, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[61:62]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v46, 0x2b8cbccc, v3
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v54
	v_fma_f32 v1, -v50, v56, 1.0
	v_fma_f32 v27, -v27, v4, v48
	v_div_scale_f32 v48, s61, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v3
	v_fmac_f32_e32 v56, v1, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v27, v0, v4
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s59, s66, v47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v48, v56
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[61:62]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v3, v55, 1.0
	v_rcp_f32_e32 v61, v57
	v_fma_f32 v25, -v50, v27, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v62.h, 0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v55, v47, v55
	v_div_scale_f32 v47, s62, v54, 0x40e00000, v54
	v_fmac_f32_e32 v27, v25, v56
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v25.l, v4.h
	v_mov_b16_e32 v25.h, v62.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v63, v47, v55
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v64, -v57, v61, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v50, v27, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v3, v63, v47
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v61, v64, v61
	v_div_scale_f32 v48, s63, v46, 0x40e00000, v46
	v_div_fmas_f32 v0, v0, v56, v27
	v_fmac_f32_e32 v63, v25, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v4, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v48, v61
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_fma_f32 v2, -v3, v63, v47
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v47, 0xffff0000, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v57, v27, v48
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v8
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v62.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v55, v63
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v55, null, v47, v47, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v3, v61
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v63, v55
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v1, -v57, v27, v48
	v_div_fixup_f32 v2, v2, 0x40e00000, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v47, v47, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v54.h, v62.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v61, v27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v62
	v_mov_b16_e32 v54.l, v2.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v50, -v55, v63, 1.0
	v_rcp_f32_e32 v57, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v46, v1, 0x40e00000, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v61, vcc_lo, v37, v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v50, v63
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v0, v27, 0x7fff
	v_mov_b16_e32 v62.l, v46.h
	v_and_b32_e32 v0, 1, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v69, null, v47, v47, v28
	v_mul_f32_e32 v64, v61, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v48, v57, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v56, 1, v62
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v62, v69
	v_fma_f32 v0, -v55, v64, v61
	v_div_scale_f32 v70, null, v47, v47, v29
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v57, v54, v57
	v_div_scale_f32 v72, s61, v31, v47, v31
	v_fmac_f32_e32 v64, v0, v63
	v_rcp_f32_e32 v0, v70
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v46, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v46, v72, v57
	v_fma_f32 v77, -v69, v62, 1.0
	v_fma_f32 v55, -v55, v64, v61
	v_div_scale_f32 v79, null, v47, v47, v40
	v_fma_f32 v61, -v48, v46, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v62, v77, v62
	v_div_scale_f32 v77, s62, v28, v47, v28
	v_fma_f32 v78, -v70, v0, 1.0
	v_div_fmas_f32 v55, v55, v63, v64
	v_fmac_f32_e32 v46, v61, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v61, v77, v62
	v_rcp_f32_e32 v63, v79
	v_fmac_f32_e32 v0, v78, v0
	v_div_scale_f32 v64, s63, v29, v47, v29
	v_div_scale_f32 v78, null, v47, v47, v38
	v_div_fixup_f32 v37, v55, v47, v37
	v_fma_f32 v48, -v48, v46, v72
	v_fma_f32 v55, -v69, v61, v77
	v_mul_f32_e32 v72, v64, v0
	v_rcp_f32_e32 v80, v78
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v85, -v79, v63, 1.0
	v_div_fmas_f32 v46, v48, v57, v46
	v_fmac_f32_e32 v61, v55, v62
	v_fma_f32 v48, -v70, v72, v64
	v_div_scale_f32 v55, s61, v40, v47, v40
	v_fmac_f32_e32 v63, v85, v63
	v_div_fixup_f32 v31, v46, v47, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v78, v80, 1.0
	v_fma_f32 v46, -v69, v61, v77
	v_fmac_f32_e32 v72, v48, v0
	v_div_scale_f32 v69, null, v47, v47, v32
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v48, v55, v63
	v_fmac_f32_e32 v80, v57, v80
	v_div_scale_f32 v57, s64, v38, v47, v38
	v_div_fmas_f32 v46, v46, v62, v61
	v_fma_f32 v61, -v70, v72, v64
	v_rcp_f32_e32 v64, v69
	v_div_scale_f32 v77, null, v47, v47, v30
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v62, -v79, v48, v55
	v_mul_f32_e32 v70, v57, v80
	v_div_fmas_f32 v0, v61, v0, v72
	v_rcp_f32_e32 v61, v77
	v_div_fixup_f32 v28, v46, v47, v28
	v_fmac_f32_e32 v48, v62, v63
	v_fma_f32 v62, -v78, v70, v57
	v_fma_f32 v72, -v69, v64, 1.0
	v_div_fixup_f32 v29, v0, v47, v29
	v_div_scale_f32 v46, s62, v32, v47, v32
	v_fma_f32 v0, -v79, v48, v55
	v_fmac_f32_e32 v70, v62, v80
	v_fmac_f32_e32 v64, v72, v64
	v_fma_f32 v55, -v77, v61, 1.0
	v_div_scale_f32 v62, null, v47, v47, v24
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v72, null, v47, v47, v121
	v_div_fmas_f32 v0, v0, v63, v48
	v_fma_f32 v48, -v78, v70, v57
	v_mul_f32_e32 v57, v46, v64
	v_fmac_f32_e32 v61, v55, v61
	v_rcp_f32_e32 v55, v62
	v_div_scale_f32 v63, s61, v30, v47, v30
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v40, v0, v47, v40
	v_div_fmas_f32 v48, v48, v80, v70
	v_fma_f32 v70, -v69, v57, v46
	v_mul_f32_e32 v78, v63, v61
	v_rcp_f32_e32 v80, v72
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v62, v55, 1.0
	v_fmac_f32_e32 v57, v70, v64
	v_fma_f32 v0, -v77, v78, v63
	v_div_fixup_f32 v38, v48, v47, v38
	v_div_scale_f32 v48, s63, v24, v47, v24
	v_fmac_f32_e32 v55, v79, v55
	v_div_scale_f32 v70, null, v47, v47, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v72, v80, 1.0
	v_fma_f32 v46, -v69, v57, v46
	v_fmac_f32_e32 v78, v0, v61
	v_mul_f32_e32 v0, v48, v55
	v_rcp_f32_e32 v69, v70
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, s64, v121, v47, v121
	v_div_fmas_f32 v46, v46, v64, v57
	v_fma_f32 v57, -v77, v78, v63
	v_div_scale_f32 v85, null, v47, v47, v39
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v63, -v62, v0, v48
	v_mul_f32_e32 v64, v79, v80
	v_div_fmas_f32 v57, v57, v61, v78
	v_rcp_f32_e32 v61, v85
	v_fma_f32 v77, -v70, v69, 1.0
	v_fmac_f32_e32 v0, v63, v55
	v_fma_f32 v63, -v72, v64, v79
	v_div_fixup_f32 v32, v46, v47, v32
	v_div_fixup_f32 v30, v57, v47, v30
	v_fmac_f32_e32 v69, v77, v69
	v_div_scale_f32 v77, s61, v42, v47, v42
	v_fma_f32 v46, -v62, v0, v48
	v_fmac_f32_e32 v64, v63, v80
	v_fma_f32 v57, -v85, v61, 1.0
	v_div_scale_f32 v62, null, v47, v47, v33
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v48, v77, v69
	v_div_fmas_f32 v0, v46, v55, v0
	v_fma_f32 v46, -v72, v64, v79
	v_fmac_f32_e32 v61, v57, v61
	v_rcp_f32_e32 v57, v62
	v_div_scale_f32 v72, null, v47, v47, v23
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v55, -v70, v48, v77
	v_div_scale_f32 v63, s62, v39, v47, v39
	v_div_fmas_f32 v46, v46, v80, v64
	v_rcp_f32_e32 v64, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v55, v69
	v_mul_f32_e32 v78, v63, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v62, v57, 1.0
	v_div_fixup_f32 v24, v0, v47, v24
	v_div_fixup_f32 v55, v46, v47, v121
	v_fma_f32 v0, -v70, v48, v77
	v_fma_f32 v46, -v85, v78, v63
	v_fmac_f32_e32 v57, v79, v57
	v_div_scale_f32 v70, s63, v33, v47, v33
	v_fma_f32 v77, -v72, v64, 1.0
	v_div_scale_f32 v79, null, v47, v47, v21
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v78, v46, v61
	v_div_fmas_f32 v0, v0, v69, v48
	v_mul_f32_e32 v46, v70, v57
	v_fmac_f32_e32 v64, v77, v64
	v_rcp_f32_e32 v48, v79
	v_div_scale_f32 v69, s61, v23, v47, v23
	v_div_scale_f32 v77, null, v47, v47, v22
	v_div_fixup_f32 v42, v0, v47, v42
	v_fma_f32 v0, -v85, v78, v63
	v_fma_f32 v63, -v62, v46, v70
	v_mul_f32_e32 v80, v69, v64
	v_rcp_f32_e32 v85, v77
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v79, v48, 1.0
	v_div_fmas_f32 v0, v0, v61, v78
	v_fmac_f32_e32 v46, v63, v57
	v_fma_f32 v61, -v72, v80, v69
	v_div_scale_f32 v63, s62, v21, v47, v21
	v_fmac_f32_e32 v48, v86, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v77, v85, 1.0
	v_div_fixup_f32 v39, v0, v47, v39
	v_fma_f32 v0, -v62, v46, v70
	v_fmac_f32_e32 v80, v61, v64
	v_div_scale_f32 v70, null, v71, v71, v113
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v61, v63, v48
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v62, s64, v22, v47, v22
	v_div_fmas_f32 v0, v0, v57, v46
	v_fma_f32 v46, -v72, v80, v69
	v_rcp_f32_e32 v69, v70
	v_fma_f32 v57, -v79, v61, v63
	v_mul_f32_e32 v72, v62, v85
	v_div_scale_f32 v78, null, v71, v71, v41
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v61, v57, v48
	v_div_fmas_f32 v46, v46, v64, v80
	v_rcp_f32_e32 v57, v78
	v_fma_f32 v64, -v77, v72, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v70, v69, 1.0
	v_div_fixup_f32 v33, v0, v47, v33
	v_div_fixup_f32 v23, v46, v47, v23
	v_fma_f32 v0, -v79, v61, v63
	v_fmac_f32_e32 v72, v64, v85
	v_fmac_f32_e32 v69, v80, v69
	v_div_scale_f32 v46, s61, v113, v71, v113
	v_div_scale_f32 v64, null, v71, v71, v35
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v63, -v78, v57, 1.0
	v_div_fmas_f32 v0, v0, v48, v61
	v_fma_f32 v48, -v77, v72, v62
	v_mul_f32_e32 v61, v46, v69
	v_rcp_f32_e32 v62, v64
	v_div_scale_f32 v77, null, v71, v71, v36
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v57, v63, v57
	v_div_scale_f32 v63, s62, v41, v71, v41
	v_div_fmas_f32 v48, v48, v85, v72
	v_fma_f32 v72, -v70, v61, v46
	v_rcp_f32_e32 v85, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v79, v63, v57
	v_fma_f32 v80, -v64, v62, 1.0
	v_div_fixup_f32 v22, v48, v47, v22
	v_fmac_f32_e32 v61, v72, v69
	v_div_scale_f32 v48, null, v71, v71, v105
	v_div_fixup_f32 v21, v0, v47, v21
	v_fma_f32 v0, -v78, v79, v63
	v_fmac_f32_e32 v62, v80, v62
	v_div_scale_f32 v47, s63, v35, v71, v35
	v_fma_f32 v72, -v77, v85, 1.0
	v_fma_f32 v46, -v70, v61, v46
	v_rcp_f32_e32 v70, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v79, v0, v57 :: v_dual_mul_f32 v0, v47, v62
	v_fmac_f32_e32 v85, v72, v85
	v_div_scale_f32 v72, s64, v36, v71, v36
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v80, null, v71, v71, v106
	v_div_fmas_f32 v46, v46, v69, v61
	v_fma_f32 v61, -v78, v79, v63
	v_fma_f32 v63, -v64, v0, v47
	v_mul_f32_e32 v69, v72, v85
	v_fma_f32 v78, -v48, v70, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, null, v71, v71, v17
	v_div_fmas_f32 v61, v61, v57, v79
	v_fmac_f32_e32 v0, v63, v62
	v_rcp_f32_e32 v63, v80
	v_fma_f32 v79, -v77, v69, v72
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s61, v105, v71, v105
	v_div_fixup_f32 v57, v46, v71, v113
	v_fma_f32 v46, -v64, v0, v47
	v_fmac_f32_e32 v69, v79, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v78, v70
	v_div_scale_f32 v64, null, v71, v71, v107
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v41, v61, v71, v41
	v_fma_f32 v61, -v80, v63, 1.0
	v_div_fmas_f32 v0, v46, v62, v0
	v_fma_f32 v46, -v77, v69, v72
	v_fma_f32 v62, -v48, v47, v78
	v_rcp_f32_e32 v72, v64
	v_div_scale_f32 v79, null, v71, v71, v45
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v63, v61, v63
	v_div_scale_f32 v77, s62, v106, v71, v106
	v_div_fmas_f32 v46, v46, v85, v69
	v_fmac_f32_e32 v47, v62, v70
	v_rcp_f32_e32 v69, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v62, v77, v63
	v_fma_f32 v61, -v64, v72, 1.0
	v_div_fixup_f32 v35, v0, v71, v35
	v_fma_f32 v0, -v48, v47, v78
	v_div_scale_f32 v78, null, v71, v71, v20
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v36, v46, v71, v36
	v_fma_f32 v46, -v80, v62, v77
	v_fmac_f32_e32 v72, v61, v72
	v_div_scale_f32 v48, s63, v107, v71, v107
	v_fma_f32 v61, -v79, v69, 1.0
	v_div_fmas_f32 v0, v0, v70, v47
	v_rcp_f32_e32 v47, v78
	v_div_scale_f32 v85, null, v71, v71, v97
	v_fmac_f32_e32 v62, v46, v63
	v_dual_mul_f32 v46, v48, v72 :: v_dual_fmac_f32 v69, v61, v69
	v_div_scale_f32 v70, s61, v45, v71, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v85
	v_div_fixup_f32 v61, v0, v71, v105
	v_fma_f32 v0, -v80, v62, v77
	v_fma_f32 v77, -v64, v46, v48
	v_mul_f32_e32 v80, v70, v69
	v_fma_f32 v87, -v78, v47, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v56, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v63, v62
	v_fmac_f32_e32 v46, v77, v72
	v_fma_f32 v63, -v79, v80, v70
	v_fmac_f32_e32 v47, v87, v47
	v_fma_f32 v87, -v85, v86, 1.0
	v_div_scale_f32 v77, s62, v20, v71, v20
	v_div_fixup_f32 v62, v0, v71, v106
	v_fma_f32 v0, -v64, v46, v48
	v_fmac_f32_e32 v80, v63, v69
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, null, v71, v71, v98
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v48, v77, v47
	v_div_scale_f32 v64, s64, v97, v71, v97
	v_div_fmas_f32 v0, v0, v72, v46
	v_fma_f32 v46, -v79, v80, v70
	v_rcp_f32_e32 v70, v87
	v_div_scale_f32 v79, null, v71, v71, v99
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v63, -v78, v48, v77
	v_mul_f32_e32 v72, v64, v86
	v_div_fmas_f32 v46, v46, v69, v80
	v_rcp_f32_e32 v69, v79
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v48, v63, v47
	v_fma_f32 v80, -v85, v72, v64
	v_fma_f32 v88, -v87, v70, 1.0
	v_div_fixup_f32 v63, v0, v71, v107
	v_div_fixup_f32 v45, v46, v71, v45
	v_fma_f32 v0, -v78, v48, v77
	v_fmac_f32_e32 v72, v80, v86
	v_fmac_f32_e32 v70, v88, v70
	v_div_scale_f32 v46, s61, v98, v71, v98
	v_fma_f32 v77, -v79, v69, 1.0
	v_div_scale_f32 v78, null, v71, v71, v43
	v_div_fmas_f32 v0, v0, v47, v48
	v_fma_f32 v47, -v85, v72, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, v46, v70 :: v_dual_fmac_f32 v69, v77, v69
	v_rcp_f32_e32 v77, v78
	v_div_scale_f32 v80, s62, v99, v71, v99
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, null, v71, v71, v19
	v_div_fmas_f32 v47, v47, v86, v72
	v_fma_f32 v72, -v87, v48, v46
	v_mul_f32_e32 v86, v80, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v85
	v_fma_f32 v88, -v78, v77, 1.0
	v_div_fixup_f32 v20, v0, v71, v20
	v_fmac_f32_e32 v48, v72, v70
	v_fma_f32 v0, -v79, v86, v80
	v_div_fixup_f32 v64, v47, v71, v97
	v_fmac_f32_e32 v77, v88, v77
	v_div_scale_f32 v47, s63, v43, v71, v43
	v_div_scale_f32 v72, null, v71, v71, v18
	v_fma_f32 v46, -v87, v48, v46
	v_fmac_f32_e32 v86, v0, v69
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v85, v93, 1.0
	v_mul_f32_e32 v0, v47, v77
	v_rcp_f32_e32 v87, v72
	v_div_fmas_f32 v46, v46, v70, v48
	v_fma_f32 v48, -v79, v86, v80
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s64, v19, v71, v19
	v_fma_f32 v70, -v78, v0, v47
	v_div_fmas_f32 v48, v48, v69, v86
	v_rcp_f32_e32 v86, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v88, v93
	v_fma_f32 v80, -v72, v87, 1.0
	v_fmac_f32_e32 v0, v70, v77
	v_div_fixup_f32 v69, v46, v71, v98
	v_div_fixup_f32 v70, v48, v71, v99
	v_fma_f32 v95, -v85, v79, v88
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, s61, v18, v71, v18
	v_fma_f32 v46, -v78, v0, v47
	v_fma_f32 v48, -v94, v86, 1.0
	v_div_scale_f32 v78, null, v56, v56, v89
	v_fmac_f32_e32 v79, v95, v93
	v_mul_f32_e32 v47, v80, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v48, v86
	v_rcp_f32_e32 v48, v78
	s_mov_b32 vcc_lo, s63
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2f0, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v46, v77, v0
	v_fma_f32 v46, -v85, v79, v88
	v_fma_f32 v77, -v72, v47, v80
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, s62, v17, v71, v17
	v_div_scale_f32 v88, null, v56, v56, v90
	v_div_fmas_f32 v46, v46, v93, v79
	v_fmac_f32_e32 v47, v77, v87
	v_fma_f32 v93, -v78, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v88
	v_mul_f32_e32 v79, v85, v86
	v_div_fixup_f32 v43, v0, v71, v43
	v_fma_f32 v0, -v72, v47, v80
	v_fmac_f32_e32 v48, v93, v48
	v_div_scale_f32 v93, null, v56, v56, v92
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v19, v46, v71, v19
	v_fma_f32 v46, -v94, v79, v85
	v_div_scale_f32 v72, s63, v89, v56, v89
	v_div_fmas_f32 v0, v0, v87, v47
	v_rcp_f32_e32 v47, v93
	v_fma_f32 v80, -v88, v77, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v79, v46, v86 :: v_dual_mul_f32 v46, v72, v48
	v_div_scale_f32 v87, null, v56, v56, v91
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, s61, v90, v56, v90
	v_div_fixup_f32 v18, v0, v71, v18
	v_fma_f32 v0, -v94, v79, v85
	v_fma_f32 v85, -v78, v46, v72
	v_rcp_f32_e32 v95, v87
	v_fma_f32 v96, -v93, v47, 1.0
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v94, v80, v77
	v_div_fmas_f32 v0, v0, v86, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v46, v85, v48 :: v_dual_fmac_f32 v47, v96, v47
	v_div_scale_f32 v85, s62, v92, v56, v92
	v_fma_f32 v79, -v88, v94, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v87, v95, 1.0
	v_div_fixup_f32 v17, v0, v71, v17
	v_fma_f32 v0, -v78, v46, v72
	v_mul_f32_e32 v78, v85, v47
	s_mov_b32 vcc_lo, s63
	v_dual_fmac_f32 v94, v79, v77 :: v_dual_fmac_f32 v95, v86, v95
	v_div_scale_f32 v79, s64, v91, v56, v91
	v_div_fmas_f32 v0, v0, v48, v46
	v_fma_f32 v48, -v93, v78, v85
	v_div_scale_f32 v96, null, v56, v56, v82
	v_fma_f32 v46, -v88, v94, v80
	v_mul_f32_e32 v88, v79, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v48, v47
	v_rcp_f32_e32 v48, v96
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v71, v0, v56, v89
	v_div_fmas_f32 v46, v46, v77, v94
	v_fma_f32 v77, -v87, v88, v79
	v_fma_f32 v0, -v93, v78, v85
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v89, s62, v82, v56, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v77, v95
	v_fma_f32 v77, -v96, v48, 1.0
	v_div_fmas_f32 v0, v0, v47, v78
	s_mov_b32 vcc_lo, s64
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v87, v88, v79
	v_fmac_f32_e32 v48, v77, v48
	v_div_fixup_f32 v77, v0, v56, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v95, v88
	v_mul_f32_e32 v93, v89, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v96, v93, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v0, v48
	v_div_scale_f32 v86, null, v56, v56, v81
	v_div_fixup_f32 v72, v46, v56, v90
	v_div_scale_f32 v46, s61, v81, v56, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v86
	v_div_scale_f32 v85, null, v56, v56, v83
	v_div_scale_f32 v90, null, v56, v56, v84
	v_div_fixup_f32 v78, v47, v56, v91
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v47, s63, v83, v56, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v95, v90
	v_fma_f32 v94, -v86, v80, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v94, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v90, v95, 1.0
	v_mul_f32_e32 v79, v46, v80
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v56, v56, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v91, v95
	v_fma_f32 v88, -v86, v79, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v47, v87
	v_div_scale_f32 v91, s64, v84, v56, v84
	v_dual_fmac_f32 v79, v88, v80 :: v_dual_and_b32 v54, 0xffff0000, v2
	v_div_scale_f32 v88, null, v56, v56, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v46, -v86, v79, v46
	v_rcp_f32_e32 v86, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v46, v46, v80, v79
	v_fma_f32 v79, -v96, v93, v89
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v80, -v85, v0, v47
	v_mul_f32_e32 v89, v91, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v88, v86, 1.0
	v_div_fmas_f32 v48, v79, v48, v93
	v_rcp_f32_e32 v93, v94
	v_fmac_f32_e32 v0, v80, v87
	v_fma_f32 v96, -v90, v89, v91
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v16, v56, v16
	v_div_fixup_f32 v79, v46, v56, v81
	v_div_fixup_f32 v80, v48, v56, v82
	v_fma_f32 v46, -v85, v0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v47, v92, v86
	v_fma_f32 v48, -v94, v93, 1.0
	v_div_scale_f32 v81, null, v56, v56, v74
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v89, v96, v95
	v_div_fmas_f32 v0, v46, v87, v0
	v_fma_f32 v82, -v88, v47, v92
	v_fmac_f32_e32 v93, v48, v93
	v_rcp_f32_e32 v48, v81
	v_div_scale_f32 v87, null, v56, v56, v75
	v_fma_f32 v46, -v90, v89, v91
	v_div_scale_f32 v85, s62, v73, v56, v73
	v_fmac_f32_e32 v47, v82, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v87
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v0, v0, v56, v83
	v_div_fmas_f32 v46, v46, v95, v89
	v_mul_f32_e32 v89, v85, v93
	v_fma_f32 v90, -v81, v48, 1.0
	v_fma_f32 v83, -v88, v47, v92
	v_div_scale_f32 v88, s63, v74, v56, v74
	v_div_fixup_f32 v46, v46, v56, v84
	v_fma_f32 v84, -v94, v89, v85
	v_fmac_f32_e32 v48, v90, v48
	v_fma_f32 v90, -v87, v82, 1.0
	v_div_scale_f32 v91, null, v56, v56, v76
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v89, v84, v93
	v_div_fmas_f32 v47, v83, v86, v47
	v_dual_mul_f32 v83, v88, v48 :: v_dual_fmac_f32 v82, v90, v82
	v_rcp_f32_e32 v84, v91
	v_div_scale_f32 v86, s61, v75, v56, v75
	v_div_scale_f32 v90, null, v56, v56, v15
	v_div_fixup_f32 v16, v47, v56, v16
	v_fma_f32 v47, -v94, v89, v85
	v_fma_f32 v85, -v81, v83, v88
	v_mul_f32_e32 v92, v86, v82
	v_rcp_f32_e32 v94, v90
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v91, v84, 1.0
	v_div_fmas_f32 v47, v47, v93, v89
	v_fmac_f32_e32 v83, v85, v48
	v_fma_f32 v85, -v87, v92, v86
	v_div_scale_f32 v89, s62, v76, v56, v76
	v_fmac_f32_e32 v84, v95, v84
	v_div_fixup_f32 v47, v47, v56, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v94, 1.0
	v_fma_f32 v73, -v81, v83, v88
	v_fmac_f32_e32 v92, v85, v82
	v_div_scale_f32 v88, null, v56, v56, v13
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v81, v89, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v85, s64, v15, v56, v15
	v_div_fmas_f32 v48, v73, v48, v83
	v_fma_f32 v73, -v87, v92, v86
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v93, null, v56, v56, v14
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v83, -v91, v81, v89
	v_mul_f32_e32 v87, v85, v94
	v_div_fmas_f32 v73, v73, v82, v92
	v_rcp_f32_e32 v82, v93
	v_div_fixup_f32 v48, v48, v56, v74
	v_fmac_f32_e32 v81, v83, v84
	v_fma_f32 v83, -v90, v87, v85
	v_fma_f32 v92, -v88, v86, 1.0
	v_div_fixup_f32 v73, v73, v56, v75
	v_div_scale_f32 v75, s61, v13, v56, v13
	v_fma_f32 v74, -v91, v81, v89
	v_fmac_f32_e32 v87, v83, v94
	v_fmac_f32_e32 v86, v92, v86
	v_fma_f32 v83, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, null, v54, v54, v66
	v_div_fmas_f32 v74, v74, v84, v81
	v_fma_f32 v81, -v90, v87, v85
	v_mul_f32_e32 v84, v75, v86
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, null, v54, v54, v65
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v89, -v88, v84, v75
	v_div_fmas_f32 v81, v81, v94, v87
	v_rcp_f32_e32 v87, v83
	v_div_scale_f32 v85, s62, v14, v56, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v89, v86
	v_div_fixup_f32 v15, v81, v56, v15
	v_rcp_f32_e32 v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v74, v74, v56, v76
	v_fma_f32 v75, -v88, v84, v75
	v_div_scale_f32 v88, null, v54, v54, v68
	v_fma_f32 v89, -v83, v87, 1.0
	v_fma_f32 v76, -v93, v90, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v54, v54, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v92, -v91, v81, 1.0
	v_fmac_f32_e32 v90, v76, v82
	v_div_scale_f32 v76, s63, v65, v54, v65
	v_div_fmas_f32 v75, v75, v86, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v92, v81
	v_fma_f32 v84, -v93, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v76, v87
	v_div_scale_f32 v86, s61, v66, v54, v66
	v_fma_f32 v92, -v88, v89, 1.0
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v83, v85, v76
	v_mul_f32_e32 v95, v86, v81
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s64, v68, v54, v68
	v_div_fmas_f32 v82, v84, v82, v90
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v84, -v91, v95, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v92, v89
	v_div_fixup_f32 v13, v75, v56, v13
	v_div_fixup_f32 v14, v82, v56, v14
	v_div_scale_f32 v82, null, v54, v54, v53
	v_fma_f32 v75, -v88, v90, v92
	v_fma_f32 v56, -v83, v85, v76
	v_fmac_f32_e32 v95, v84, v81
	v_fma_f32 v76, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v75, v89
	v_rcp_f32_e32 v75, v82
	v_fma_f32 v83, -v91, v95, v86
	v_fmac_f32_e32 v96, v76, v96
	v_div_scale_f32 v76, s62, v67, v54, v67
	v_div_fmas_f32 v56, v56, v87, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v85, null, v54, v54, v58
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v92
	v_mul_f32_e32 v84, v76, v96
	v_fma_f32 v86, -v82, v75, 1.0
	s_mov_b32 vcc_lo, s64
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v83, v83, v89, v90
	v_fma_f32 v88, -v94, v84, v76
	v_fmac_f32_e32 v75, v86, v75
	v_div_scale_f32 v86, s61, v53, v54, v53
	v_div_fixup_f32 v56, v56, v54, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v88, v96
	v_div_fixup_f32 v65, v81, v54, v66
	v_div_fixup_f32 v66, v83, v54, v68
	v_mul_f32_e32 v68, v86, v75
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v76, -v94, v84, v76
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v83, null, v54, v54, v59
	v_fma_f32 v88, -v82, v68, v86
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s63, v58, v54, v58
	v_div_fmas_f32 v76, v76, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v88, v75
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v67, v76, v54, v67
	v_fma_f32 v76, -v82, v68, v86
	v_div_scale_f32 v88, null, v54, v54, v60
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v76, v75, v68
	v_div_scale_f32 v75, null, v54, v54, v12
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v75
	v_div_scale_f32 v76, s61, v59, v54, v59
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v54, v54, v52
	v_div_fixup_f32 v53, v68, v54, v53
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v75, v82, 1.0
	v_mul_f32_e32 v85, v76, v89
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v68, v90
	v_div_scale_f32 v68, s62, v60, v54, v60
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v54, v54, v51
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v76
	v_mul_f32_e32 v87, v68, v90
	v_div_scale_f32 v93, s63, v12, v54, v12
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v68
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s64, v52, v54, v52
	v_div_fixup_f32 v58, v81, v54, v58
	v_fma_f32 v76, -v83, v85, v76
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v75, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v68, -v88, v87, v68
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v51, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v75, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_div_fmas_f32 v76, v76, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v85, null, v54, v54, v49
	v_div_fmas_f32 v68, v68, v90, v87
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v59, v76, v54, v59
	v_div_fmas_f32 v75, v75, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v60, v68, v54, v60
	v_div_fixup_f32 v12, v75, v54, v12
	v_div_scale_f32 v75, null, v54, v54, v44
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v89, null, v54, v54, v11
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v68, -v91, v81, v84
	v_fma_f32 v76, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v52, v82, v54, v52
	v_div_fmas_f32 v68, v68, v95, v81
	v_rcp_f32_e32 v81, v75
	v_fmac_f32_e32 v87, v76, v87
	v_div_scale_f32 v76, null, v54, v54, v9
	v_div_scale_f32 v82, null, v54, v54, v10
	v_div_scale_f32 v83, vcc_lo, v49, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v76
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v51, v68, v54, v51
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v68, -v75, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v68, v81
	v_div_scale_f32 v68, s61, v44, v54, v44
	v_fma_f32 v90, -v76, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v92, -v85, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v68, v81 :: v_dual_fmac_f32 v91, v95, v91
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v9, v54, v9
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v10, v54, v10
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v92, -v75, v94, v68
	v_div_scale_f32 v95, s64, v11, v54, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v96, v90, v84 :: v_dual_mul_f32 v97, v93, v86
	v_fmac_f32_e32 v94, v92, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v85, -v76, v96, v90
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v68, -v75, v94, v68
	v_fma_f32 v75, -v89, v98, v95
	v_div_fmas_f32 v83, v83, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v98, v75, v91
	v_div_fmas_f32 v68, v68, v81, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v76, -v76, v96, v90
	v_fma_f32 v75, -v82, v97, v93
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v81, -v89, v98, v95
	v_div_fixup_f32 v49, v83, v54, v49
	v_div_fmas_f32 v76, v76, v84, v96
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v44, v68, v54, v44
	v_div_fmas_f32 v75, v75, v86, v97
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v9, v76, v54, v9
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v75, v54, v10
	s_mov_b32 s61, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v81, v54, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v0, v0, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v83, v43
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v98, v60
	v_and_b32_e32 v60, 15, v64
	v_and_b32_e32 v64, 15, v68
	v_and_b32_e32 v68, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v200
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v71
	v_rndne_f32_e32 v71, v77
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v92, v14
	v_cvt_i32_f32_e32 v95, v67
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v67, 15, v33
	v_and_b32_e32 v14, 15, v41
	v_and_b32_e32 v41, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v200
	v_lshlrev_b32_e32 v32, 8, v83
	v_and_b32_e32 v33, 64, v200
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v72, v78
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v12, v12, s61, 0x40e00000
	v_cvt_i32_f32_e32 v78, v21
	v_and_b32_e32 v21, 15, v29
	v_and_b32_e32 v29, 15, v57
	v_and_b32_e32 v57, 15, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v47, 3, v203
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v7, v7, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v80
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s61, 0x40e00000
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v9, v9, s61, 0x40e00000
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_med3_f32 v11, v11, s61, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v80, v55
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v93, v56
	v_cvt_i32_f32_e32 v99, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v47, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v88, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v96, v53
	v_cvt_i32_f32_e32 v102, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v65
	v_cvt_i32_f32_e32 v100, v52
	v_cvt_i32_f32_e32 v101, v51
	v_cvt_i32_f32_e32 v103, v9
	v_cvt_i32_f32_e32 v104, v10
	v_cvt_i32_f32_e32 v105, v11
	v_and_b32_e32 v9, 15, v37
	v_and_b32_e32 v51, 15, v24
	v_and_b32_e32 v55, 15, v54
	v_and_b32_e32 v10, 15, v80
	v_and_b32_e32 v52, 15, v20
	v_and_b32_e32 v11, 15, v69
	v_and_b32_e32 v53, 15, v16
	v_and_b32_e32 v12, 15, v93
	v_and_b32_e32 v54, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v7, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v49, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v85, v17
	v_cvt_i32_f32_e32 v89, v76
	v_cvt_i32_f32_e32 v90, v15
	v_cvt_i32_f32_e32 v91, v13
	v_cvt_i32_f32_e32 v58, v58
	v_and_b32_e32 v13, 15, v31
	v_and_b32_e32 v17, 15, v28
	v_and_b32_e32 v28, 15, v40
	v_and_b32_e32 v43, 15, v30
	v_and_b32_e32 v15, 15, v70
	v_and_b32_e32 v30, 15, v88
	v_and_b32_e32 v69, 15, v74
	v_and_b32_e32 v31, 15, v96
	v_and_b32_e32 v70, 15, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_and_b32_e32 v16, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[9:12]
	ds_store_b128 v7, v[28:31] offset:256
	v_xad_u32 v9, v0, 16, 0
	ds_store_b128 v7, v[51:54] offset:2048
	ds_store_b128 v7, v[67:70] offset:2304
	v_lshlrev_b32_e32 v7, 6, v200
	v_lshlrev_b32_e32 v10, 5, v26
	v_cndmask_b32_e64 v11, 0x2010, 0, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v35
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v79, 15, v22
	v_and_b32_e32 v22, 15, v36
	v_and_b32_e32 v36, 15, v61
	v_and_b32_e32 v37, 15, v89
	v_and_b32_e32 v38, 15, v58
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v82, v63
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v86, v71
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v66, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[35:38] offset:256
	v_lshlrev_b32_e32 v13, 2, v83
	v_and_or_b32 v7, 0x300, v7, v10
	v_xor_b32_e32 v10, v11, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v84, v18
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v97, v59
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v87, v72
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_and_b32_e32 v59, 15, v42
	v_and_b32_e32 v18, 15, v81
	v_and_b32_e32 v40, 15, v62
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v72, 15, v19
	v_and_b32_e32 v19, 15, v86
	v_and_b32_e32 v61, 15, v48
	v_and_b32_e32 v20, 15, v66
	v_and_b32_e32 v58, 15, v100
	v_and_b32_e32 v62, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_or3_b32 v7, v10, v7, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v71, 15, v23
	v_and_b32_e32 v75, 15, v78
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v65, 15, v73
	v_and_b32_e32 v73, 15, v90
	v_and_b32_e32 v77, 15, v91
	v_and_b32_e32 v42, 15, v97
	v_and_b32_e32 v66, 15, v49
	v_and_b32_e32 v74, 15, v103
	v_and_b32_e32 v78, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v85
	v_and_b32_e32 v23, 15, v87
	v_and_b32_e32 v81, 15, v92
	v_and_b32_e32 v24, 15, v95
	v_and_b32_e32 v82, 15, v105
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[55:58] offset:2048
	ds_store_b128 v9, v[71:74] offset:2304
	ds_store_b128 v12, v[17:20]
	ds_store_b128 v12, v[39:42] offset:256
	ds_store_b128 v12, v[59:62] offset:2048
	ds_store_b128 v12, v[75:78] offset:2304
	ds_store_b128 v0, v[21:24]
	ds_store_b128 v0, v[43:46] offset:256
	v_add_nc_u32_e32 v21, 0, v7
	ds_store_b128 v0, v[63:66] offset:2048
	ds_store_b128 v0, v[79:82] offset:2304
	v_xad_u32 v0, 0x4020, v7, 0
	v_xad_u32 v26, 0x8040, v7, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v21
	ds_load_b128 v[13:16], v21 offset:128
	ds_load_b128 v[17:20], v21 offset:4096
	ds_load_b128 v[21:24], v21 offset:4224
	ds_load_b128 v[28:31], v0
	ds_load_b128 v[32:35], v0 offset:128
	ds_load_b128 v[36:39], v0 offset:4096
	ds_load_b128 v[40:43], v0 offset:4224
	v_xad_u32 v0, 0xc060, v7, 0
	ds_load_b128 v[44:47], v26
	ds_load_b128 v[51:54], v26 offset:128
	ds_load_b128 v[55:58], v26 offset:4096
	ds_load_b128 v[59:62], v26 offset:4224
	ds_load_b128 v[63:66], v0 offset:4096
	ds_load_b128 v[67:70], v0
	ds_load_b128 v[71:74], v0 offset:128
	ds_load_b128 v[75:78], v0 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 2, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s77, 7, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v48, s3, s66, v50
	v_add_co_ci_u32_e64 v49, null, s67, 0, s3
	v_add_co_u32 v79, s3, s66, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s67, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v26, v17, 4, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[48:49]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[48:49]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[79:80]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 2, v3
	v_add_nc_u32_e32 v8, 4, v3
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v49, v63, 4, v67
	v_lshl_or_b32 v63, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v56, 4, v45
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v57, 4, v46
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_mad_u64_u32 v[6:7], null, v7, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v58, 4, v47
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v66, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v28, 38, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v55, 4, v44
	v_lshl_or_b32 v55, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[79:80]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v37, 4, v29
	v_lshl_or_b32 v42, v42, 4, v34
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v23, 34, v3
	v_add_nc_u32_e32 v24, 36, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v70, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v28, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v70, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v26, v24, s[64:67], 0 offen
	buffer_store_b8 v48, v0, s[64:67], 0 offen
	buffer_store_b8 v44, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v50, v7, s[64:67], 0 offen
	buffer_store_b8 v55, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[64:67], 0 offen
	buffer_store_b8 v59, v4, s[64:67], 0 offen
	buffer_store_b8 v63, v6, s[64:67], 0 offen
	buffer_store_b8 v67, v7, s[64:67], 0 offen
	buffer_store_b8 v45, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v25.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v56, v0, s[64:67], 0 offen
	buffer_store_b8 v64, v4, s[64:67], 0 offen
	buffer_store_b8 v41, v6, s[64:67], 0 offen
	buffer_store_b8 v52, v7, s[64:67], 0 offen
	buffer_store_b8 v60, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[64:67], 0 offen
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v46, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v42, v0, s[64:67], 0 offen
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v47, v0, s[64:67], 0 offen
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v43, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v201
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v109
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v62, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	v_add3_u32 v3, v4, v6, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v200
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s77, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 420
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
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 420
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29948
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 420
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 80
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 420
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 104
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
