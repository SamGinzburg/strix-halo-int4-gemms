	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v103, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v55, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s5, s45, s4
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
	v_and_b32_e32 v0, 63, v103
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
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
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
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v30, s34, v0
	v_and_b32_e32 v13, 16, v103
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v103
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow673
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v105, 15, v103
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v106, 0xf0, v103
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v104, 0xc0, v103
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v250, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v157, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v217, 0
	v_mov_b32_e32 v193, 0
	v_mov_b32_e32 v197, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	s_load_b32 s46, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_mov_b32_e32 v51, 0
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	s_addc_u32 s9, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s8, s[8:9], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[5:6]
	v_dual_mov_b32 v212, 0 :: v_dual_and_b32 v1, 1, v103
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v2, s34, v105
	v_dual_mov_b32 v211, 0 :: v_dual_lshlrev_b32 v4, 4, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s1
	s_and_b32 s1, s4, s5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s3
	s_and_b32 s3, s6, s7
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 1, v103
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s7, s45, 8
	.loc	1 1149 29 is_stmt 1             ; ragged.py:1149:29
	s_mul_i32 s4, s11, s5
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v10, 3, v104
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v6, 32, v2
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v7, 48, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s10, s4, s8
	scratch_store_b32 off, v13, off offset:488 ; 4-byte Folded Spill
	v_cmp_eq_u32_e64 s4, 0, v13
	v_or_b32_e32 v13, s7, v103
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v4, off offset:340
	scratch_store_b32 off, v10, off offset:336
	scratch_store_b64 off, v[30:31], off offset:328
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v4, 16, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s44
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v5, s7, v3
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v8, 0, v0
	v_lshl_add_u32 v0, v0, 5, 0
	v_mov_b32_e32 v52, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[27:28], null, v5, s11, s[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:344
	scratch_store_b32 off, v103, off offset:472
	v_mul_lo_u32 v2, v4, s44
	v_mul_lo_u32 v4, v6, s44
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v207, 0
	scratch_store_b64 off, v[27:28], off offset:364 ; 8-byte Folded Spill
	v_dual_mov_b32 v244, 0 :: v_dual_lshlrev_b32 v23, 3, v104
	v_or_b32_e32 v24, 0x3f0, v103
	.loc	1 1045 18                       ; ragged.py:1045:18
	scratch_store_b32 off, v2, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x80, v5
	v_mov_b32_e32 v54, 0
	v_or_b32_e32 v25, 0x7f0, v103
	v_dual_mov_b32 v255, 0 :: v_dual_lshlrev_b32 v26, 2, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[27:28], null, s11, v2, s[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, v7, s44
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v6, s33, v2
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v7, s33, v5
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, v6, s11, s[10:11]
	scratch_store_b64 off, v[27:28], off offset:372 ; 8-byte Folded Spill
	v_mad_u64_u32 v[27:28], null, v7, s11, s[10:11]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v4, off offset:356 ; 4-byte Folded Spill
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v4, 1, v103
	v_mov_b32_e32 v217, 0
	v_add3_u32 v1, 0, v26, v1
	v_mov_b32_e32 v159, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, v4, v3
	v_and_b32_e32 v9, 24, v4
	v_dual_mov_b32 v197, 0 :: v_dual_lshlrev_b32 v26, 1, v106
	v_mov_b32_e32 v243, 0
	v_and_b32_e32 v3, 24, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v105, 5, v9
	v_mov_b32_e32 v245, 0
	s_mul_i32 s6, s44, s8
	v_mov_b32_e32 v157, 0
	v_xor_b32_e32 v3, v3, v10
	v_xor_b32_e32 v11, 8, v9
	v_xor_b32_e32 v12, 16, v9
	v_xor_b32_e32 v14, 24, v9
	v_xor_b32_e32 v15, 0x208, v9
	v_add_nc_u32_e32 v0, v0, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[27:28], off offset:380
	scratch_store_b32 off, v104, off offset:476
	v_xor_b32_e32 v16, 0x218, v9
	v_xor_b32_e32 v17, 0x210, v9
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v105, off offset:480 ; 4-byte Folded Spill
	v_mov_b32_e32 v155, 0
	v_bfe_u32 v10, v103, 4, 1
	v_xor_b32_e32 v18, 0x410, v9
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	scratch_store_b32 off, v106, off offset:484 ; 4-byte Folded Spill
	v_mov_b32_e32 v79, 0
	v_and_or_b32 v10, v4, 30, v10
	v_xor_b32_e32 v19, 0x418, v9
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v0, 0, v12
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v208, 2, v10
	v_xor_b32_e32 v10, 0x408, v9
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v0, 0, v14
	v_xor_b32_e32 v20, 0x618, v9
	v_mov_b32_e32 v71, 0
	v_xor_b32_e32 v21, 0x610, v9
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0, v15
	v_xor_b32_e32 v22, 0x608, v9
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v117, 0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	v_and_b32_e32 v4, 28, v4
	s_mov_b32 s8, 0
	v_mov_b32_e32 v69, 0
	s_and_b32 s13, s13, 0xffff
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v17
	s_and_b32 s15, s15, 0xffff
	v_mov_b32_e32 v133, 0
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v18
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 0, v19
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:388
	scratch_store_b32 off, v0, off offset:436
	v_add_nc_u32_e32 v0, 0, v20
	v_mov_b32_e32 v114, 0
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v172, 0, v105
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v21
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v22
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v8, v23
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v151, 0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v24
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v25
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v149, 0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v0, v1, v4
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v141, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v0, 0, v26
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v2, s9
	v_mov_b32_e32 v4, s11
	v_mov_b32_e32 v6, s13
	v_mov_b32_e32 v8, s15
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:360
	scratch_store_b32 off, v0, off offset:468
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b64 v[9:10], off, off offset:364
	scratch_load_b32 v13, off, off offset:336
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s8, 5
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v57, off offset:56
	scratch_store_b32 off, v52, off offset:52
	scratch_store_b32 off, v199, off offset:48
	scratch_store_b32 off, v58, off offset:44
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v51, off offset:36
	scratch_store_b32 off, v54, off offset:32
	scratch_store_b32 off, v126, off offset:28
	scratch_store_b32 off, v145, off offset:24
	scratch_store_b32 off, v56, off offset:20
	scratch_store_b32 off, v195, off offset:16
	scratch_store_b32 off, v61, off offset:12
	scratch_store_b32 off, v60, off offset:8
	scratch_store_b32 off, v59, off offset:4
	scratch_store_b32 off, v204, off
	v_xor_b32_e32 v126, 4, v208
	v_mov_b32_e32 v169, v212
	v_dual_mov_b32 v167, v161 :: v_dual_mov_b32 v134, v67
	v_dual_mov_b32 v201, v70 :: v_dual_mov_b32 v202, v119
	v_mov_b32_e32 v119, v63
	v_dual_mov_b32 v158, v135 :: v_dual_mov_b32 v135, v68
	v_dual_mov_b32 v203, v120 :: v_dual_mov_b32 v150, v77
	v_dual_mov_b32 v120, v64 :: v_dual_mov_b32 v145, v205
	v_dual_mov_b32 v146, v76 :: v_dual_mov_b32 v205, v75
	v_mov_b32_e32 v204, v121
	v_dual_mov_b32 v122, v162 :: v_dual_mov_b32 v137, v72
	v_dual_mov_b32 v162, v159 :: v_dual_mov_b32 v159, v136
	v_dual_mov_b32 v192, v131 :: v_dual_mov_b32 v131, v196
	v_dual_mov_b32 v156, v133 :: v_dual_mov_b32 v133, v66
	v_mov_b32_e32 v196, v111
	v_mov_b32_e32 v136, v71
	v_mov_b32_e32 v132, v200
	v_mov_b32_e32 v200, v69
	v_dual_mov_b32 v170, v198 :: v_dual_mov_b32 v121, v65
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v222, s7, v0
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, v9, v222
	scratch_load_b64 v[9:10], off, off offset:372 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, v9, v222
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[14:17], v0, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	v_or_b32_e32 v0, s7, v13
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v18, v208, v14
	ds_bpermute_b32 v19, v208, v15
	ds_bpermute_b32 v21, v126, v14
	ds_bpermute_b32 v24, v126, v15
	v_mad_u64_u32 v[14:15], null, v0, s46, v[30:31]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 1, v13
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v22, v208, v16
	ds_bpermute_b32 v23, v208, v17
	ds_bpermute_b32 v16, v126, v16
	ds_bpermute_b32 v17, v126, v17
	v_or_b32_e32 v0, s7, v0
	v_cndmask_b32_e64 v20, 0x80000000, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v0, s46, v[30:31]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 2, v13
	v_or_b32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v25, 0x80000000, v14, s2
	v_mad_u64_u32 v[14:15], null, v0, s46, v[30:31]
	v_or_b32_e32 v0, 3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v0, s7, v0
	v_cndmask_b32_e64 v26, 0x80000000, v14, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v249, v25, s[24:27], 0 offen
	buffer_load_u8 v60, v26, s[24:27], 0 offen
	buffer_load_u8 v251, v20, s[24:27], 0 offen
	v_mad_u64_u32 v[14:15], null, v0, s46, v[30:31]
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v20, v21, v18, s4
	v_cndmask_b32_e64 v18, v18, v21, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v21, v24, v19, s4
	v_cndmask_b32_e64 v19, v19, v24, s4
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v24, v16, v22, s4
	v_cndmask_b32_e64 v22, v22, v16, s4
	v_cndmask_b32_e64 v0, 0x80000000, v14, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v14, 4, v13
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v25, v17, v23, s4
	v_cndmask_b32_e64 v23, v23, v17, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v14, s7, v14
	v_mad_u64_u32 v[14:15], null, v14, s46, v[30:31]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v14, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v14, 5, v13
	v_or_b32_e32 v14, s7, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v14, s46, v[30:31]
	v_cndmask_b32_e64 v28, 0x80000000, v14, s2
	v_or_b32_e32 v14, 7, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v14, s7, v14
	v_mad_u64_u32 v[14:15], null, v14, s46, v[30:31]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v14, s2
	v_or_b32_e32 v14, 6, v13
	v_or_b32_e32 v14, s7, v14
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s7, s7, s5
	v_mad_u64_u32 v[14:15], null, v14, s46, v[30:31]
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x4
	buffer_load_u8 v59, v28, s[24:27], 0 offen
	buffer_load_u8 v13, v29, s[24:27], 0 offen
	buffer_load_u8 v246, v14, s[24:27], 0 offen
	buffer_load_u8 v247, v27, s[24:27], 0 offen
	buffer_load_u8 v248, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v59.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.h, 8, v13.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v15.l, v247.l, v0.l
	v_lshlrev_b16 v0.l, 8, v249.l
	v_or_b16 v15.h, v246.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v14.l, v251.l, v0.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v248.l
	v_or_b16 v14.h, v60.l, v0.l
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[26:27], v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[28:29], v0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[30:31], v0
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[44:45], v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[14:17], v0 offset1:1
	ds_load_2addr_stride64_b64 v[40:43], v0 offset0:2 offset1:3
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[20:21], v[14:15], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[24:25], v[26:27], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[18:19], v[28:29], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[22:23], v[30:31], v[32:39] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v32, v126, v9
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v33, v208, v10
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v34, v126, v10
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v35, v208, v11
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v36, v126, v11
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v37, v208, v12
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v10, v34, v33, s4
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v38, v126, v12
	v_cndmask_b32_e64 v12, v33, v34, s4
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v46, v36, v35, s4
	v_cndmask_b32_e64 v48, v35, v36, s4
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_bpermute_b32 v0, v208, v9
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v47, v38, v37, s4
	v_cndmask_b32_e64 v49, v37, v38, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v9, v32, v0, s4
	v_cndmask_b32_e64 v11, v0, v32, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[46:47], v[26:27], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v26, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[11:12], v[28:29], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[48:49], v[30:31], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[30:37], v[20:21], v[44:45], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[30:37], v[24:25], v[16:17], v[30:37] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[14:15], v0
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[18:19], v[14:15], v[30:37] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[50:51], v0
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[22:23], v[50:51], v[30:37] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[52:53], v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[54:55], v0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v30
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[9:10], v[44:45], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[31:38], v[46:47], v[16:17], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[11:12], v[14:15], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[48:49], v[50:51], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	v_mov_b32_e32 v31, v62
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[20:21], v[52:53], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[24:25], v[54:55], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[18:19], v[40:41], v[32:39] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[14:15], v0
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[22:23], v[14:15], v[32:39] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[16:17], v0
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[44:45], v0
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[50:51], v0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[52:53], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[32:39], v[46:47], v[54:55], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[11:12], v[40:41], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[48:49], v[14:15], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[20:21], v[16:17], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[24:25], v[44:45], v[32:39] neg_lo:[1,1,0]
	v_dual_mov_b32 v24, v209 :: v_dual_mov_b32 v209, v84
	v_mov_b32_e32 v25, v213
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[18:19], v[50:51], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v19, v211
	v_wmma_i32_16x16x16_iu4 v[32:39], v[22:23], v[42:43], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v23, v83
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[16:17], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:380 ; 8-byte Folded Reload
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[32:39], v[46:47], v[44:45], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[11:12], v[50:51], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[48:49], v[42:43], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v9, v222
	scratch_load_b64 v[9:10], off, off offset:388 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, v9, v222
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[14:17], v0, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v34, v208, v14
	ds_bpermute_b32 v222, v126, v14
	scratch_load_b32 v14, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v14, v251
	ds_store_b8 v14, v249 offset:64
	ds_store_b8 v14, v60 offset:128
	ds_store_b8 v14, v248 offset:192
	ds_store_b8 v14, v247 offset:256
	ds_store_b8 v14, v59 offset:320
	ds_store_b8 v14, v246 offset:384
	ds_store_b8 v14, v13 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v27, off, off offset:456 ; 4-byte Folded Reload
	ds_load_u8 v62, v172 offset:432
	ds_load_u8 v84, v172 offset:48
	ds_load_u8 v211, v172 offset:1264
	ds_load_u8 v212, v172 offset:1456
	ds_load_u8 v161, v172 offset:1200
	ds_load_u8 v83, v172 offset:112
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v33, v208, v15
	ds_bpermute_b32 v32, v208, v16
	ds_bpermute_b32 v0, v208, v17
	ds_bpermute_b32 v54, v126, v15
	ds_bpermute_b32 v165, v126, v16
	ds_bpermute_b32 v163, v126, v17
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v16, v172 offset:320
	ds_load_u8 v17, v172 offset:256
	ds_load_u8 v14, v172 offset:336
	ds_load_u8 v15, v172 offset:272
	ds_load_u8 v47, v172 offset:352
	ds_load_u8 v48, v172 offset:288
	ds_load_u8 v59, v172 offset:368
	ds_load_u8 v60, v172 offset:304
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v186, v222, v34, s4
	v_cndmask_b32_e64 v69, v34, v222, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v111, v172 offset:1616
	ds_load_u8 v236, v172 offset:1632
	ds_load_u8 v154, v172 offset:1648
	ds_load_u8 v231, v172 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v172 offset:448
	ds_load_u8 v35, v172 offset:384
	ds_load_u8 v46, v172 offset:464
	ds_load_u8 v49, v172 offset:400
	ds_load_u8 v50, v172 offset:480
	ds_load_u8 v51, v172 offset:416
	ds_load_u8 v61, v172 offset:496
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v187, v54, v33, s4
	v_cndmask_b32_e64 v70, v33, v54, s4
	v_cndmask_b32_e64 v67, v165, v32, s4
	v_cndmask_b32_e64 v63, v32, v165, s4
	v_cndmask_b32_e64 v68, v163, v0, s4
	v_cndmask_b32_e64 v64, v0, v163, s4
	ds_bpermute_b32 v0, v208, v9
	ds_bpermute_b32 v9, v126, v9
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v17, v35, v17, 0xc0c0004
	ds_load_u8 v35, v172 offset:64
	ds_load_u8 v36, v172
	ds_load_u8 v52, v172 offset:16
	ds_load_u8 v53, v172 offset:80
	ds_load_u8 v55, v172 offset:32
	ds_load_u8 v56, v172 offset:96
	v_lshl_or_b32 v17, v17, 16, v16
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v75, v9, v0, s4
	v_cndmask_b32_e64 v77, v0, v9, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v172 offset:192
	ds_load_u8 v37, v172 offset:128
	ds_load_u8 v57, v172 offset:208
	ds_load_u8 v58, v172 offset:144
	ds_load_u8 v184, v172 offset:224
	ds_load_u8 v191, v172 offset:160
	ds_load_u8 v22, v172 offset:240
	ds_load_u8 v21, v172 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v36, 16, v35
	ds_load_u8 v35, v172 offset:832
	ds_load_u8 v36, v172 offset:768
	ds_load_u8 v181, v172 offset:848
	ds_load_u8 v182, v172 offset:784
	ds_load_u8 v168, v172 offset:864
	ds_load_u8 v188, v172 offset:800
	ds_load_u8 v164, v172 offset:880
	ds_load_u8 v224, v172 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v172 offset:960
	ds_load_u8 v37, v172 offset:896
	ds_load_u8 v183, v172 offset:976
	ds_load_u8 v185, v172 offset:912
	ds_load_u8 v13, v172 offset:992
	ds_load_u8 v213, v172 offset:928
	ds_load_u8 v214, v172 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v172 offset:576
	ds_load_u8 v38, v172 offset:512
	ds_load_u8 v189, v172 offset:592
	ds_load_u8 v190, v172 offset:528
	ds_load_u8 v241, v172 offset:608
	ds_load_u8 v195, v172 offset:544
	ds_load_u8 v20, v172 offset:624
	ds_load_u8 v215, v172 offset:560
	v_lshl_or_b32 v41, v36, 16, v35
	ds_load_u8 v35, v172 offset:1280
	ds_load_u8 v36, v172 offset:1344
	ds_load_u8 v248, v172 offset:1360
	ds_load_u8 v220, v172 offset:1376
	ds_load_u8 v171, v172 offset:1392
	ds_load_u8 v221, v172 offset:1328
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v172 offset:704
	ds_load_u8 v39, v172 offset:640
	ds_load_u8 v246, v172 offset:720
	ds_load_u8 v247, v172 offset:656
	ds_load_u8 v227, v172 offset:736
	ds_load_u8 v228, v172 offset:672
	ds_load_u8 v219, v172 offset:752
	ds_load_u8 v166, v172 offset:688
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v36, v172 offset:1408
	ds_load_u8 v37, v172 offset:1472
	ds_load_u8 v249, v172 offset:1488
	ds_load_u8 v232, v172 offset:1504
	ds_load_u8 v18, v172 offset:1520
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	ds_load_u8 v37, v172 offset:1024
	ds_load_u8 v38, v172 offset:1088
	ds_load_u8 v251, v172 offset:1104
	ds_load_u8 v225, v172 offset:1120
	ds_load_u8 v234, v172 offset:1136
	ds_load_u8 v226, v172 offset:1072
	v_lshl_or_b32 v43, v36, 16, v35
	ds_load_u8 v35, v172 offset:1856
	ds_load_u8 v36, v172 offset:1792
	ds_load_u8 v103, v172 offset:1776
	ds_load_u8 v253, v172 offset:1872
	ds_load_u8 v104, v172 offset:1888
	ds_load_u8 v105, v172 offset:1904
	ds_load_u8 v106, v172 offset:1840
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v172 offset:1152
	ds_load_u8 v39, v172 offset:1216
	ds_load_u8 v252, v172 offset:1232
	ds_load_u8 v216, v172 offset:1248
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v38, 16, v37
	ds_load_u8 v36, v172 offset:1920
	ds_load_u8 v37, v172 offset:1984
	ds_load_u8 v254, v172 offset:2000
	ds_load_u8 v229, v172 offset:2016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	ds_load_u8 v37, v172 offset:1536
	ds_load_u8 v38, v172 offset:1600
	v_lshl_or_b32 v45, v36, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v172 offset:1664
	ds_load_u8 v39, v172 offset:1728
	ds_load_u8 v235, v172 offset:1744
	ds_load_u8 v238, v172 offset:1760
	ds_load_u8 v152, v172 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[32:39], v[186:187], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[67:68], v[40:41], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[69:70], v[42:43], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[63:64], v[44:45], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v32
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v32, v208, v10
	ds_bpermute_b32 v10, v126, v10
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v35
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v35, v208, v11
	ds_bpermute_b32 v11, v126, v11
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v163, v37
	v_cvt_f32_i32_e32 v28, v34
	v_cvt_f32_i32_e32 v34, v38
	v_cvt_f32_i32_e32 v30, v39
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v76, v10, v32, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v65, v11, v35, s4
	v_cndmask_b32_e64 v71, v35, v11, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[173:180], v[75:76], v[16:17], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v16, v52, v53, 0xc0c0004
	ds_load_u8 v37, v172 offset:1168
	ds_load_u8 v53, v172 offset:1184
	s_waitcnt vmcnt(0)
	ds_load_u8 v230, v27
	scratch_load_b32 v27, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v198, v27
	ds_load_u8 v199, v172 offset:1968
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v33
	v_cvt_f32_i32_e32 v33, v36
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v36, v208, v12
	ds_bpermute_b32 v12, v126, v12
	v_mov_b32_e32 v126, v206
	v_mov_b32_e32 v206, v78
	v_cndmask_b32_e64 v78, v32, v10, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v17, v58, v57, 0xc0c0004
	v_perm_b32 v32, v190, v189, 0xc0c0004
	v_perm_b32 v35, v247, v246, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v37, v252, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v66, v12, v36, s4
	v_cndmask_b32_e64 v72, v36, v12, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v36, v172 offset:1040
	ds_load_u8 v52, v172 offset:1056
	v_wmma_i32_16x16x16_iu4 v[173:180], v[65:66], v[40:41], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[77:78], v[42:43], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[71:72], v[44:45], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v178
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v36, v251, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v175
	v_cvt_f32_i32_e32 v222, v176
	v_cvt_f32_i32_e32 v12, v177
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v179
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v43, v37, 16, v36
	ds_load_u8 v36, v172 offset:1552
	ds_load_u8 v165, v172 offset:1568
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v173
	v_cvt_f32_i32_e32 v10, v174
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v180
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v0, v15, v14, 0xc0c0004
	v_perm_b32 v14, v49, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v14, 16, v0
	v_lshl_or_b32 v14, v17, 16, v16
	v_perm_b32 v0, v182, v181, 0xc0c0004
	v_perm_b32 v16, v185, v183, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v36, v111, 0xc0c0004
	ds_load_u8 v37, v172 offset:1680
	ds_load_u8 v111, v172 offset:1696
	v_wmma_i32_16x16x16_iu4 v[175:182], v[186:187], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v16, 16, v0
	v_lshl_or_b32 v16, v35, 16, v32
	ds_load_u8 v0, v172 offset:1296
	ds_load_u8 v32, v172 offset:1312
	ds_load_u8 v35, v172 offset:1424
	ds_load_u8 v49, v172 offset:1440
	v_wmma_i32_16x16x16_iu4 v[175:182], v[67:68], v[16:17], v[175:182] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v37, v235, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v0, v248, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v35, v249, 0xc0c0004
	v_lshl_or_b32 v45, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v35, 16, v0
	ds_load_u8 v0, v172 offset:1808
	ds_load_u8 v57, v172 offset:1824
	ds_load_u8 v35, v172 offset:1936
	ds_load_u8 v58, v172 offset:1952
	v_wmma_i32_16x16x16_iu4 v[175:182], v[69:70], v[43:44], v[175:182] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v0, v253, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v35, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v46, v35, 16, v0
	v_wmma_i32_16x16x16_iu4 v[35:42], v[75:76], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v0, v48, v47, 0xc0c0004
	v_perm_b32 v14, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[175:182], v[63:64], v[45:46], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[35:42], v[65:66], v[16:17], v[35:42] neg_lo:[1,1,0]
	v_perm_b32 v16, v55, v56, 0xc0c0004
	v_perm_b32 v17, v191, v184, 0xc0c0004
	v_lshl_or_b32 v15, v14, 16, v0
	v_perm_b32 v0, v188, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[35:42], v[77:78], v[43:44], v[35:42] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v173, v176
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v14, v17, 16, v16
	v_perm_b32 v16, v213, v13, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v190, v177
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[71:72], v[45:46], v[35:42] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v183, v180
	v_cvt_f32_i32_e32 v189, v178
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v17, v16, 16, v0
	v_perm_b32 v0, v32, v220, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v251, v35
	v_cvt_f32_i32_e32 v254, v36
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v35, v195, v241, 0xc0c0004
	v_perm_b32 v36, v228, v227, 0xc0c0004
	v_perm_b32 v32, v49, v232, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v246, v40
	v_cvt_f32_i32_e32 v247, v41
	v_cvt_f32_i32_e32 v248, v42
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v16, v36, 16, v35
	v_perm_b32 v35, v52, v225, 0xc0c0004
	v_perm_b32 v36, v53, v216, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v253, v37
	v_cvt_f32_i32_e32 v252, v38
	v_cvt_f32_i32_e32 v249, v39
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v56, v32, 16, v0
	v_lshl_or_b32 v55, v36, 16, v35
	v_perm_b32 v35, v165, v236, 0xc0c0004
	v_perm_b32 v36, v111, v238, 0xc0c0004
	v_perm_b32 v0, v57, v104, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v58, v229, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[46:53], v[75:76], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v57, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[35:42], v[186:187], v[14:15], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v58, v32, 16, v0
	v_wmma_i32_16x16x16_iu4 v[46:53], v[65:66], v[16:17], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v196
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[35:42], v[67:68], v[16:17], v[35:42] neg_lo:[1,1,0]
	v_mov_b32_e32 v213, v25
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v185, v179
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[77:78], v[55:56], v[46:53] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v179, v182
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[69:70], v[55:56], v[35:42] neg_lo:[1,1,0]
	v_dual_mov_b32 v196, v131 :: v_dual_mov_b32 v131, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[71:72], v[57:58], v[46:53] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[63:64], v[57:58], v[35:42] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v44, v36
	v_cvt_f32_i32_e32 v43, v37
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v39, v60, v59, 0xc0c0004
	v_perm_b32 v40, v62, v61, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v45, v35
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v191, v42
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v41, v84, v83, 0xc0c0004
	v_lshl_or_b32 v48, v40, 16, v39
	v_perm_b32 v39, v215, v20, 0xc0c0004
	v_perm_b32 v40, v166, v219, 0xc0c0004
	v_perm_b32 v42, v21, v22, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v14, v46
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v49, v40, 16, v39
	v_perm_b32 v40, v212, v18, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v18, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v47, v42, 16, v41
	v_perm_b32 v41, v224, v164, 0xc0c0004
	v_perm_b32 v42, v214, v230, 0xc0c0004
	v_perm_b32 v39, v221, v171, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v32, v51
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[55:62], v[186:187], v[47:48], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v50, v42, 16, v41
	v_perm_b32 v41, v226, v234, 0xc0c0004
	v_perm_b32 v42, v161, v211, 0xc0c0004
	v_lshl_or_b32 v177, v40, 16, v39
	v_perm_b32 v39, v231, v154, 0xc0c0004
	v_perm_b32 v40, v152, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[67:68], v[49:50], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v42, 16, v41
	v_perm_b32 v41, v106, v105, 0xc0c0004
	v_perm_b32 v42, v199, v198, 0xc0c0004
	v_lshl_or_b32 v83, v40, 16, v39
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v165, v52
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[55:62], v[69:70], v[176:177], v[55:62] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v53
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v84, v42, 16, v41
	v_dual_mov_b32 v70, v201 :: v_dual_mov_b32 v69, v200
	v_mov_b32_e32 v200, v132
	v_dual_mov_b32 v68, v135 :: v_dual_mov_b32 v67, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[63:64], v[83:84], v[55:62] neg_lo:[1,1,0]
	v_dual_mov_b32 v63, v119 :: v_dual_mov_b32 v64, v120
	v_dual_mov_b32 v119, v202 :: v_dual_mov_b32 v120, v203
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v42, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v40, v57
	v_cvt_f32_i32_e32 v39, v58
	v_cvt_f32_i32_e32 v53, v59
	v_cvt_f32_i32_e32 v52, v60
	v_cvt_f32_i32_e32 v51, v61
	v_cvt_f32_i32_e32 v46, v62
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[55:62], v[75:76], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v75, v205 :: v_dual_mov_b32 v76, v146
	v_mov_b32_e32 v205, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[65:66], v[49:50], v[55:62] neg_lo:[1,1,0]
	v_mov_b32_e32 v65, v121
	v_dual_mov_b32 v161, v167 :: v_dual_mov_b32 v198, v170
	v_mov_b32_e32 v135, v158
	v_wmma_i32_16x16x16_iu4 v[55:62], v[77:78], v[176:177], v[55:62] neg_lo:[1,1,0]
	v_mov_b32_e32 v77, v150
	v_dual_mov_b32 v78, v206 :: v_dual_mov_b32 v121, v204
	v_mov_b32_e32 v206, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[71:72], v[83:84], v[55:62] neg_lo:[1,1,0]
	v_mov_b32_e32 v83, v23
	scratch_load_b32 v23, off, off offset:360 ; 4-byte Folded Reload
	v_dual_mov_b32 v84, v209 :: v_dual_mov_b32 v209, v24
	v_mov_b32_e32 v72, v137
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v180, v55
	v_cvt_f32_i32_e32 v174, v60
	v_cvt_f32_i32_e32 v176, v61
	v_cvt_f32_i32_e32 v178, v59
	v_cvt_f32_i32_e32 v177, v62
	v_cvt_f32_i32_e32 v186, v56
	v_cvt_f32_i32_e32 v184, v57
	v_cvt_f32_i32_e32 v182, v58
	v_dual_mov_b32 v212, v169 :: v_dual_mov_b32 v211, v19
	v_dual_mov_b32 v66, v133 :: v_dual_mov_b32 v133, v156
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s8, v18, 1
	scratch_load_b32 v18, off, off offset:348 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v55, v23, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s8, v18, 1
	scratch_load_b32 v18, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v49, s8, v18, 1
	scratch_load_b32 v18, off, off offset:356 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s8, v18, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v55, v55, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v47, v47, s[36:39], 0 offen
	buffer_load_u16 v59, v48, s[36:39], 0 offen
	buffer_load_u16 v60, v49, s[36:39], 0 offen
	buffer_load_u16 v61, v50, s[36:39], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v24, off, off offset:464 ; 4-byte Folded Reload
	v_dual_mov_b32 v71, v136 :: v_dual_mov_b32 v136, v159
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v48, 16, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v187, 16, v47
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:296
	scratch_load_b32 v103, off, off offset:468
	v_mov_b32_e32 v159, v162
	v_mov_b32_e32 v162, v122
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v14, v60
	v_mul_f32_e32 v0, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v62, v187, v18
	scratch_load_b32 v18, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[47:50], v103
	ds_load_b128 v[55:58], v103 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_fmac_f32 v123, v62, v47 :: v_dual_mul_f32 v62, v187, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v62, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v187, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v187, v18
	scratch_load_b32 v18, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v237, v62, v49 :: v_dual_mul_f32 v62, v187, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v62, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v59, v18
	scratch_load_b32 v18, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v99, v62, v47 :: v_dual_mul_f32 v62, v59, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v62, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v59, v18
	scratch_load_b32 v18, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v62, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v59, v18
	scratch_load_b32 v18, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v62, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v60, v18
	scratch_load_b32 v18, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v75, v62, v47 :: v_dual_mul_f32 v62, v60, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v62, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v60, v18
	scratch_load_b32 v18, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v62, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v60, v18
	scratch_load_b32 v18, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v62, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v61, v18
	scratch_load_b32 v18, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v62, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v61, v18
	scratch_load_b32 v18, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v88, v47, v48 :: v_dual_mul_f32 v47, v61, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v90, v47, v49 :: v_dual_mul_f32 v47, v61, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v47, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v187, v18
	scratch_load_b32 v18, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v115, v47, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v187, v18
	scratch_load_b32 v18, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v47, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v187, v18
	scratch_load_b32 v18, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v47, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v187, v18
	scratch_load_b32 v18, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v47, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v59, v18
	scratch_load_b32 v18, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v47, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v59, v18
	scratch_load_b32 v18, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v47, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v59, v18
	scratch_load_b32 v18, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v47, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v59, v18
	scratch_load_b32 v18, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v47, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v60, v18
	scratch_load_b32 v18, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v47, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v60, v18
	scratch_load_b32 v18, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v118, v47, v56 :: v_dual_mul_f32 v47, v60, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v47, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v60, v18
	scratch_load_b32 v18, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v47, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v61, v18
	scratch_load_b32 v18, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v47, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v61, v18
	scratch_load_b32 v18, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v68, v47, v56 :: v_dual_mul_f32 v47, v61, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v47, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v61, v18
	scratch_load_b32 v18, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v47, v58
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[47:50], v103 offset:512
	ds_load_b128 v[55:58], v103 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v18, v187
	scratch_load_b32 v18, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_fmac_f32 v255, v62, v47 :: v_dual_mul_f32 v62, v187, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v107, v62, v48 :: v_dual_mul_f32 v62, v187, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v62, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v187, v18
	scratch_load_b32 v18, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v62, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v18, v59
	scratch_load_b32 v18, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v197, v62, v47 :: v_dual_mul_f32 v62, v59, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v83, v62, v48 :: v_dual_mul_f32 v62, v59, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v62, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v59, v18
	scratch_load_b32 v18, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v62, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v18, v60
	scratch_load_b32 v18, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v217, v62, v47 :: v_dual_mul_f32 v62, v60, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v62, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v60, v18
	scratch_load_b32 v18, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v81, v62, v49 :: v_dual_mul_f32 v62, v60, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v111, v62, v50 :: v_dual_mov_b32 v62, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v61
	scratch_load_b32 v18, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v243, v22, v47 :: v_dual_mul_f32 v22, v61, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v63, v22, v48 :: v_dual_mul_f32 v22, v61, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v18, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v22, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v61, v18
	scratch_load_b32 v18, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v22, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v187, v18
	scratch_load_b32 v18, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v110, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v187
	scratch_load_b32 v18, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v250, v22, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v187
	scratch_load_b32 v18, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v245, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v187
	scratch_load_b32 v18, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v22, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v59, v18
	scratch_load_b32 v18, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v59
	scratch_load_b32 v18, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v22, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v59
	scratch_load_b32 v18, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v59
	scratch_load_b32 v18, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v22, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v60, v18
	scratch_load_b32 v18, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v60
	scratch_load_b32 v18, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v22, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v60
	scratch_load_b32 v18, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v18, v60
	scratch_load_b32 v18, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v22, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v61, v18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v204, off, off
	scratch_load_b32 v18, off, off offset:208
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v26, v21, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v55, v26 :: v_dual_mul_f32 v26, v187, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v18, v61
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v20, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off offset:20
	scratch_load_b32 v195, off, off offset:16
	scratch_load_b32 v18, off, off offset:204
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v18, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v242, v19, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v57, off, off offset:56
	scratch_load_b32 v199, off, off offset:48
	scratch_load_b32 v18, off, off offset:192
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v155, v18, v58 :: v_dual_add_nc_u32 v18, s33, v23
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v58, off, off offset:44
	scratch_load_b32 v126, off, off offset:28
	scratch_load_b32 v145, off, off offset:24
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v18, v18, s7, 1
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v54, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v24, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v103
	ds_load_b128 v[22:25], v103 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v240, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v26, v187, v27 :: v_dual_mul_f32 v27, v177, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v26, v19 :: v_dual_mul_f32 v26, v187, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v28, v61, v178 :: v_dual_fmac_f32 v151, v26, v20
	v_mul_f32_e32 v26, v187, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v239, v26, v21 :: v_dual_mul_f32 v26, v59, v175
	v_fmac_f32_e32 v138, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v59, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v223, v26, v19 :: v_dual_mul_f32 v26, v59, v190
	v_fmac_f32_e32 v136, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v59, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v26, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v60, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v127, v26, v18 :: v_dual_mul_f32 v26, v60, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v204, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v60, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v60, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v125, v26, v21 :: v_dual_mul_f32 v26, v61, v42
	v_fmac_f32_e32 v98, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v41
	v_mul_f32_e32 v26, v9, v187
	scratch_load_b32 v9, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v18, v19 :: v_dual_mul_f32 v18, v61, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v18, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v18, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v187, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v147, v18, v22 :: v_dual_mul_f32 v18, v187, v163
	v_dual_fmac_f32 v233, v18, v23 :: v_dual_mul_f32 v18, v187, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v187, v30
	scratch_load_b64 v[30:31], off, off offset:328 ; 8-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v18, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v59, v185
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v218, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v59, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v133, v18, v23 :: v_dual_mul_f32 v18, v59, v181
	v_dual_fmac_f32 v199, v18, v24 :: v_dual_mul_f32 v18, v59, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v195, v18, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v60, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v60, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v18, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v60, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v119, v18, v24 :: v_dual_mul_f32 v18, v60, v191
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v120, v18, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v53
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v80, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v52
	scratch_load_b32 v52, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v79, v18, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v51
	scratch_load_b32 v51, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v61, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v18, v25
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[18:21], v103 offset:512
	ds_load_b128 v[22:25], v103 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v161, v14, v18 :: v_dual_mul_f32 v14, v60, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v59, v249
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v206, v0, v25
	v_dual_fmac_f32 v56, v28, v22 :: v_dual_fmac_f32 v131, v27, v25
	v_fmac_f32_e32 v114, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v60, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v16, v248, v59 :: v_dual_fmac_f32 v113, v14, v20
	v_mul_f32_e32 v14, v60, v15
	v_mul_f32_e32 v15, v247, v59
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v112, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v14, v180, v61 :: v_dual_fmac_f32 v213, v15, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v205, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v61, v186
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v66, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v61, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v58, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v61, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v57, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v246, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v14, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v9, v9, v187
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v212, v9, v23 :: v_dual_fmac_f32 v51, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v187, v10
	scratch_load_b32 v10, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v187, v11
	scratch_load_b32 v11, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v187, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v139, v26, v21 :: v_dual_mul_f32 v26, v251, v59
	v_fmac_f32_e32 v52, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v59, v254
	v_mul_f32_e32 v18, v32, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v26, v59, v253 :: v_dual_mul_f32 v19, v165, v60
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v59, v252
	scratch_load_b32 v59, off, off offset:4 ; 4-byte Folded Reload
	v_mul_f32_e32 v20, v60, v13
	scratch_load_b32 v60, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v54, v19, v24
	v_fmac_f32_e32 v128, v26, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v174, v61
	v_mul_f32_e32 v26, v176, v61
	scratch_load_b32 v61, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v53, v18, v23
	v_fmac_f32_e32 v244, v21, v23
	v_fmac_f32_e32 v200, v26, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v10, v10, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v211, v10, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v11, v11, v187
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v210, v11, v25 :: v_dual_fmac_f32 v59, v17, v22
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v60, v12, v22
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v61, v20, v22
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v103, off, off offset:472
	scratch_load_b32 v104, off, off offset:476
	scratch_load_b32 v105, off, off offset:480
	scratch_load_b32 v106, off, off offset:484
	scratch_load_b32 v4, off, off offset:488
	v_mov_b32_e32 v3, v30
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v240
	v_mul_f32_e32 v29, 0xbfb8aa3b, v233
	v_mul_f32_e32 v31, 0xbfb8aa3b, v139
	v_dual_mul_f32 v19, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v211
	v_mul_f32_e32 v28, 0xbfb8aa3b, v96
	v_mul_f32_e32 v166, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_mul_f32_e32 v22, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v14, v7
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, 0xbfb8aa3b, v239 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_ldexp_f32 v10, v14, v10
	v_mul_f32_e32 v14, 0xbfb8aa3b, v52
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_mul_f32_e32 v7, 0xbfb8aa3b, v147
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_mul_f32_e32 v14, 0xbfb8aa3b, v213
	v_ldexp_f32 v11, v11, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v151
	v_mul_f32_e32 v8, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_ldexp_f32 v0, v1, v0
	v_ldexp_f32 v12, v13, v12
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_mul_f32_e32 v15, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v25, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v192, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v213
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v189, 0xbfb8aa3b, v223
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v207
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v177, 0xbfb8aa3b, v204
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_ldexp_f32 v15, v16, v15
	v_exp_f32_e32 v18, v18
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_dual_mul_f32 v191, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v135
	v_dual_mul_f32 v187, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v138
	v_ldexp_f32 v13, v13, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v161
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v14, v14, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v53
	v_ldexp_f32 v16, v18, v17
	v_mul_f32_e32 v18, 0xbfb8aa3b, v54
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v206
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v13, v13, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v53
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v54
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_dual_mul_f32 v183, 0xbfb8aa3b, v195 :: v_dual_mul_f32 v186, 0xbfb8aa3b, v218
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_dual_mul_f32 v184, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v133
	v_dual_mul_f32 v181, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v182, 0xbfb8aa3b, v130
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v205
	v_dual_mul_f32 v179, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v180, 0xbfb8aa3b, v128
	v_ldexp_f32 v18, v18, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v244
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v19, v20, v19
	v_ldexp_f32 v20, v23, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_mul_f32_e32 v21, 0xbfb8aa3b, v200
	v_mul_f32_e32 v23, 0xbfb8aa3b, v131
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_mul_f32_e32 v26, 0xbfb8aa3b, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v244
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v205
	v_exp_f32_e32 v33, v33
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v200
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v10, v10, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v37, v21
	v_exp_f32_e32 v38, v23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	v_ldexp_f32 v32, v33, v32
	v_mul_f32_e32 v21, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v51, v10, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v23, 0xbfb8aa3b, v66 :: v_dual_add_f32 v12, 1.0, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v33, v37, v34
	v_ldexp_f32 v34, v38, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v36, v40, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v0, v0, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, v11, v11, v211
	v_rcp_f32_e32 v35, v37
	v_div_scale_f32 v47, s1, v211, v11, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v37, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v38, v42, 1.0
	v_mul_f32_e32 v43, v41, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_div_scale_f32 v44, s0, v212, v0, v212
	v_fmac_f32_e32 v42, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v36, v43, v41
	v_div_scale_f32 v46, null, v12, v12, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v175, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v176, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v45, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v173, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v126
	v_dual_mul_f32 v171, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v36, v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v169, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v114
	v_dual_mul_f32 v167, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v40, v43
	v_fma_f32 v43, -v46, v48, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v50
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v10, v36, v10, v51
	v_dual_fmac_f32 v48, v43, v48 :: v_dual_mul_f32 v45, v44, v35
	v_mul_f32_e32 v49, v47, v42
	v_div_scale_f32 v43, s0, v52, v13, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v164, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v37, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v163, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v57
	v_dual_mul_f32 v24, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v41, v35
	v_fma_f32 v41, -v38, v49, v47
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s21, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v37, v45, v44
	v_fmac_f32_e32 v49, v41, v42
	v_div_scale_f32 v37, s3, v210, v12, v210
	v_fma_f32 v41, -v50, v40, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v36, v35, v45
	v_fma_f32 v36, -v38, v49, v47
	v_mul_f32_e32 v38, v37, v48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v14, v14, v209
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v44, -v46, v38, v37
	v_div_fmas_f32 v36, v36, v42, v49
	v_rcp_f32_e32 v42, v41
	v_mul_f32_e32 v45, v43, v40
	v_div_scale_f32 v47, null, v15, v15, v213
	v_fmac_f32_e32 v38, v44, v48
	v_div_fixup_f32 v0, v35, v0, v212
	v_div_fixup_f32 v11, v36, v11, v211
	v_fma_f32 v35, -v50, v45, v43
	v_rcp_f32_e32 v36, v47
	v_fma_f32 v37, -v46, v38, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v41, v42, 1.0
	v_div_scale_f32 v46, null, v16, v16, v207
	v_fmac_f32_e32 v45, v35, v40
	v_div_scale_f32 v35, s1, v209, v14, v209
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v46
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v49, -v47, v36, 1.0
	v_div_fmas_f32 v37, v37, v48, v38
	v_fma_f32 v38, -v50, v45, v43
	v_mul_f32_e32 v43, v35, v42
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v36, v49, v36
	v_div_scale_f32 v48, s3, v213, v15, v213
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v44, 1.0
	v_div_scale_f32 v50, null, v17, v17, v161
	v_div_fmas_f32 v38, v38, v40, v45
	v_fma_f32 v40, -v41, v43, v35
	v_mul_f32_e32 v45, v48, v36
	v_fmac_f32_e32 v44, v49, v44
	v_rcp_f32_e32 v49, v50
	v_div_scale_f32 v51, s0, v207, v16, v207
	v_fmac_f32_e32 v43, v40, v42
	v_div_scale_f32 v40, null, v18, v18, v53
	v_div_fixup_f32 v12, v37, v12, v210
	v_div_fixup_f32 v13, v38, v13, v52
	v_fma_f32 v37, -v47, v45, v48
	v_mul_f32_e32 v38, v51, v44
	v_fma_f32 v35, -v41, v43, v35
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v52, -v50, v49, 1.0
	v_fmac_f32_e32 v45, v37, v36
	v_fma_f32 v37, -v46, v38, v51
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s15, 0x31027000
	v_fmac_f32_e32 v49, v52, v49
	v_div_fmas_f32 v35, v35, v42, v43
	v_fma_f32 v42, -v47, v45, v48
	v_fmac_f32_e32 v38, v37, v44
	v_fma_f32 v43, -v40, v41, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, s4, v161, v17, v161
	v_div_fmas_f32 v36, v42, v36, v45
	v_fma_f32 v42, -v46, v38, v51
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, null, v19, v19, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v46, s1, v53, v18, v53
	v_div_fmas_f32 v38, v42, v44, v38
	v_rcp_f32_e32 v42, v43
	v_mul_f32_e32 v37, v52, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v46, v41
	v_div_fixup_f32 v14, v35, v14, v209
	v_div_fixup_f32 v35, v36, v15, v213
	v_div_fixup_f32 v36, v38, v16, v207
	v_fma_f32 v45, -v50, v37, v52
	v_div_scale_f32 v38, null, v20, v20, v206
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v16, -v40, v44, v46
	v_fmac_f32_e32 v37, v45, v49
	v_fma_f32 v45, -v43, v42, 1.0
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v16, v41
	v_fma_f32 v15, -v50, v37, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v16, s0, v54, v19, v54
	v_div_scale_f32 v45, null, v39, v39, v205
	v_div_fmas_f32 v15, v15, v49, v37
	v_rcp_f32_e32 v37, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v47, v15, v17, v161
	v_fma_f32 v15, -v40, v44, v46
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v40, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v41, v44
	v_div_scale_f32 v44, s1, v206, v20, v206
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v40, v37
	v_div_fixup_f32 v49, v15, v18, v53
	v_div_scale_f32 v40, null, v32, v32, v244
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v45, v46, 1.0
	v_mul_f32_e32 v18, v44, v37
	v_mul_f32_e32 v17, v16, v42
	v_div_scale_f32 v53, null, v34, v34, v131
	v_rcp_f32_e32 v15, v40
	v_fmac_f32_e32 v46, v48, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v43, v17, v16
	v_div_scale_f32 v48, null, v33, v33, v200
	v_fmac_f32_e32 v17, v41, v42
	v_div_scale_f32 v41, s3, v205, v39, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v52, v48
	v_fma_f32 v51, -v40, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v43, v17, v16
	v_fma_f32 v43, -v38, v18, v44
	v_mul_f32_e32 v50, v41, v46
	v_div_fmas_f32 v16, v16, v42, v17
	v_rcp_f32_e32 v42, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v43, v37
	v_fma_f32 v17, -v45, v50, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v54, v16, v19, v54
	v_div_scale_f32 v19, s4, v200, v33, v200
	v_fma_f32 v16, -v38, v18, v44
	v_fmac_f32_e32 v50, v17, v46
	v_div_scale_f32 v43, s0, v244, v32, v244
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v53, v42, 1.0
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v38, s1, v131, v34, v131
	v_fmac_f32_e32 v15, v51, v15
	v_fma_f32 v51, -v48, v52, 1.0
	v_div_fmas_f32 v16, v16, v37, v18
	v_fma_f32 v18, -v45, v50, v41
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v51, v52
	v_div_fixup_f32 v44, v16, v20, v206
	v_mul_f32_e32 v20, v38, v42
	v_div_fmas_f32 v18, v18, v46, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v19, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v48, v41, v19
	v_fmac_f32_e32 v41, v16, v52
	v_fma_f32 v16, -v53, v20, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v17, v43, v15 :: v_dual_fmac_f32 v20, v16, v42
	v_fma_f32 v37, -v40, v17, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v53, v20, v38
	v_fmac_f32_e32 v17, v37, v15
	v_div_fixup_f32 v37, v18, v39, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v9, -v40, v17, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v240
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v15, v17
	v_fma_f32 v15, -v48, v41, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v250, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v9, v32, v244
	v_div_fmas_f32 v15, v15, v52, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v16, v42, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v15, v33, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_ldexp_f32 v6, v17, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v255, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v198, v12 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v153
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v8, v34, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v239
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v6, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v197, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v193, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v0, v0, v240
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v217, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v185
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v240, v0, v240
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v196, v14 :: v_dual_mul_f32 v14, v194, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v159, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v245, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v153
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v36
	v_div_scale_f32 v45, null, v40, v40, v239
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v38, v39, 1.0
	v_rcp_f32_e32 v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v8, v39
	v_fma_f32 v48, -v36, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v8, v243, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v153, v35, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v48, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v157, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v43, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v242, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v46, v41, v39 :: v_dual_mul_f32 v9, v160, v54
	v_fma_f32 v43, -v45, v44, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v38, v46, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v162, v49 :: v_dual_fmac_f32 v44, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v32, v32, v151
	v_fmac_f32_e32 v46, v47, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v38, v46, v41
	v_div_scale_f32 v41, s1, v239, v40, v239
	v_div_fmas_f32 v33, v33, v39, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v0, v33, v0, v240
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v123, v123, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v36, v38, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v36, v38, v37
	v_div_scale_f32 v37, s3, v151, v32, v151
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v155, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v34, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v47, v41, v44 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v45, v47, v41
	v_fmac_f32_e32 v47, v33, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v36, v36, v42, v38
	v_mul_f32_e32 v38, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_exp_f32_e32 v25, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v45, v47, v41
	v_fma_f32 v29, -v43, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v34, v34, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v38, v29, v39 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v144
	v_div_fixup_f32 v29, v36, v35, v153
	v_div_fmas_f32 v41, v41, v44, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v43, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, s0, v147, v34, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v22, v36, v32, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v41, v40, v239
	v_fma_f32 v41, -v46, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v237, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v35, v35, v233
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v42
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v40
	v_fma_f32 v42, -v40, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v33, v41, v33 :: v_dual_fmac_f32 v38, v42, v38
	v_div_scale_f32 v42, s1, v233, v35, v233
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v145
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v36, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v41, v39, v33 :: v_dual_add_f32 v0, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v46, v41, v39
	v_div_scale_f32 v36, null, v0, v0, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v43, v33
	v_mul_f32_e32 v43, v42, v38
	v_fma_f32 v39, -v46, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v40, v43, v42
	v_div_fmas_f32 v33, v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v46, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v36
	v_div_fixup_f32 v33, v33, v34, v147
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, -v40, v43, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v37, v37, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v38, v43
	v_fma_f32 v46, -v36, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v35, v233
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s1, v145, v0, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v44, v45, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v41, v40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v38, v42, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s0, v144, v37, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v149, v25 :: v_dual_add_f32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v32, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v38, v38, v140
	v_fma_f32 v35, -v44, v43, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v35, v45
	v_mul_f32_e32 v35, v46, v39
	v_fma_f32 v32, -v44, v43, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v35, v46
	v_div_fmas_f32 v30, v32, v45, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v42, null, v44, v44, v141
	v_fmac_f32_e32 v35, v31, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v41
	v_cndmask_b32_e64 v43, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v42
	v_rcp_f32_e32 v45, v47
	v_fma_f32 v32, -v36, v35, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v39, v35
	v_div_scale_f32 v35, vcc_lo, v141, v44, v141
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v47, v45, 1.0
	v_div_fixup_f32 v0, v32, v0, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v46, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v148, v29 :: v_dual_add_f32 v40, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v39, s0, v140, v38, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v35, v41
	v_div_fixup_f32 v31, v30, v37, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v143, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v40, v40, v139
	v_fma_f32 v0, -v42, v43, v35
	v_mul_f32_e32 v37, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v46
	v_div_scale_f32 v36, s1, v139, v40, v139
	v_fmac_f32_e32 v43, v0, v41
	v_fma_f32 v0, -v47, v37, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v43, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v0, v45
	v_fma_f32 v0, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v34, null, v32, v32, v60
	v_div_fmas_f32 v33, v33, v41, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v47, v37, v39
	v_fmac_f32_e32 v48, v0, v48
	v_rcp_f32_e32 v0, v34
	v_div_fixup_f32 v33, v33, v44, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v44, s0, v60, v32, v60
	v_div_fmas_f32 v35, v35, v45, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v138
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v34, v0, 1.0
	v_mul_f32_e32 v37, v36, v48
	v_div_fixup_f32 v35, v35, v38, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v41
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v42, v0
	v_fma_f32 v41, -v46, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v108, v108, v35 :: v_dual_fmac_f32 v37, v41, v48
	v_mul_f32_e32 v107, v107, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v44, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v34, v39, v44
	v_fma_f32 v36, -v46, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v38, v38, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v43, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v47, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v46
	v_div_fmas_f32 v36, v36, v48, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v34, v39, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v36, v40, v139
	v_div_scale_f32 v44, null, v37, v37, v223
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v45, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v46, v43, 1.0
	v_div_fmas_f32 v0, v34, v0, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v42, v43
	v_div_scale_f32 v42, vcc_lo, v138, v38, v138
	v_div_fixup_f32 v0, v0, v32, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v32, null, v41, v41, v135
	v_mul_f32_e32 v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v44, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v34, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v47, -v46, v40, v42
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s0, v223, v37, v223
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v40, v47, v43 :: v_dual_mul_f32 v109, v109, v36
	v_mul_f32_e32 v35, v45, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v32, v34, 1.0
	v_div_scale_f32 v47, null, v0, v0, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v46, v40, v42
	v_fma_f32 v42, -v44, v35, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v36, v34
	v_rcp_f32_e32 v36, v47
	v_div_scale_f32 v46, s1, v135, v41, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v42, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v43, v40
	v_mul_f32_e32 v43, v46, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v218
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v47, v36, 1.0
	v_div_fixup_f32 v33, v33, v38, v138
	v_fma_f32 v38, -v44, v35, v45
	v_fma_f32 v44, -v32, v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v48, v36
	v_div_scale_f32 v45, s3, v136, v0, v136
	v_div_fmas_f32 v35, v38, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v38, v45, v36 :: v_dual_fmac_f32 v43, v44, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v142, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v42, v40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v47, v38, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v32, v43, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v38, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v40, v40, v218
	v_div_fmas_f32 v32, v32, v34, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v49
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v47, v38, v45
	v_div_fixup_f32 v35, v35, v37, v223
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v44, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v34, v34, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v45, v36, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v46, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v36, v0, v136
	v_div_scale_f32 v42, null, v38, v38, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v39, v43
	v_div_scale_f32 v39, vcc_lo, v218, v40, v218
	v_div_scale_f32 v48, null, v34, v34, v199
	v_rcp_f32_e32 v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v39, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v102, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v46, v49, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v49, v37, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v48, v36, 1.0
	v_fma_f32 v35, -v46, v49, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, s1, v199, v34, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v43, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v37, v36
	v_div_fixup_f32 v32, v32, v41, v135
	v_fma_f32 v41, -v42, v45, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v35, v40, v218
	v_fma_f32 v35, -v48, v46, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v32, s0, v133, v38, v133
	v_div_scale_f32 v41, null, v0, v0, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v32, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v35, v36
	v_fma_f32 v44, -v42, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v91, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v48, v46, v37
	v_fmac_f32_e32 v39, v44, v45
	v_div_scale_f32 v44, s3, v195, v0, v195
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v43, 1.0
	v_fma_f32 v32, -v42, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v35, v35, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v45, v39
	v_mul_f32_e32 v39, v44, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v38, v133
	v_fma_f32 v45, -v41, v39, v44
	v_div_scale_f32 v49, null, v35, v35, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v45, v43
	v_div_fmas_f32 v36, v37, v36, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v34, v36, v34, v199
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v41, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v92, v32 :: v_dual_mul_f32 v93, v93, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v37, v37, v129
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_fmas_f32 v36, v36, v43, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s0, v130, v35, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v36, v0, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v42, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v41, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v49, v44, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s1, v129, v37, v129
	v_div_scale_f32 v46, null, v0, v0, v128
	v_fmac_f32_e32 v44, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v45, v39
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v32, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v43, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v49, v44, v42
	v_fma_f32 v42, -v41, v38, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v40, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v46, v32, 1.0
	v_div_scale_f32 v40, null, v33, v33, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v35, v130
	v_fma_f32 v35, -v41, v38, v45
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s0, v128, v0, v128
	v_rcp_f32_e32 v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v44, v36, v32
	v_div_fmas_f32 v35, v35, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	v_exp_f32_e32 v43, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v40, v41, 1.0
	v_div_fixup_f32 v35, v35, v37, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v204
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v46, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s1, v59, v33, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v37, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v125
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v46, v44, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v40, v42, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v38, v39, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, null, v37, v37, v127
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v39
	v_div_fmas_f32 v32, v36, v32, v44
	v_fma_f32 v36, -v40, v42, v45
	v_div_scale_f32 v48, null, v38, v38, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v32, v0, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v45, v48
	v_div_fmas_f32 v36, v36, v41, v42
	v_fma_f32 v49, -v39, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, vcc_lo, v127, v37, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v49, v47
	v_div_fixup_f32 v33, v36, v33, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v48, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_mul_f32 v44, v42, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v43, s0, v204, v38, v204
	v_fma_f32 v32, -v39, v44, v42
	v_div_scale_f32 v46, null, v41, v41, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v43, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v85, v85, v0 :: v_dual_fmac_f32 v44, v32, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v48, v33, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v83, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v39, v44, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v33, v32, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, s1, v125, v41, v125
	v_div_fmas_f32 v34, v34, v47, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v46, v49, 1.0
	v_div_scale_f32 v35, null, v0, v0, v124
	v_fma_f32 v36, -v48, v33, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v32, v49
	v_rcp_f32_e32 v32, v35
	v_div_fmas_f32 v33, v36, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v126
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v37, v127
	v_mul_f32_e32 v36, v39, v49
	v_div_fixup_f32 v33, v33, v38, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v42
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s0, v124, v0, v124
	v_fma_f32 v37, -v35, v32, 1.0
	v_fma_f32 v42, -v46, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v121
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v76, v33 :: v_dual_mul_f32 v75, v75, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v37, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	v_ldexp_f32 v38, v38, v40
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v42, v49
	v_mul_f32_e32 v40, v44, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v46, v36, v39
	v_fma_f32 v47, -v35, v40, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v38, v38, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v47, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	v_exp_f32_e32 v45, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v35, v40, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v37, v37, v121
	v_div_fmas_f32 v36, v39, v49, v36
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v45, v42
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v46, v43, 1.0
	v_div_fmas_f32 v32, v35, v32, v40
	v_rcp_f32_e32 v40, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v42, v43
	v_div_scale_f32 v42, vcc_lo, v126, v38, v126
	v_div_fixup_f32 v36, v36, v41, v125
	v_div_fixup_f32 v0, v32, v0, v124
	v_div_scale_f32 v32, null, v39, v39, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v41, v42, v43
	v_fma_f32 v45, -v44, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v35, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v47, -v46, v41, v42
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s0, v121, v37, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v41, v47, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v45, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v32, v35, 1.0
	v_div_scale_f32 v47, null, v0, v0, v120
	v_fma_f32 v34, -v46, v41, v42
	v_fma_f32 v42, -v44, v33, v45
	v_fmac_f32_e32 v35, v36, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v47
	v_div_scale_f32 v46, s1, v119, v39, v119
	v_fmac_f32_e32 v33, v42, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v46, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v114
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v47, v36, 1.0
	v_div_fixup_f32 v34, v34, v38, v126
	v_fma_f32 v38, -v44, v33, v45
	v_div_scale_f32 v45, s3, v120, v0, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v48, v36
	v_fma_f32 v44, -v32, v43, v46
	v_div_fmas_f32 v33, v38, v40, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v38, v45, v36 :: v_dual_fmac_f32 v43, v44, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v41, v42, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v47, v38, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v32, v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_fmac_f32 v38, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v48
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v41, v41, v114
	v_div_fmas_f32 v32, v32, v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v49
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v46
	v_fma_f32 v45, -v47, v38, v45
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v44, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v37, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v39, v119
	v_div_fmas_f32 v36, v45, v36, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v46, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v36, v0, v120
	v_div_scale_f32 v42, null, v38, v38, v113
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, vcc_lo, v114, v41, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v48, null, v35, v35, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v69, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v46, v49, v40
	v_div_scale_f32 v32, s0, v113, v38, v113
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v45, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v118, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v37, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v47, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v117, v34 :: v_dual_fmac_f32 v45, v39, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v48, v36, 1.0
	v_fma_f32 v33, -v46, v49, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v39, v32, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, s1, v112, v35, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v43, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v0, v0, v61
	v_fma_f32 v44, -v42, v39, v32
	v_mul_f32_e32 v46, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v44, v45
	v_fma_f32 v34, -v48, v46, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v41, v114
	v_fma_f32 v32, -v42, v39, v32
	v_fmac_f32_e32 v46, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v49
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v40, v43, 1.0
	v_div_scale_f32 v44, s3, v61, v0, v61
	v_fma_f32 v37, -v48, v46, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v97 :: v_dual_fmac_f32 v43, v41, v43
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v45, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v39, v44, v43 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v38, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v40, v39, v44
	v_div_scale_f32 v49, null, v34, v34, v98
	v_div_fmas_f32 v36, v37, v36, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v45, v43
	v_rcp_f32_e32 v41, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v36, v35, v112
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v40, v39, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v37, v37, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v49, v41, 1.0
	v_div_fmas_f32 v36, v36, v43, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v40
	v_div_scale_f32 v28, s0, v98, v34, v98
	v_fmac_f32_e32 v41, v42, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v36, v0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v47
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v43, v28, v41 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v96
	v_fma_f32 v44, -v40, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v49, v43, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, s1, v97, v37, v97
	v_fmac_f32_e32 v43, v38, v41
	v_div_scale_f32 v45, null, v0, v0, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v44, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v111, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v49, v43, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v40, v38, v44
	v_rcp_f32_e32 v32, v45
	v_div_fmas_f32 v28, v28, v41, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v34, v98
	v_div_scale_f32 v36, null, v33, v33, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v40, v38, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v45, v32, 1.0
	v_rcp_f32_e32 v40, v36
	v_div_fmas_f32 v27, v34, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v38, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s0, v95, v0, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v35, v32
	v_fma_f32 v43, -v36, v40, 1.0
	v_div_fixup_f32 v27, v27, v37, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v45, v39, v35
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s1, v96, v33, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v43, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v38, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v45, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v36, v37, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v26, v26, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v44, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v38
	v_div_scale_f32 v44, null, v34, v34, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v88, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v35, v32, v39
	v_fma_f32 v35, -v36, v37, v43
	v_rcp_f32_e32 v43, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v38, v24, 1.0
	v_div_fmas_f32 v35, v35, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, vcc_lo, v80, v26, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v24, v45, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v35, v33, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v40, v24
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, s0, v79, v34, v79
	v_div_scale_f32 v42, null, v37, v37, v74
	v_div_fixup_f32 v0, v32, v0, v95
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v90, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v38, v39, v40
	v_mul_f32_e32 v33, v41, v43
	v_rcp_f32_e32 v45, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v89, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v32, v24
	v_fma_f32 v32, -v44, v33, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v87, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v35, v36
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v38, v39, v40
	v_fmac_f32_e32 v33, v32, v43
	v_fma_f32 v28, -v42, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v27, v24, v39
	v_fma_f32 v27, -v44, v33, v41
	v_fmac_f32_e32 v45, v28, v45
	v_div_scale_f32 v28, s1, v74, v37, v74
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v32, null, v0, v0, v73
	v_div_fmas_f32 v23, v27, v43, v33
	v_mul_f32_e32 v27, v28, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v32
	v_div_fixup_f32 v24, v24, v26, v80
	v_div_fixup_f32 v23, v23, v34, v79
	v_fma_f32 v21, -v42, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v21, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v32, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	v_exp_f32_e32 v1, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v42, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v2, v33
	v_div_scale_f32 v39, s0, v73, v0, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v56
	v_ldexp_f32 v21, v21, v35
	v_exp_f32_e32 v35, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v28, v45, v27
	v_mul_f32_e32 v28, v39, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v37, v74
	v_fma_f32 v38, -v32, v28, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v21, v21, v66
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v28, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v26, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v26, null, v1, v1, v58
	v_fma_f32 v32, -v32, v28, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v35, v35, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v26
	v_div_fmas_f32 v28, v32, v33, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v32, null, v2, v2, v56
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v34, v36, 1.0
	v_div_scale_f32 v33, vcc_lo, v66, v21, v66
	v_rcp_f32_e32 v41, v32
	v_div_fixup_f32 v0, v28, v0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v36, v38, v36
	v_fma_f32 v38, -v26, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v71, v27
	v_mul_f32_e32 v44, v68, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v37, v40, 1.0
	v_dual_mul_f32 v42, v33, v36 :: v_dual_fmac_f32 v39, v38, v39
	v_div_scale_f32 v38, s0, v58, v1, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v32, v41, 1.0
	v_fmac_f32_e32 v40, v28, v40
	v_div_scale_f32 v28, s1, v57, v35, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v72, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v34, v42, v33
	v_mul_f32_e32 v47, v38, v39
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, s3, v56, v2, v56
	v_mul_f32_e32 v48, v28, v40
	v_fmac_f32_e32 v42, v0, v36
	v_fma_f32 v0, -v26, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v43, v41
	v_fma_f32 v27, -v37, v48, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v34, v42, v33
	v_fmac_f32_e32 v47, v0, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v32, v49, v43
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v33, |v75|, |v76|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v27, v40
	v_div_fmas_f32 v23, v23, v36, v42
	v_fma_f32 v26, -v26, v47, v38
	v_fmac_f32_e32 v49, v0, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v37, v48, v28
	v_div_fixup_f32 v21, v23, v21, v66
	v_div_fmas_f32 v26, v26, v39, v47
	v_fma_f32 v27, -v32, v49, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v43, v67, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v26, v1, v58
	v_div_fmas_f32 v27, v27, v41, v49
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v123|, |v29|
	v_max3_f32 v24, |v25|, |v115|, |v116|
	v_max3_f32 v26, |v107|, |v108|, |v109|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v35, v57
	v_div_fixup_f32 v2, v27, v2, v56
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v110|, |v19|, |v17|
	v_max3_f32 v28, |v83|, |v84|, |v85|
	v_max3_f32 v32, |v86|, |v15|, |v14|
	v_max3_f32 v34, |v77|, |v60|, |v59|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v55, v2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v23, |v22|, v24
	v_max3_f32 v23, v26, v27, |v18|
	v_max_f32_e64 v24, |v99|, |v100|
	v_max3_f32 v26, |v101|, |v91|, |v92|
	v_max3_f32 v36, |v82|, |v81|, |v61|
	v_max3_f32 v37, |v62|, |v11|, |v9|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v65, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v31|, |v30|, |v20|
	v_max3_f32 v27, |v93|, |v94|, |v16|
	v_max3_f32 v24, v24, |v102|, v26
	v_max3_f32 v26, v28, v32, |v13|
	v_max3_f32 v28, |v69|, |v70|, |v12|
	v_max3_f32 v32, v33, |v78|, v34
	v_max3_f32 v33, v36, v37, |v10|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v64, v1
	v_mul_f32_e32 v36, v63, v21
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v23
	v_max3_f32 v1, v24, v27, v26
	v_max3_f32 v2, v32, v28, v33
	v_max_f32_e64 v21, |v51|, |v52|
	v_max3_f32 v23, |v53|, |v43|, |v44|
	v_max3_f32 v26, |v36|, |v37|, |v38|
	v_max3_f32 v27, |v35|, |v5|, |v6|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v24, |v45|, |v46|, |v8|
	v_max3_f32 v21, v21, |v54|, v23
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v27, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v23, v23, v23
	v_max_f32_e32 v27, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v28, v32, v32
	v_max3_f32 v21, v21, v24, v26
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v24, 3, v103
	v_lshlrev_b32_e32 v26, 4, v103
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v40, v1, v27 :: v_dual_max_f32 v41, v2, v28
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 4, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v2, v24, 9, 0
	v_and_b32_e32 v28, 0x80, v103
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v39, v0, v23
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 5, v24
	v_permlanex16_b32 v0, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v103
	v_and_b32_e32 v32, 8, v103
	v_lshl_add_u32 v2, v1, 2, v2
	v_and_or_b32 v33, 0x680, v26, v23
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 1, v28
	v_xor_b32_e32 v34, v23, v27
	v_lshl_add_u32 v2, v32, 4, v2
	v_lshrrev_b32_e32 v47, 3, v28
	v_xor_b32_e32 v33, v33, v27
	v_lshl_add_u32 v48, v1, 6, 0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v21, v0
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v2, v26, v34
	v_add_nc_u32_e32 v28, 0, v28
	v_lshlrev_b32_e32 v32, 3, v32
	v_add3_u32 v2, v48, v47, v33
	ds_store_b128 v0, v[39:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v0, v39
	v_dual_mov_b32 v2, v40 :: v_dual_mov_b32 v21, v41
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v39, v39 :: v_dual_max_f32 v34, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v39, v42, v42
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v0, v33, v0
	v_dual_max_f32 v33, v41, v41 :: v_dual_max_f32 v2, v34, v2
	v_max_f32_e32 v34, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v40, v0 :: v_dual_max_f32 v21, v33, v21
	v_mov_b32_e32 v41, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v39, v34
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v34, v21
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v39, v33 :: v_dual_max_f32 v40, v40, v40
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v40
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v41 :: v_dual_max_f32 v39, v39, v39
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v40, v0 :: v_dual_max_f32 v21, v21, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v41, v2
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v33, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v42, v33 :: v_dual_max_f32 v39, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v39, v0, v39 :: v_dual_max_f32 v0, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v40, v2, v40
	v_max_f32_e32 v2, v42, v42
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v34, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v41, v21, v0 :: v_dual_lshlrev_b32 v0, 5, v1
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v1, v24, 4, 0
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v33, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v28, v34, v32
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v24, 4, v106
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v1, v0, v32
	ds_store_b128 v2, v[39:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v0
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v34, 32, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v39, v39
	v_max_f32_e32 v32, v41, v41
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v39, 0x2b8cbccc, v32
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v40, 0x2b8cbccc, v40
	v_max_f32_e32 v42, 0x2b8cbccc, v42
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v41, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v47, null, 0x40e00000, 0x40e00000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v28, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v32, s0, s34, v34
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v50, null, 0x40e00000, 0x40e00000, v40
	v_fma_f32 v33, -v21, v28, 1.0
	v_div_scale_f32 v55, null, 0x40e00000, 0x40e00000, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v28, v33, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v33, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v41, v28
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[42:43], v[32:33]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v48, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v21, v34, v41
	v_div_scale_f32 v49, s7, v39, 0x40e00000, v39
	v_fmac_f32_e32 v34, v0, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v21, v34, v41
	v_rcp_f32_e32 v41, v50
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[32:33]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v33.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[42:43], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v21, v21, v28, v34
	v_mul_f32_e32 v28, v49, v48
	v_rcp_f32_e32 v34, v55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v21, 0x40e00000, v2
	v_fma_f32 v21, -v47, v28, v49
	v_fma_f32 v32, -v50, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v21, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v2.h
	v_mov_b16_e32 v21.h, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v41, v32, v41
	v_div_scale_f32 v32, s8, v40, 0x40e00000, v40
	v_fma_f32 v56, -v55, v34, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v47, v28, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v32, v41
	v_fmac_f32_e32 v34, v56, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v56, s9, v42, 0x40e00000, v42
	v_fma_f32 v47, -v50, v57, v32
	v_div_fmas_f32 v28, v0, v48, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v49, v56, v34 :: v_dual_and_b32 v58, 0xffff0000, v21
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v58, v58, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v55, v49, v56
	v_div_fixup_f32 v28, v28, 0x40e00000, v39
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v66, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v57, v47, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v58, v58, v123
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v49, v2, v34
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v33.l, v28.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v32, -v50, v57, v32
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[42:43], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v39, -v55, v49, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v56, null, v58, v58, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v32, v41, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v32, v47
	v_div_scale_f32 v41, null, v58, v58, v29
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v2, v2, 0x40e00000, v40
	v_div_fmas_f32 v34, v39, v34, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v48, v41
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, null, v58, v58, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v32, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v34, v34, 0x40e00000, v42
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v42.l, v2.h
	v_mov_b16_e32 v42.h, v33.h
	v_add3_u32 v1, v28, v39, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v40, vcc_lo, v123, v58, v123
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v33.l, v34.h
	v_and_b32_e32 v0, 1, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v40, v32
	v_rcp_f32_e32 v55, v49
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v28, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v48, v39, v48
	v_fma_f32 v0, -v47, v42, v40
	v_div_scale_f32 v57, s9, v29, v58, v29
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v34, v33, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v64, null, v58, v58, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v0, v32
	v_rcp_f32_e32 v0, v56
	v_mul_f32_e32 v33, v57, v48
	v_fma_f32 v34, -v49, v55, 1.0
	v_div_scale_f32 v71, null, v58, v58, v109
	v_fma_f32 v40, -v47, v42, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v41, v33, v57
	v_fmac_f32_e32 v55, v34, v55
	v_div_scale_f32 v34, s10, v22, v58, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v56, v0, 1.0
	v_div_fmas_f32 v32, v40, v32, v42
	v_dual_fmac_f32 v33, v47, v48 :: v_dual_mul_f32 v42, v34, v55
	v_rcp_f32_e32 v47, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v0, v63, v0
	v_div_scale_f32 v63, s11, v25, v58, v25
	v_div_fixup_f32 v40, v32, v58, v123
	v_fma_f32 v32, -v41, v33, v57
	v_fma_f32 v41, -v49, v42, v34
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v57, v63, v0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v64, v47, 1.0
	v_div_fmas_f32 v32, v32, v48, v33
	v_fmac_f32_e32 v42, v41, v55
	v_fma_f32 v48, -v65, v66, 1.0
	v_fma_f32 v33, -v56, v57, v63
	v_fmac_f32_e32 v47, v67, v47
	v_div_scale_f32 v41, s9, v115, v58, v115
	v_div_fixup_f32 v29, v32, v58, v29
	v_fma_f32 v32, -v49, v42, v34
	v_fmac_f32_e32 v66, v48, v66
	v_div_scale_f32 v48, null, v58, v58, v31
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v57, v33, v0
	v_mul_f32_e32 v33, v41, v47
	v_div_scale_f32 v34, s12, v116, v58, v116
	v_div_fmas_f32 v32, v32, v55, v42
	v_rcp_f32_e32 v55, v48
	v_fma_f32 v42, -v56, v57, v63
	v_fma_f32 v49, -v64, v33, v41
	v_mul_f32_e32 v56, v34, v66
	v_div_scale_f32 v63, null, v58, v58, v30
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v33, v49, v47
	v_div_fmas_f32 v0, v42, v0, v57
	v_rcp_f32_e32 v49, v63
	v_fma_f32 v42, -v65, v56, v34
	v_fma_f32 v57, -v48, v55, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v0, v58, v25
	v_fma_f32 v0, -v64, v33, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v56, v42, v66 :: v_dual_fmac_f32 v55, v57, v55
	v_div_scale_f32 v57, null, v58, v58, v20
	v_div_fixup_f32 v22, v32, v58, v22
	v_div_scale_f32 v32, s10, v31, v58, v31
	v_fma_f32 v41, -v63, v49, 1.0
	v_div_fmas_f32 v0, v0, v47, v33
	v_fma_f32 v33, -v65, v56, v34
	v_rcp_f32_e32 v47, v57
	v_div_scale_f32 v65, null, v58, v58, v107
	v_dual_mul_f32 v34, v32, v55 :: v_dual_fmac_f32 v49, v41, v49
	v_div_scale_f32 v64, s9, v30, v58, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v68, v65
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v41, v0, v58, v115
	v_div_fmas_f32 v33, v33, v66, v56
	v_fma_f32 v56, -v48, v34, v32
	v_mul_f32_e32 v66, v64, v49
	v_fma_f32 v67, -v57, v47, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v39, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v42, v33, v58, v116
	v_fmac_f32_e32 v34, v56, v55
	v_fma_f32 v0, -v63, v66, v64
	v_fmac_f32_e32 v47, v67, v47
	v_div_scale_f32 v33, s11, v20, v58, v20
	v_fma_f32 v67, -v65, v68, 1.0
	v_fma_f32 v32, -v48, v34, v32
	v_fmac_f32_e32 v66, v0, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v0, v33, v47
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v68, v67, v68
	v_div_scale_f32 v67, s12, v107, v58, v107
	v_div_scale_f32 v56, null, v58, v58, v108
	v_div_fmas_f32 v32, v32, v55, v34
	v_fma_f32 v34, -v63, v66, v64
	v_fma_f32 v55, -v57, v0, v33
	v_mul_f32_e32 v63, v67, v68
	v_rcp_f32_e32 v48, v56
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v31, v32, v58, v31
	v_fmac_f32_e32 v0, v55, v47
	v_fma_f32 v55, -v65, v63, v67
	v_div_fmas_f32 v34, v34, v49, v66
	v_rcp_f32_e32 v49, v71
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v32, -v57, v0, v33
	v_fmac_f32_e32 v63, v55, v68
	v_fma_f32 v64, -v56, v48, 1.0
	v_div_fixup_f32 v30, v34, v58, v30
	v_div_scale_f32 v55, null, v58, v58, v110
	v_div_fmas_f32 v0, v32, v47, v0
	v_fma_f32 v32, -v65, v63, v67
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v48, v64, v48
	v_div_scale_f32 v64, s9, v108, v58, v108
	v_fma_f32 v34, -v71, v49, 1.0
	v_div_fmas_f32 v32, v32, v68, v63
	v_div_scale_f32 v68, null, v58, v58, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v64, v48
	v_div_fixup_f32 v20, v0, v58, v20
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v72, v68
	v_fmac_f32_e32 v49, v34, v49
	v_rcp_f32_e32 v34, v55
	v_fma_f32 v47, -v56, v33, v64
	v_div_scale_f32 v65, null, v58, v58, v19
	v_div_scale_f32 v57, s10, v109, v58, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v47, v48
	v_rcp_f32_e32 v63, v65
	v_div_fixup_f32 v47, v32, v58, v107
	v_div_scale_f32 v74, null, v80, v80, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v55, v34, 1.0
	v_fma_f32 v0, -v56, v33, v64
	v_div_scale_f32 v56, s11, v110, v58, v110
	v_div_scale_f32 v88, null, v80, v80, v16
	v_fmac_f32_e32 v34, v67, v34
	v_div_scale_f32 v67, null, v58, v58, v17
	v_div_fmas_f32 v0, v0, v48, v33
	v_fma_f32 v64, -v65, v63, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v67
	v_div_scale_f32 v89, null, v80, v80, v83
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, s9, v19, v58, v19
	v_div_fixup_f32 v48, v0, v58, v108
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v50, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v67, v33, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v73, v33
	v_fma_f32 v73, -v68, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v73, v72
	v_mul_f32_e32 v66, v57, v49
	v_div_scale_f32 v73, null, v80, v80, v99
	v_fma_f32 v32, -v71, v66, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v32, v49
	v_mul_f32_e32 v32, v56, v34
	v_fma_f32 v0, -v71, v66, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v55, v32, v56
	v_mul_f32_e32 v71, v64, v63
	v_div_fmas_f32 v0, v0, v49, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v57, v34
	v_fma_f32 v57, -v65, v71, v64
	v_div_scale_f32 v66, s10, v17, v58, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v49, v0, v58, v109
	v_fma_f32 v0, -v55, v32, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v71, v57, v63 :: v_dual_mul_f32 v56, v66, v33
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v57, s12, v18, v58, v18
	v_div_fmas_f32 v0, v0, v34, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v65, v71, v64
	v_fma_f32 v34, -v67, v56, v66
	v_rcp_f32_e32 v64, v73
	v_mul_f32_e32 v65, v57, v72
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v55, v0, v58, v110
	v_fmac_f32_e32 v56, v34, v33
	v_rcp_f32_e32 v34, v74
	v_div_fmas_f32 v32, v32, v63, v71
	v_fma_f32 v63, -v68, v65, v57
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v0, -v67, v56, v66
	v_fma_f32 v71, -v73, v64, 1.0
	v_div_fixup_f32 v19, v32, v58, v19
	v_fmac_f32_e32 v65, v63, v72
	v_div_scale_f32 v32, s9, v99, v80, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v64, v71, v64
	v_fma_f32 v63, -v74, v34, 1.0
	v_div_scale_f32 v66, null, v80, v80, v102
	v_div_fmas_f32 v0, v0, v33, v56
	v_fma_f32 v33, -v68, v65, v57
	v_mul_f32_e32 v56, v32, v64
	v_fmac_f32_e32 v34, v63, v34
	v_rcp_f32_e32 v63, v66
	v_div_scale_f32 v57, s10, v100, v80, v100
	v_div_scale_f32 v67, null, v80, v80, v101
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v68, v57, v34
	v_div_fmas_f32 v33, v33, v72, v65
	v_fma_f32 v65, -v73, v56, v32
	v_rcp_f32_e32 v72, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v71, -v66, v63, 1.0
	v_div_fixup_f32 v17, v0, v58, v17
	v_fma_f32 v0, -v74, v68, v57
	v_fmac_f32_e32 v56, v65, v64
	v_div_fixup_f32 v18, v33, v58, v18
	v_div_scale_f32 v33, s11, v102, v80, v102
	v_div_scale_f32 v65, null, v80, v80, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v58, -v67, v72, 1.0
	v_fmac_f32_e32 v63, v71, v63
	v_fma_f32 v32, -v73, v56, v32
	v_fmac_f32_e32 v68, v0, v34
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v71, v65
	v_fmac_f32_e32 v72, v58, v72
	v_mul_f32_e32 v0, v33, v63
	v_div_fmas_f32 v32, v32, v64, v56
	v_fma_f32 v56, -v74, v68, v57
	v_div_scale_f32 v74, null, v80, v80, v92
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v58, s12, v101, v80, v101
	v_fma_f32 v57, -v66, v0, v33
	v_div_fmas_f32 v34, v56, v34, v68
	v_rcp_f32_e32 v68, v74
	v_fma_f32 v73, -v65, v71, 1.0
	v_mul_f32_e32 v64, v58, v72
	v_fmac_f32_e32 v0, v57, v63
	v_div_fixup_f32 v56, v32, v80, v99
	v_div_fixup_f32 v57, v34, v80, v100
	v_fmac_f32_e32 v71, v73, v71
	v_fma_f32 v79, -v67, v64, v58
	v_fma_f32 v32, -v66, v0, v33
	v_div_scale_f32 v66, null, v80, v80, v93
	v_fma_f32 v34, -v74, v68, 1.0
	v_div_scale_f32 v73, s9, v91, v80, v91
	v_fmac_f32_e32 v64, v79, v72
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v68, v34, v68
	v_rcp_f32_e32 v34, v66
	v_mul_f32_e32 v33, v73, v71
	v_div_fmas_f32 v0, v32, v63, v0
	v_fma_f32 v32, -v67, v64, v58
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v67, s10, v92, v80, v92
	v_fma_f32 v58, -v65, v33, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v32, v32, v72, v64
	v_div_scale_f32 v79, null, v80, v80, v94
	v_fma_f32 v64, -v66, v34, 1.0
	v_mul_f32_e32 v87, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v32, v80, v101
	v_rcp_f32_e32 v72, v79
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v34, v64, v34 :: v_dual_fmac_f32 v33, v58, v71
	v_div_fixup_f32 v58, v0, v80, v102
	v_fma_f32 v32, -v74, v87, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v65, v33, v73
	v_div_scale_f32 v73, s11, v93, v80, v93
	v_fmac_f32_e32 v87, v32, v68
	v_fma_f32 v64, -v79, v72, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v32, v73, v34
	v_div_fmas_f32 v0, v0, v71, v33
	v_rcp_f32_e32 v33, v88
	v_div_scale_f32 v71, s9, v94, v80, v94
	v_fma_f32 v65, -v66, v32, v73
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v32, v65, v34
	v_fma_f32 v90, -v88, v33, 1.0
	v_fmac_f32_e32 v72, v64, v72
	v_div_fixup_f32 v64, v0, v80, v91
	v_fma_f32 v0, -v74, v87, v67
	v_rcp_f32_e32 v74, v89
	v_fmac_f32_e32 v33, v90, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v68, v87
	v_div_scale_f32 v87, s10, v16, v80, v16
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v65, v0, v80, v92
	v_fma_f32 v90, -v89, v74, 1.0
	v_mul_f32_e32 v67, v71, v72
	v_fma_f32 v0, -v66, v32, v73
	v_div_scale_f32 v73, s12, v83, v80, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v90, v74
	v_fma_f32 v68, -v79, v67, v71
	v_div_scale_f32 v90, null, v80, v80, v84
	v_div_fmas_f32 v0, v0, v34, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v73, v74
	v_dual_fmac_f32 v67, v68, v72 :: v_dual_mul_f32 v68, v87, v33
	v_div_scale_f32 v92, null, v80, v80, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v32, -v79, v67, v71
	v_fma_f32 v34, -v88, v68, v87
	v_rcp_f32_e32 v79, v90
	v_div_fixup_f32 v66, v0, v80, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v72, v67
	v_fma_f32 v67, -v89, v91, v73
	v_fmac_f32_e32 v68, v34, v33
	v_rcp_f32_e32 v34, v92
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v71, v32, v80, v94
	v_fmac_f32_e32 v91, v67, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v90, v79, 1.0
	v_fma_f32 v0, -v88, v68, v87
	v_div_scale_f32 v32, s9, v84, v80, v84
	v_div_scale_f32 v87, null, v80, v80, v86
	v_fma_f32 v67, -v92, v34, 1.0
	v_fmac_f32_e32 v79, v72, v79
	v_div_fmas_f32 v0, v0, v33, v68
	v_fma_f32 v33, -v89, v91, v73
	v_div_scale_f32 v73, s10, v85, v80, v85
	v_fmac_f32_e32 v34, v67, v34
	v_mul_f32_e32 v68, v32, v79
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v88, null, v80, v80, v15
	v_div_fmas_f32 v33, v33, v74, v91
	v_mul_f32_e32 v89, v73, v34
	v_fma_f32 v74, -v90, v68, v32
	v_rcp_f32_e32 v67, v87
	v_rcp_f32_e32 v93, v88
	v_div_fixup_f32 v16, v0, v80, v16
	v_div_fixup_f32 v72, v33, v80, v83
	v_fma_f32 v0, -v92, v89, v73
	v_fmac_f32_e32 v68, v74, v79
	v_div_scale_f32 v83, null, v80, v80, v14
	v_div_scale_f32 v33, s11, v86, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v0, v34
	v_fma_f32 v32, -v90, v68, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v83
	v_fma_f32 v91, -v87, v67, 1.0
	v_fma_f32 v74, -v88, v93, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, s9, v14, v80, v14
	v_div_fmas_f32 v32, v32, v79, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v93, v74, v93
	v_fma_f32 v68, -v92, v89, v73
	v_div_scale_f32 v92, null, v80, v80, v13
	v_fma_f32 v74, -v83, v90, 1.0
	v_fmac_f32_e32 v67, v91, v67
	v_div_scale_f32 v91, s12, v15, v80, v15
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v74, v90
	v_dual_mul_f32 v0, v33, v67 :: v_dual_mul_f32 v79, v91, v93
	v_div_fmas_f32 v34, v68, v34, v89
	v_rcp_f32_e32 v68, v92
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v87, v0, v33
	v_fma_f32 v89, -v88, v79, v91
	v_div_fixup_f32 v74, v34, v80, v85
	v_div_scale_f32 v85, s10, v13, v80, v13
	v_fmac_f32_e32 v0, v73, v67
	v_div_fixup_f32 v73, v32, v80, v84
	v_div_scale_f32 v84, null, v50, v50, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v92, v68, 1.0
	v_fma_f32 v32, -v87, v0, v33
	v_fmac_f32_e32 v79, v89, v93
	v_div_scale_f32 v87, null, v50, v50, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v68, v34, v68
	v_mul_f32_e32 v33, v94, v90
	v_div_fmas_f32 v0, v32, v67, v0
	v_fma_f32 v32, -v88, v79, v91
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v34, v84
	v_mul_f32_e32 v88, v85, v68
	v_fma_f32 v67, -v83, v33, v94
	v_div_fmas_f32 v32, v32, v93, v79
	v_div_fixup_f32 v79, v0, v80, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v32, v80, v15
	v_fma_f32 v32, -v92, v88, v85
	v_fmac_f32_e32 v33, v67, v90
	v_rcp_f32_e32 v67, v87
	v_fma_f32 v89, -v84, v34, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v32, v68
	v_fma_f32 v0, -v83, v33, v94
	v_div_scale_f32 v83, s11, v75, v50, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v90, v33
	v_fma_f32 v86, -v87, v67, 1.0
	v_fmac_f32_e32 v34, v89, v34
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, null, v50, v50, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v86, v67
	v_div_scale_f32 v86, s9, v76, v50, v76
	v_mul_f32_e32 v32, v83, v34
	v_div_fixup_f32 v14, v0, v80, v14
	v_fma_f32 v0, -v92, v88, v85
	v_mul_f32_e32 v91, v86, v67
	v_div_scale_f32 v90, null, v50, v50, v77
	v_fma_f32 v85, -v84, v32, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v68, v88
	v_fma_f32 v68, -v87, v91, v86
	v_rcp_f32_e32 v33, v89
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v32, v85, v34
	v_div_fixup_f32 v13, v0, v80, v13
	v_fmac_f32_e32 v91, v68, v67
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s10, v78, v50, v78
	v_fma_f32 v0, -v84, v32, v83
	v_div_scale_f32 v83, null, v50, v50, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v33, 1.0
	v_fma_f32 v88, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v34, v32
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v32, -v87, v91, v86
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v33, v93, v33 :: v_dual_fmac_f32 v92, v88, v92
	v_div_scale_f32 v80, s12, v77, v50, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v32, v32, v67, v91
	v_div_scale_f32 v87, null, v50, v50, v59
	v_fma_f32 v88, -v83, v84, 1.0
	v_div_fixup_f32 v0, v0, v50, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v32, v50, v76
	v_div_scale_f32 v76, s9, v60, v50, v60
	v_fmac_f32_e32 v84, v88, v84
	v_mul_f32_e32 v68, v85, v33
	v_rcp_f32_e32 v67, v87
	v_mul_f32_e32 v86, v80, v92
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s10, v59, v50, v59
	v_fma_f32 v34, -v89, v68, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v68, v34, v33
	v_fma_f32 v34, -v90, v86, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v89, v68, v85
	v_fmac_f32_e32 v86, v34, v92
	v_div_scale_f32 v85, null, v50, v50, v69
	v_div_scale_f32 v89, null, v50, v50, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v75, v33, v68
	v_fma_f32 v68, -v90, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v85
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v34, -v87, v67, 1.0
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v33, v33, v50, v78
	v_div_scale_f32 v78, null, v50, v50, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v67, v34, v67
	v_div_fmas_f32 v34, v68, v92, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v85, v80, 1.0
	v_rcp_f32_e32 v92, v78
	v_mul_f32_e32 v86, v88, v67
	v_div_fixup_f32 v34, v34, v50, v77
	v_div_scale_f32 v77, s11, v69, v50, v69
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v90, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v90, v91
	v_mul_f32_e32 v75, v76, v84
	v_div_scale_f32 v90, s12, v70, v50, v70
	v_fma_f32 v68, -v83, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v68, v84
	v_fma_f32 v68, -v87, v86, v88
	v_fma_f32 v76, -v83, v75, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v86, v68, v67 :: v_dual_mul_f32 v83, v77, v80
	v_div_fmas_f32 v68, v76, v84, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v87, v86, v88
	v_fma_f32 v76, -v85, v83, v77
	v_mul_f32_e32 v84, v90, v91
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v50, v50, v82
	v_div_fmas_f32 v75, v75, v67, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v89, v84, v90
	v_fmac_f32_e32 v83, v76, v80
	v_rcp_f32_e32 v76, v88
	v_div_fixup_f32 v67, v68, v50, v60
	v_div_fixup_f32 v68, v75, v50, v59
	v_fmac_f32_e32 v84, v86, v91
	v_fma_f32 v59, -v85, v83, v77
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v87, -v78, v92, 1.0
	v_div_scale_f32 v77, null, v50, v50, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v80, v83
	v_fma_f32 v80, -v89, v84, v90
	v_div_scale_f32 v90, null, v50, v50, v11
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v75, -v88, v76, 1.0
	v_div_fmas_f32 v80, v80, v91, v84
	v_rcp_f32_e32 v91, v90
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s9, v12, v50, v12
	v_fmac_f32_e32 v76, v75, v76
	v_rcp_f32_e32 v75, v77
	v_div_scale_f32 v85, s10, v82, v50, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v87, v92
	v_div_scale_f32 v86, null, v50, v50, v61
	v_mul_f32_e32 v84, v85, v76
	v_div_fixup_f32 v69, v59, v50, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v78, v60, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v77, v75, 1.0
	v_div_fixup_f32 v70, v80, v50, v70
	v_div_scale_f32 v80, s11, v81, v50, v81
	v_fmac_f32_e32 v60, v83, v92
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v75, v89, v75
	v_div_scale_f32 v89, null, v50, v50, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v59, -v78, v60, v87
	v_fma_f32 v78, -v88, v84, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v92, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v84, v78, v76
	v_rcp_f32_e32 v78, v89
	v_mul_f32_e32 v60, v80, v75
	v_div_fixup_f32 v12, v59, v50, v12
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v61, v50, v61
	v_fma_f32 v59, -v88, v84, v85
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v77, v60, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v92, -v89, v78, 1.0
	v_div_fmas_f32 v59, v59, v76, v84
	v_div_scale_f32 v84, s10, v62, v50, v62
	v_fmac_f32_e32 v60, v85, v75
	v_fma_f32 v76, -v86, v88, v87
	v_fmac_f32_e32 v78, v92, v78
	v_fma_f32 v85, -v90, v91, 1.0
	v_div_fixup_f32 v59, v59, v50, v82
	v_div_scale_f32 v82, null, v50, v50, v9
	v_fma_f32 v77, -v77, v60, v80
	v_fmac_f32_e32 v88, v76, v83
	v_dual_mul_f32 v76, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v80, s12, v11, v50, v11
	v_rcp_f32_e32 v85, v82
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v60, v77, v75, v60
	v_fma_f32 v75, -v86, v88, v87
	v_fma_f32 v77, -v89, v76, v84
	v_mul_f32_e32 v86, v80, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v50, v50, v10
	v_div_fmas_f32 v75, v75, v83, v88
	v_fmac_f32_e32 v76, v77, v78
	v_fma_f32 v83, -v90, v86, v80
	v_fma_f32 v88, -v82, v85, 1.0
	v_rcp_f32_e32 v77, v87
	v_div_fixup_f32 v60, v60, v50, v81
	v_div_fixup_f32 v61, v75, v50, v61
	v_fma_f32 v75, -v89, v76, v84
	v_dual_fmac_f32 v86, v83, v91 :: v_dual_fmac_f32 v85, v88, v85
	v_div_scale_f32 v81, s9, v9, v50, v9
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, null, v39, v39, v52
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v90, v86, v80
	v_mul_f32_e32 v78, v81, v85
	v_div_scale_f32 v80, null, v39, v39, v51
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v83, -v87, v77, 1.0
	v_div_fmas_f32 v76, v76, v91, v86
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v86, -v82, v78, v81
	v_div_fixup_f32 v62, v75, v50, v62
	v_fmac_f32_e32 v77, v83, v77
	v_div_scale_f32 v83, s10, v10, v50, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v86, v85
	v_div_fixup_f32 v11, v76, v50, v11
	v_rcp_f32_e32 v76, v89
	v_mul_f32_e32 v88, v83, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v80, v84, 1.0
	v_fma_f32 v81, -v82, v78, v81
	v_div_scale_f32 v82, null, v39, v39, v54
	v_fma_f32 v75, -v87, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v86, v84
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v89, v76, 1.0
	v_fmac_f32_e32 v88, v75, v77
	v_div_scale_f32 v75, s11, v51, v39, v51
	v_div_fmas_f32 v78, v81, v85, v78
	v_fmac_f32_e32 v76, v90, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v87, v88, v83
	v_mul_f32_e32 v83, v75, v84
	v_div_scale_f32 v85, s9, v52, v39, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v82, v86, 1.0
	v_div_scale_f32 v91, null, v39, v39, v53
	v_fma_f32 v90, -v80, v83, v75
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, s12, v54, v39, v54
	v_mul_f32_e32 v92, v85, v76
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v77, v81, v77, v88
	v_dual_fmac_f32 v83, v90, v84 :: v_dual_mul_f32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v89, v92, v85
	v_div_fixup_f32 v9, v78, v50, v9
	v_div_fixup_f32 v10, v77, v50, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v80, v83, v75
	v_fma_f32 v75, -v82, v88, v87
	v_div_scale_f32 v78, null, v39, v39, v43
	v_fmac_f32_e32 v92, v81, v76
	v_fma_f32 v77, -v91, v93, 1.0
	v_fmac_f32_e32 v88, v75, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v75, v78
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v80, -v89, v92, v85
	v_fmac_f32_e32 v93, v77, v93
	v_div_scale_f32 v77, s10, v53, v39, v53
	v_div_fmas_f32 v50, v50, v84, v83
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v80, v76, v92
	v_fma_f32 v80, -v82, v88, v87
	v_mul_f32_e32 v81, v77, v93
	v_div_scale_f32 v82, null, v39, v39, v44
	v_fma_f32 v83, -v78, v75, 1.0
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v85, -v91, v81, v77
	v_div_fmas_f32 v80, v80, v86, v88
	v_rcp_f32_e32 v84, v82
	v_fmac_f32_e32 v75, v83, v75
	v_div_scale_f32 v83, s9, v43, v39, v43
	v_div_fixup_f32 v50, v50, v39, v51
	v_fmac_f32_e32 v81, v85, v93
	v_div_fixup_f32 v51, v76, v39, v52
	v_div_fixup_f32 v52, v80, v39, v54
	v_mul_f32_e32 v54, v83, v75
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v82, v84, 1.0
	v_fma_f32 v77, -v91, v81, v77
	v_div_scale_f32 v80, null, v39, v39, v45
	v_fma_f32 v85, -v78, v54, v83
	v_fmac_f32_e32 v84, v76, v84
	v_div_scale_f32 v76, s11, v44, v39, v44
	v_div_fmas_f32 v77, v77, v93, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v85, v75
	v_rcp_f32_e32 v86, v80
	v_mul_f32_e32 v81, v76, v84
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v53, v77, v39, v53
	v_fma_f32 v77, -v78, v54, v83
	v_div_scale_f32 v85, null, v39, v39, v46
	v_fma_f32 v78, -v82, v81, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v77, v75, v54
	v_div_scale_f32 v75, null, v39, v39, v8
	v_fma_f32 v83, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v78, v84
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v77, s9, v45, v39, v45
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v39, v39, v36
	v_div_fixup_f32 v43, v54, v39, v43
	v_fma_f32 v76, -v82, v81, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v75, v78, 1.0
	v_mul_f32_e32 v82, v77, v86
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v54, v87
	v_div_scale_f32 v54, s10, v46, v39, v46
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v39, v39, v37
	v_div_fmas_f32 v76, v76, v84, v81
	v_fma_f32 v81, -v80, v82, v77
	v_mul_f32_e32 v84, v54, v87
	v_div_scale_f32 v90, s11, v8, v39, v8
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v54
	v_mul_f32_e32 v93, v90, v78
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s12, v36, v39, v36
	v_div_fixup_f32 v44, v76, v39, v44
	v_fma_f32 v76, -v80, v82, v77
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v77, -v75, v93, v90
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v54, -v85, v84, v54
	v_fmac_f32_e32 v93, v77, v78
	v_fma_f32 v77, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s9, v37, v39, v37
	v_div_fmas_f32 v76, v76, v86, v82
	v_div_scale_f32 v82, null, v39, v39, v38
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v75, -v75, v93, v90
	v_fmac_f32_e32 v80, v77, v89
	v_mul_f32_e32 v77, v81, v92
	v_div_fmas_f32 v54, v54, v87, v84
	v_rcp_f32_e32 v84, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v45, v76, v39, v45
	v_div_fmas_f32 v75, v75, v78, v93
	v_fma_f32 v78, -v83, v80, v91
	v_fma_f32 v83, -v88, v77, v81
	v_div_fixup_f32 v46, v54, v39, v46
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v8, v75, v39, v8
	v_div_scale_f32 v75, null, v39, v39, v35
	v_fmac_f32_e32 v77, v83, v92
	v_fma_f32 v76, -v82, v84, 1.0
	v_div_fmas_f32 v78, v78, v89, v80
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v86, null, v39, v39, v7
	v_fma_f32 v54, -v88, v77, v81
	v_fmac_f32_e32 v84, v76, v84
	v_div_scale_f32 v76, null, v39, v39, v5
	v_div_fixup_f32 v36, v78, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v54, v54, v92, v77
	v_rcp_f32_e32 v77, v75
	v_rcp_f32_e32 v81, v76
	v_div_scale_f32 v80, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v37, v54, v39, v37
	v_div_scale_f32 v78, null, v39, v39, v6
	v_mul_f32_e32 v85, v80, v84
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v75, v77, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v76, v81, 1.0
	v_fma_f32 v89, -v82, v85, v80
	v_rcp_f32_e32 v83, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v54, v77
	v_div_scale_f32 v54, s9, v35, v39, v35
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s10, v5, v39, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v91, v54, v77
	v_fmac_f32_e32 v85, v89, v84
	v_fma_f32 v90, -v78, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v93, v87, v81
	v_fma_f32 v92, -v86, v88, 1.0
	v_fma_f32 v89, -v75, v91, v54
	v_fma_f32 v80, -v82, v85, v80
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v82, -v76, v93, v87
	v_div_scale_f32 v90, s11, v6, v39, v6
	v_fmac_f32_e32 v91, v89, v77
	v_div_fmas_f32 v80, v80, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v93, v82, v81
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v54, -v75, v91, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v93, v87
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s12, v7, v39, v7
	v_div_fmas_f32 v54, v54, v77, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v81, v93
	v_mul_f32_e32 v95, v92, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_cvt_i32_f32_e32 v97, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v76, v39, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v90, v83
	v_fma_f32 v75, -v86, v95, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v43
	v_and_b32_e32 v37, 15, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v94, v90
	v_fmac_f32_e32 v95, v75, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v89, v83
	v_fma_f32 v77, -v86, v95, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v78, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v14
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v80, v39, v38
	v_div_fixup_f32 v35, v54, v39, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v83, v94
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v88, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v75, v39, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v64
	v_rndne_f32_e32 v64, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v77, v39, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v47
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v55
	v_rndne_f32_e32 v55, v57
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v63
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v93, v45
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v45, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v103
	v_lshlrev_b32_e32 v22, 4, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v72
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v73, v79
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_cvt_i32_f32_e32 v95, v8
	v_and_b32_e32 v8, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 6, v4
	v_xor_b32_e32 v22, v22, v27
	v_lshlrev_b32_e32 v27, 6, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v80, v32
	v_cvt_i32_f32_e32 v81, v33
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v87, v50
	v_cvt_i32_f32_e32 v88, v51
	v_cvt_i32_f32_e32 v89, v52
	v_cvt_i32_f32_e32 v90, v53
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v25
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v77, v15
	v_cvt_i32_f32_e32 v79, v13
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v96, v36
	v_cvt_i32_f32_e32 v98, v38
	v_cvt_i32_f32_e32 v84, v11
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v86, v10
	v_cvt_i32_f32_e32 v94, v46
	v_cvt_i32_f32_e32 v99, v35
	v_cvt_i32_f32_e32 v100, v5
	v_cvt_i32_f32_e32 v101, v6
	v_and_b32_e32 v5, 15, v39
	v_and_b32_e32 v9, 15, v40
	v_and_b32_e32 v10, 15, v41
	v_and_b32_e32 v11, 15, v31
	v_and_b32_e32 v12, 15, v30
	v_and_b32_e32 v15, 15, v47
	v_and_b32_e32 v16, 15, v48
	v_and_b32_e32 v30, 15, v55
	v_and_b32_e32 v31, 15, v56
	v_and_b32_e32 v32, 15, v57
	v_and_b32_e32 v33, 15, v58
	v_and_b32_e32 v34, 15, v63
	v_and_b32_e32 v35, 15, v64
	v_and_b32_e32 v36, 15, v65
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v47, 15, v81
	v_and_b32_e32 v48, 15, v82
	v_and_b32_e32 v56, 15, v61
	v_and_b32_e32 v57, 15, v62
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v64, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v22, v26
	v_xad_u32 v22, v23, v106, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v29, 15, v54
	v_cvt_i32_f32_e32 v92, v44
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v17, 15, v49
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v38, 15, v66
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v40, 15, v72
	v_and_b32_e32 v41, 15, v73
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v51, 15, v69
	v_and_b32_e32 v52, 15, v70
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v59
	v_and_b32_e32 v55, 15, v60
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v72, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v22
	ds_load_b128 v[13:16], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[29:32]
	ds_store_b128 v0, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v22
	ds_load_b128 v[37:40], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[45:48]
	ds_store_b128 v0, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v22
	ds_load_b128 v[53:56], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[61:64]
	ds_store_b128 v0, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v22
	ds_load_b128 v[69:72], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v22
	ds_load_b128 v[17:20], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v22
	ds_load_b128 v[41:44], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v66, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v67
	v_and_b32_e32 v50, 15, v68
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v22
	ds_load_b128 v[57:60], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v99
	v_and_b32_e32 v74, 15, v100
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v76, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v105
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v22
	ds_load_b128 v[73:76], v22 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v11
	v_lshl_or_b32 v12, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v22, v40, 4, v32
	v_lshl_or_b32 v23, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	s_mov_b32 s12, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v53, 4, v45
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v24, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v23.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v69, 4, v61
	v_lshl_or_b32 v38, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v5.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v103
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v28.h
	v_mov_b16_e32 v1.l, v21.h
	v_add3_u32 v4, v4, v5, v44
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v104
	s_and_b32 s13, s23, 0xffff
	s_mov_b32 s12, s22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s45, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 496
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 496
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30884
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 496
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 496
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 123
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
