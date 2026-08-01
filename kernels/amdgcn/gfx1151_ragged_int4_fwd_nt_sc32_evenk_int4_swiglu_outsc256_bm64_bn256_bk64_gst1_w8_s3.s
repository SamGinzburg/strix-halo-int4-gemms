	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v172, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v35, 4, v172
	v_and_b32_e32 v37, 0x7f, v172
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s12, s8, s9
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s6
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s79, s3, s7
	s_load_b64 s[6:7], s[0:1], 0x38
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	s_mov_b32 s8, 0
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s10, s4
	s_addc_u32 s3, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v5, 8, v172
	v_lshlrev_b32_e32 v9, 4, v172
.Ltmp4:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v7, 0x7f, v172
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow562
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v0, 0
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_mov_b32_e32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v175, 0x80, v172
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_and_b32 v147, 15, v172
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v205, 0
	v_lshrrev_b32_e32 v173, 4, v172
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_cmp_eq_u32_e64 s2, 0, v175
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_mov_b32_e32 v121, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v77, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v109, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v241, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v85, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v125, 0
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v73, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v89, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v179, 0
	v_mov_b32_e32 v126, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v162, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v118, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s30, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v6, s0, s72, v147
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v7, null, s73, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v6, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v7, vcc_lo
	v_add_co_u32 v12, vcc_lo, v6, 32
	v_add_co_ci_u32_e64 v13, null, 0, v7, vcc_lo
	v_add_co_u32 v14, vcc_lo, v6, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, 0, v7, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[0:1]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, s72, v147
	v_bfe_i32 v33, v172, 3, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[2:3]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s34
	v_mul_lo_u32 v1, v1, s34
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:484
	scratch_store_b32 off, v37, off offset:480
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v35, 0x70, v35
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v33, 0x88, v33
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v34, 3, v172
	.loc	1 1045 36                       ; ragged.py:1045:36
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v38, v33, v35
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s34
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v34, 0x700, v34
	v_cndmask_b32_e64 v36, 0x88, 0, s2
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s24, s6, s4
	s_addc_u32 s25, s7, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v35, v35, v34, v33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s9
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s9, s79, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v16, 0xf0, v172
	v_xor_b32_e32 v33, v36, v37
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v36, 5, v172
	v_or_b32_e32 v37, s9, v172
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s24, s[24:25], 0x0
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v36, 32, v36
	scratch_store_b32 off, v37, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v37, 2, v16
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v39, s72, v173
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v0, s9, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v36, 0, v37, v36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[4:5]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v37, 16, v39
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[4:5]
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v40, 32, v39
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v41, 48, v39
	v_mul_lo_u32 v39, v39, s30
	v_mul_lo_u32 v37, v37, s30
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s33, s78, 1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf0, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s8, s30, s33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s10
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s10, s8, s24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[6:7]
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	v_cmp_le_i64_e64 s7, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[6:7]
	v_cmp_gt_i64_e64 s13, s[76:77], v[10:11]
	v_cmp_gt_i64_e64 s14, s[76:77], v[12:13]
	v_cmp_gt_i64_e64 s15, s[76:77], v[14:15]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xe0, v0
	v_or_b32_e32 v3, 0xd0, v0
	v_or_b32_e32 v4, 0xc0, v0
	v_or_b32_e32 v5, 0xb0, v0
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v6, s78, v1
	v_or_b32_e32 v11, 0xa0, v0
	v_or_b32_e32 v12, 0x90, v0
	v_or_b32_e32 v13, 0x80, v0
	v_or_b32_e32 v14, 0x70, v0
	v_or_b32_e32 v15, 0x60, v0
	v_or_b32_e32 v22, 0x50, v0
	v_or_b32_e32 v23, 64, v0
	v_or_b32_e32 v24, 48, v0
	v_or_b32_e32 v25, 32, v0
	v_or_b32_e32 v26, 16, v0
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v32, s78, v0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v38, off offset:172
	scratch_store_b32 off, v39, off offset:184
	scratch_store_b32 off, v35, off offset:176
	scratch_store_b32 off, v37, off offset:188
	v_mul_lo_u32 v37, v40, s30
	v_mad_u64_u32 v[39:40], null, v0, s30, s[10:11]
	v_mad_u64_u32 v[0:1], null, s30, v1, s[10:11]
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v31, s78, v26
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v30, s78, v25
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v29, s78, v24
	scratch_store_b64 off, v[0:1], off offset:320 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s30, s[10:11]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v28, s78, v23
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v27, s78, v22
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v21, s78, v15
	scratch_store_b64 off, v[0:1], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s30, s[10:11]
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v20, s78, v14
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v19, s78, v13
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v18, s78, v12
	scratch_store_b64 off, v[0:1], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s30, s[10:11]
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v17, s78, v11
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v10, s78, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v9, s78, v4
	scratch_store_b64 off, v[0:1], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s30, s[10:11]
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v8, s78, v3
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v7, s78, v2
	v_xor_b32_e32 v34, 8, v38
	v_xor_b32_e32 v35, 8, v35
	scratch_store_b64 off, v[0:1], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v28, s30, s[10:11]
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v38, 1, v172
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v38, 28, v38
	scratch_store_b64 off, v[0:1], off offset:360 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v27, s30, s[10:11]
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v177, 0, v33
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v115, 0, v16
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b64 off, v[0:1], off offset:368 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s30, s[10:11]
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v103, 0
	scratch_store_b64 off, v[0:1], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s30, s[10:11]
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v91, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v101, 0
	scratch_store_b64 off, v[0:1], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s30, s[10:11]
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v81, 0
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s30, s[10:11]
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v155, 0
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s30, s[10:11]
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v146, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v153, 0
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s30, s[10:11]
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v156, 0
	v_mov_b32_e32 v121, 0
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s30, s[10:11]
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v205, 0
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s30, s[10:11]
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s30, s[10:11]
	v_mov_b32_e32 v240, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v150, 0
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v6, s30, s[10:11]
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v128, 0
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v34
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v112, 0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v35
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v72, 0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v36, v38
	s_mov_b32 s8, 0
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s3, s3, s11
	s_and_b32 s4, s4, s12
	s_and_b32 s5, s5, s13
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v172, off offset:468 ; 4-byte Folded Spill
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_mul_i32 s35, s34, s24
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v175, off offset:476 ; 4-byte Folded Spill
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s24, s16
	s_mov_b32 s27, 0x31027000
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s19, 0xffff
	s_mov_b32 s16, s18
	s_and_b32 s21, s21, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v147, off offset:152
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[39:40], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[39:40], null, v26, s30, s[10:11]
	v_mad_u64_u32 v[25:26], null, v25, s30, s[10:11]
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_and_b32 s29, s23, 0xffff
	s_mov_b32 s28, s22
	scratch_store_b64 off, v[39:40], off offset:208 ; 8-byte Folded Spill
	s_mov_b32 s9, s8
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s36, s8
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v37, off offset:192 ; 4-byte Folded Spill
	v_mul_lo_u32 v37, v41, s30
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v37, off offset:196
	scratch_store_b32 off, v0, off offset:20
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[25:26], off offset:216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[24:25], null, v24, s30, s[10:11]
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v173, off offset:472
	scratch_store_b32 off, v0, off offset:32
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[24:25], off offset:224 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s30, v23, s[10:11]
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[23:24], off offset:232
	scratch_store_b32 off, v0, off offset:40
	v_mad_u64_u32 v[22:23], null, s30, v22, s[10:11]
	scratch_store_b64 off, v[22:23], off offset:240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[22:23], null, s30, v15, s[10:11]
	v_mad_u64_u32 v[14:15], null, s30, v14, s[10:11]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[22:23], off offset:248
	scratch_store_b64 off, v[14:15], off offset:256
	v_mad_u64_u32 v[13:14], null, s30, v13, s[10:11]
	scratch_store_b64 off, v[13:14], off offset:264 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s30, v12, s[10:11]
	scratch_store_b64 off, v[12:13], off offset:272 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s30, v11, s[10:11]
	scratch_store_b64 off, v[11:12], off offset:280 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s30, v5, s[10:11]
	v_mad_u64_u32 v[4:5], null, s30, v4, s[10:11]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:288
	scratch_store_b64 off, v[4:5], off offset:296
	v_mad_u64_u32 v[3:4], null, s30, v3, s[10:11]
	scratch_store_b64 off, v[3:4], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s30, v2, s[10:11]
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	scratch_store_b64 off, v[2:3], off offset:312 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b64 v[6:7], off, off offset:200
	v_lshl_or_b32 v1, s36, 4, v147
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v209, off offset:136
	scratch_store_b32 off, v208, off offset:132
	scratch_store_b32 off, v60, off offset:128
	scratch_store_b32 off, v207, off offset:124
	scratch_store_b32 off, v206, off offset:120
	scratch_store_b32 off, v204, off offset:116
	scratch_store_b32 off, v203, off offset:112
	scratch_store_b32 off, v202, off offset:108
	scratch_store_b32 off, v174, off offset:104
	scratch_store_b32 off, v222, off offset:100
	scratch_store_b32 off, v163, off offset:96
	scratch_store_b32 off, v77, off offset:92
	scratch_store_b32 off, v78, off offset:88
	scratch_store_b32 off, v79, off offset:84
	scratch_store_b32 off, v205, off offset:80
	scratch_store_b32 off, v148, off offset:76
	v_mov_b32_e32 v163, v159
	v_mov_b32_e32 v157, v131
	v_dual_mov_b32 v147, v70 :: v_dual_mov_b32 v148, v71
	v_mov_b32_e32 v75, v74
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	v_mov_b32_e32 v74, v178
	scratch_load_b64 v[7:8], off, off offset:208 ; 8-byte Folded Reload
	v_mov_b32_e32 v119, v139
	v_mov_b32_e32 v139, v104
	s_clause 0xd                            ; 112-byte Folded Reload
	scratch_load_b64 v[8:9], off, off offset:216
	scratch_load_b64 v[9:10], off, off offset:224
	scratch_load_b64 v[10:11], off, off offset:232
	scratch_load_b64 v[11:12], off, off offset:240
	scratch_load_b64 v[12:13], off, off offset:248
	scratch_load_b64 v[13:14], off, off offset:256
	scratch_load_b64 v[14:15], off, off offset:264
	scratch_load_b64 v[15:16], off, off offset:272
	scratch_load_b64 v[16:17], off, off offset:280
	scratch_load_b64 v[17:18], off, off offset:288
	scratch_load_b64 v[18:19], off, off offset:296
	scratch_load_b64 v[19:20], off, off offset:304
	scratch_load_b64 v[20:21], off, off offset:312
	scratch_load_b64 v[21:22], off, off offset:320
	v_mov_b32_e32 v104, v118
	v_mov_b32_e32 v118, v100
	v_dual_mov_b32 v100, v91 :: v_dual_mov_b32 v91, v86
	v_dual_mov_b32 v90, v85 :: v_dual_mov_b32 v85, v80
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v189, s15 :: v_dual_mov_b32 v88, v84
	v_dual_mov_b32 v187, s13 :: v_dual_mov_b32 v86, v81
	v_mov_b32_e32 v81, v230
	v_dual_mov_b32 v185, s11 :: v_dual_mov_b32 v84, v239
	v_dual_mov_b32 v183, s9 :: v_dual_mov_b32 v80, v144
	v_dual_mov_b32 v239, v138 :: v_dual_mov_b32 v144, v76
	v_mov_b32_e32 v141, v120
	v_dual_mov_b32 v149, v61 :: v_dual_mov_b32 v188, s14
	v_dual_mov_b32 v123, v62 :: v_dual_mov_b32 v186, s12
	v_mov_b32_e32 v184, s10
	v_mov_b32_e32 v182, s8
	v_mov_b32_e32 v120, v64
	v_dual_mov_b32 v138, v63 :: v_dual_mov_b32 v181, v116
	v_dual_mov_b32 v116, v67 :: v_dual_mov_b32 v131, v69
	v_mov_b32_e32 v230, v153
	v_mov_b32_e32 v153, v133
	v_mov_b32_e32 v133, v155
	v_mov_b32_e32 v155, v129
	v_dual_mov_b32 v129, v106 :: v_dual_mov_b32 v114, v59
	v_dual_mov_b32 v106, v65 :: v_dual_mov_b32 v159, v146
	v_mov_b32_e32 v146, v68
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v2, v0, v1
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v6, v6, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v6, s[16:19], 0 offen
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v7, v7, v1
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v8, v8, v1
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v9, v9, v1
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v10, v10, v1
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v11, v11, v1
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v12, v12, v1
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v13, v13, v1
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v14, v14, v1
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v15, v15, v1
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v16, v16, v1
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, v17, v1
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v18, v18, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, v19, v1
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v20, v20, v1
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, v21, v1
	s_clause 0xd
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	buffer_load_u8 v8, v8, s[16:19], 0 offen
	buffer_load_u8 v9, v9, s[16:19], 0 offen
	buffer_load_u8 v10, v10, s[16:19], 0 offen
	buffer_load_u8 v11, v11, s[16:19], 0 offen
	buffer_load_u8 v12, v12, s[16:19], 0 offen
	buffer_load_u8 v13, v13, s[16:19], 0 offen
	buffer_load_u8 v14, v14, s[16:19], 0 offen
	buffer_load_u8 v15, v15, s[16:19], 0 offen
	buffer_load_u8 v16, v16, s[16:19], 0 offen
	buffer_load_u8 v17, v17, s[16:19], 0 offen
	buffer_load_u8 v18, v18, s[16:19], 0 offen
	buffer_load_u8 v19, v19, s[16:19], 0 offen
	buffer_load_u8 v20, v20, s[16:19], 0 offen
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v3, v0, v1
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, v0, v1
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	buffer_load_u8 v21, v21, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b8 v177, v2
	s_waitcnt vmcnt(2)
	ds_store_b8 v177, v3 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v177, v4 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v177, v5 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v0
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	ds_load_2addr_b64 v[39:42], v2 offset1:32
	ds_load_2addr_b64 v[222:225], v2 offset0:64 offset1:96
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[226:229], v0 offset1:32
	ds_load_2addr_b64 v[250:253], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:328
	scratch_load_b64 v[3:4], off, off offset:336
	scratch_load_b64 v[4:5], off, off offset:344
	ds_store_b8 v177, v6
	ds_store_b8 v177, v7 offset:256
	ds_store_b8 v177, v8 offset:512
	ds_store_b8 v177, v9 offset:768
	ds_store_b8 v177, v10 offset:1024
	ds_store_b8 v177, v11 offset:1280
	ds_store_b8 v177, v12 offset:1536
	ds_store_b8 v177, v13 offset:1792
	ds_store_b8 v177, v14 offset:2048
	ds_store_b8 v177, v15 offset:2304
	ds_store_b8 v177, v16 offset:2560
	ds_store_b8 v177, v17 offset:2816
	ds_store_b8 v177, v18 offset:3072
	ds_store_b8 v177, v19 offset:3328
	ds_store_b8 v177, v20 offset:3584
	ds_store_b8 v177, v21 offset:3840
	s_clause 0xc                            ; 104-byte Folded Reload
	scratch_load_b64 v[5:6], off, off offset:352
	scratch_load_b64 v[6:7], off, off offset:360
	scratch_load_b64 v[7:8], off, off offset:368
	scratch_load_b64 v[8:9], off, off offset:376
	scratch_load_b64 v[9:10], off, off offset:384
	scratch_load_b64 v[10:11], off, off offset:392
	scratch_load_b64 v[11:12], off, off offset:400
	scratch_load_b64 v[12:13], off, off offset:408
	scratch_load_b64 v[13:14], off, off offset:416
	scratch_load_b64 v[14:15], off, off offset:424
	scratch_load_b64 v[15:16], off, off offset:432
	scratch_load_b64 v[16:17], off, off offset:440
	scratch_load_b64 v[17:18], off, off offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v2, v2, v1
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v3, v3, v1
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v4, v4, v1
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v5, v5, v1
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v6, v6, v1
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v7, v7, v1
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v8, v8, v1
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v9, v9, v1
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v10, v10, v1
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v11, v11, v1
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v12, v12, v1
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v13, v13, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v14, v14, v1
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v15, v15, v1
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, v16, v1
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, v17, v1
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	buffer_load_u8 v5, v5, s[16:19], 0 offen
	buffer_load_u8 v6, v6, s[16:19], 0 offen
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	buffer_load_u8 v8, v8, s[16:19], 0 offen
	buffer_load_u8 v17, v9, s[16:19], 0 offen
	buffer_load_u8 v18, v10, s[16:19], 0 offen
	buffer_load_u8 v19, v11, s[16:19], 0 offen
	buffer_load_u8 v20, v12, s[16:19], 0 offen
	buffer_load_u8 v13, v13, s[16:19], 0 offen
	buffer_load_u8 v14, v14, s[16:19], 0 offen
	buffer_load_u8 v15, v15, s[16:19], 0 offen
	buffer_load_u8 v16, v16, s[16:19], 0 offen
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s18, s36, s35
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v21, 0, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s18, s18, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[9:12], v21 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[190:197], v[9:10], v[39:40], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[11:12], v[39:40], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[9:10], v[41:42], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[11:12], v[41:42], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[9:10], v[222:223], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[242:249], v[11:12], v[222:223], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[11:12], v[224:225], v[182:189] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[172:175], v0 offset1:4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v177, v2
	ds_store_b8 v177, v3 offset:256
	ds_store_b8 v177, v4 offset:512
	ds_store_b8 v177, v5 offset:768
	ds_store_b8 v177, v6 offset:1024
	ds_store_b8 v177, v7 offset:1280
	ds_store_b8 v177, v8 offset:1536
	ds_store_b8 v177, v17 offset:1792
	ds_store_b8 v177, v18 offset:2048
	ds_store_b8 v177, v19 offset:2304
	ds_store_b8 v177, v20 offset:2560
	ds_store_b8 v177, v13 offset:2816
	ds_store_b8 v177, v14 offset:3072
	ds_store_b8 v177, v15 offset:3328
	ds_store_b8 v177, v16 offset:3584
	ds_store_b8 v177, v1 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[76:79], v21 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[224:225], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[172:173], v[226:227], v[190:197] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[252:253], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[174:175], v[226:227], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[242:249], v[174:175], v[250:251], v[242:249] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[174:175], v[228:229], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[174:175], v[252:253], v[164:171] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[39:40], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[39:40], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[41:42], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[78:79], v[41:42], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[76:77], v[222:223], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[78:79], v[222:223], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[76:77], v[224:225], v[182:189] neg_lo:[1,1,0]
	v_dual_mov_b32 v222, v134 :: v_dual_mov_b32 v223, v72
	v_dual_mov_b32 v134, v107 :: v_dual_mov_b32 v107, v66
	v_wmma_i32_16x16x16_iu4 v[65:72], v[78:79], v[224:225], v[182:189] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[76:79], v0 offset1:4
	v_mov_b32_e32 v188, v143
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v197
	v_mov_b32_e32 v197, v154
	v_cvt_f32_i32_e32 v154, v3
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[231:238], v[172:173], v[250:251], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[172:173], v[228:229], v[206:213] neg_lo:[1,1,0]
	v_mov_b32_e32 v185, v94
	v_mov_b32_e32 v189, v142
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v194
	v_cvt_f32_i32_e32 v183, v234
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v3, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v206
	v_mov_b32_e32 v206, v109
	v_cvt_f32_i32_e32 v109, v5
	v_cvt_f32_i32_e32 v94, v235
	v_cvt_f32_i32_e32 v113, v207
	v_cvt_f32_i32_e32 v105, v208
	v_cvt_f32_i32_e32 v99, v209
	v_cvt_f32_i32_e32 v209, v213
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[226:227], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[78:79], v[228:229], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[78:79], v[250:251], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[78:79], v[252:253], v[65:72] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v78, v192
	v_mov_b32_e32 v192, v97
	v_cvt_f32_i32_e32 v97, v1
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v22
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[57:64], v[76:77], v[252:253], v[57:64] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v79, v193
	v_mov_b32_e32 v193, v150
	v_cvt_f32_i32_e32 v150, v2
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v23
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v2, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[226:227], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v227, v205
	v_cvt_f32_i32_e32 v205, v4
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v24
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v4, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[76:77], v[250:251], v[41:48] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v251, v199
	v_cvt_f32_i32_e32 v199, v247
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v247, v59
	v_mov_b32_e32 v59, v114
	scratch_load_b32 v114, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[228:229], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v77, v191
	v_mov_b32_e32 v191, v82
	v_cvt_f32_i32_e32 v76, v190
	v_cvt_f32_i32_e32 v190, v218
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v235, v11
	v_cvt_f32_i32_e32 v234, v12
	v_cvt_f32_i32_e32 v218, v13
	v_cvt_f32_i32_e32 v23, v21
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v39, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v36, v49
	v_cvt_f32_i32_e32 v49, v62
	v_mov_b32_e32 v62, v123
	v_cvt_f32_i32_e32 v226, v45
	v_cvt_f32_i32_e32 v45, v67
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v182, v232
	v_cvt_f32_i32_e32 v207, v6
	v_cvt_f32_i32_e32 v208, v7
	v_cvt_f32_i32_e32 v232, v8
	v_cvt_f32_i32_e32 v174, v196
	v_cvt_f32_i32_e32 v196, v203
	v_cvt_f32_i32_e32 v224, v202
	v_cvt_f32_i32_e32 v255, v212
	v_cvt_f32_i32_e32 v194, v219
	v_cvt_f32_i32_e32 v212, v217
	v_mov_b32_e32 v202, v101
	v_cvt_f32_i32_e32 v101, v243
	v_cvt_f32_i32_e32 v203, v244
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v217, v14
	v_cvt_f32_i32_e32 v219, v32
	v_cvt_f32_i32_e32 v244, v42
	v_cvt_f32_i32_e32 v243, v43
	v_cvt_f32_i32_e32 v225, v46
	v_cvt_f32_i32_e32 v42, v65
	v_dual_mov_b32 v65, v106 :: v_dual_mov_b32 v106, v129
	v_mov_b32_e32 v129, v155
	v_mov_b32_e32 v155, v133
	v_mov_b32_e32 v133, v153
	v_mov_b32_e32 v153, v230
	v_cvt_f32_i32_e32 v32, v71
	v_mov_b32_e32 v71, v148
	v_cvt_f32_i32_e32 v46, v66
	v_dual_mov_b32 v66, v107 :: v_dual_mov_b32 v107, v134
	v_cvt_f32_i32_e32 v43, v68
	v_mov_b32_e32 v68, v146
	v_mov_b32_e32 v146, v159
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v250, v198
	v_cvt_f32_i32_e32 v252, v200
	v_cvt_f32_i32_e32 v0, v211
	v_cvt_f32_i32_e32 v198, v215
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v16
	v_cvt_f32_i32_e32 v200, v33
	v_cvt_f32_i32_e32 v22, v38
	v_cvt_f32_i32_e32 v38, v35
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v48, v63
	v_dual_mov_b32 v63, v138 :: v_dual_mov_b32 v138, v239
	v_cvt_f32_i32_e32 v33, v72
	v_mov_b32_e32 v72, v223
	v_cvt_f32_i32_e32 v35, v69
	v_mov_b32_e32 v69, v131
	v_mov_b32_e32 v131, v157
	v_dual_mov_b32 v239, v84 :: v_dual_mov_b32 v134, v222
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v186, v236
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v236, v10
	v_cvt_f32_i32_e32 v24, v40
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v10, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v82, v231
	v_cvt_f32_i32_e32 v173, v195
	v_cvt_f32_i32_e32 v184, v233
	v_cvt_f32_i32_e32 v178, v210
	v_cvt_f32_i32_e32 v195, v220
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v31
	v_cvt_f32_i32_e32 v31, v70
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v214
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v214, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v26, v37
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v187, v216
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v15
	v_cvt_f32_i32_e32 v15, v29
	v_cvt_f32_i32_e32 v29, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v229, v204
	v_cvt_f32_i32_e32 v204, v245
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v245, v41
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v221
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v221, v30
	v_cvt_f32_i32_e32 v37, v52
	v_cvt_f32_i32_e32 v30, v53
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v228, v237
	v_cvt_f32_i32_e32 v142, v238
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v233, v61
	v_dual_mov_b32 v61, v149 :: v_dual_mov_b32 v70, v147
	v_cvt_f32_i32_e32 v237, v28
	v_cvt_f32_i32_e32 v28, v55
	v_cvt_f32_i32_e32 v238, v27
	v_cvt_f32_i32_e32 v27, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v253, v201
	v_cvt_f32_i32_e32 v143, v242
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v231, v246
	v_cvt_f32_i32_e32 v201, v248
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v242, v44
	v_cvt_f32_i32_e32 v44, v47
	v_cvt_f32_i32_e32 v47, v64
	v_mov_b32_e32 v64, v120
	v_mov_b32_e32 v120, v141
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v249, v249
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v246, v60
	v_cvt_f32_i32_e32 v248, v58
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mov_b32 v230, v81 :: v_dual_mov_b32 v81, v86
	v_mov_b32_e32 v84, v88
	v_dual_mov_b32 v86, v91 :: v_dual_mov_b32 v91, v100
	v_mov_b32_e32 v100, v118
	v_mov_b32_e32 v118, v104
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v3, s36, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s36, v2, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, s36, v4, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s36, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s36, s36, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, v114, s18, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s36, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v11, v2, s[20:23], 0 offen
	buffer_load_u16 v12, v3, s[20:23], 0 offen
	buffer_load_u16 v13, v4, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v123, off, off offset:464 ; 4-byte Folded Reload
	v_dual_mov_b32 v67, v116 :: v_dual_mov_b32 v116, v181
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v2, 16, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v213, 16, v1
	v_mov_b32_e32 v159, v163
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 16, v13
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v213, v76
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v123, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v115
	ds_load_b128 v[5:8], v115 offset:16
	v_mov_b32_e32 v76, v144
	v_mov_b32_e32 v144, v80
	v_dual_mov_b32 v80, v85 :: v_dual_mov_b32 v85, v90
	v_mov_b32_e32 v104, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v0
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v51, off, off offset:4
	scratch_load_b32 v57, off, off offset:60
	scratch_load_b32 v50, off, off
	scratch_load_b32 v53, off, off offset:52
	scratch_load_b32 v52, off, off offset:8
	v_mov_b32_e32 v139, v119
	scratch_load_b32 v55, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v155, v14, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v14, v213, v77 :: v_dual_fmac_f32 v93, v0, v6
	v_mul_f32_e32 v0, v11, v255
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v77, off, off offset:92
	scratch_load_b32 v222, off, off offset:100
	scratch_load_b32 v163, off, off offset:96
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v14, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v213, v78
	scratch_load_b32 v78, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v209
	scratch_load_b32 v209, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v241, v14, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v213, v79
	scratch_load_b32 v79, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v94 :: v_dual_fmac_f32 v153, v14, v4
	v_mul_f32_e32 v14, v11, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v186
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v240, v14, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v14, v11, v113 :: v_dual_fmac_f32 v69, v0, v6
	v_mul_f32_e32 v0, v12, v228
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v14, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v11, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v142 :: v_dual_fmac_f32 v239, v14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v14, v11, v99 :: v_dual_fmac_f32 v71, v0, v8
	v_mul_f32_e32 v0, v13, v109
	v_mov_b32_e32 v94, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v230, v14, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v14, v12, v82 :: v_dual_mov_b32 v109, v206
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v0, v5 :: v_dual_mul_f32 v0, v13, v207
	scratch_load_b32 v207, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v76, v14, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v12, v182
	scratch_load_b32 v206, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v77, v14, v2 :: v_dual_mul_f32 v14, v12, v184
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v14, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v12, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v14, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v14, v13, v97 :: v_dual_mov_b32 v97, v192
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v14, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:56
	scratch_load_b32 v14, off, off offset:20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v13, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v14, v1, v2
	scratch_load_b32 v2, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v13, v154
	scratch_store_b32 off, v51, off offset:4 ; 4-byte Folded Spill
	scratch_load_b32 v51, off, off offset:32 ; 4-byte Folded Reload
	scratch_store_b32 off, v14, off offset:20 ; 4-byte Folded Spill
	scratch_load_b32 v14, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v1, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v13, v205
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, v1, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v213, v172
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v213, v173
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v1, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v213, v174
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v174, off, off offset:104
	scratch_load_b32 v147, off, off offset:152
	scratch_load_b32 v205, off, off offset:80
	scratch_load_b32 v148, off, off offset:76
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v213, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v222, v1, v8 :: v_dual_mul_f32 v1, v11, v178
	v_fmac_f32_e32 v92, v1, v5
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	v_fmac_f32_e32 v50, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v208
	scratch_load_b32 v208, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v0, v7
	scratch_store_b32 off, v50, off         ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:68
	scratch_load_b32 v50, off, off offset:28
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v232
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v1, v0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:8
	scratch_store_b32 off, v2, off offset:24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v250, v213
	scratch_load_b32 v52, off, off offset:36 ; 4-byte Folded Reload
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v115 offset:512
	ds_load_b128 v[5:8], v115 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v118, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v213, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v213, v252
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v91, v0, v3 :: v_dual_mul_f32 v0, v213, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v100, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v210, v11
	v_mov_b32_e32 v178, v74
	v_dual_mov_b32 v74, v75 :: v_dual_fmac_f32 v83, v0, v1
	v_mul_f32_e32 v0, v11, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v187
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v143, v12 :: v_dual_mov_b32 v143, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v101 :: v_dual_mov_b32 v101, v202
	scratch_load_b32 v202, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v203
	scratch_load_b32 v203, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v204
	scratch_load_b32 v204, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v54, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v164, v13
	v_mov_b32_e32 v142, v189
	scratch_store_b32 off, v53, off offset:52 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:64
	scratch_load_b32 v53, off, off offset:40
	scratch_store_b32 off, v54, off offset:68 ; 4-byte Folded Spill
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v165
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:72
	scratch_load_b32 v54, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v82, v191 :: v_dual_fmac_f32 v67, v0, v3
	v_mul_f32_e32 v0, v13, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v213, v224
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v196, v213
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v229, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v179, v0, v7 :: v_dual_mul_f32 v0, v227, v213
	v_dual_fmac_f32 v87, v0, v8 :: v_dual_mul_f32 v0, v11, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v195, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v211, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v0, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v150, v193 :: v_dual_fmac_f32 v63, v0, v5
	v_mul_f32_e32 v0, v199, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v201, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v249, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v0, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v154, v197 :: v_dual_fmac_f32 v65, v0, v5
	v_mul_f32_e32 v0, v169, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v170, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v151, v0, v7 :: v_dual_mul_f32 v0, v171, v13
	v_dual_fmac_f32 v159, v0, v8 :: v_dual_add_nc_u32 v0, s78, v114
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s18, 1
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v123, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v115
	ds_load_b128 v[5:8], v115 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v9
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v21, v11 :: v_dual_fmac_f32 v158, v0, v1
	v_mul_f32_e32 v0, v213, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v125, v0, v3 :: v_dual_mul_f32 v0, v213, v234
	v_fmac_f32_e32 v124, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v0, v1 :: v_dual_mul_f32 v0, v11, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v32, v13
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v80, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v237
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v244
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v10
	v_mul_f32_e32 v10, v24, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v107, v0, v1 :: v_dual_mul_f32 v0, v13, v248
	v_fmac_f32_e32 v96, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v55, v0, v3 :: v_dual_mul_f32 v0, v13, v246
	v_dual_fmac_f32 v205, v0, v4 :: v_dual_mul_f32 v0, v213, v218
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v217
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v0, v6 :: v_dual_mul_f32 v0, v213, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v215
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v11, v15 :: v_dual_mul_f32 v15, v28, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v143, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v221
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v6 :: v_dual_mul_f32 v0, v11, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v219
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v225
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v16
	v_mul_f32_e32 v16, v29, v12
	scratch_store_b32 off, v56, off offset:56 ; 4-byte Folded Spill
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v57, v0, v8 :: v_dual_mul_f32 v0, v13, v233
	v_fmac_f32_e32 v14, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v0, v6 :: v_dual_mul_f32 v0, v13, v48
	v_fmac_f32_e32 v64, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v52, v0, v8
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[1:4], v115 offset:512
	ds_load_b128 v[5:8], v115 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v214, v213
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v59, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v17, v31, v13 :: v_dual_fmac_f32 v204, v9, v7
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v203, v10, v8 :: v_dual_fmac_f32 v62, v15, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v109, v0, v2 :: v_dual_mul_f32 v0, v213, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v19, v33, v13 :: v_dual_fmac_f32 v202, v16, v8
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v178, v17, v6
	v_fmac_f32_e32 v98, v18, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v108, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v19, v8
	v_fmac_f32_e32 v102, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v207, v0, v1 :: v_dual_mul_f32 v0, v11, v39
	v_fmac_f32_e32 v135, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v60, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v42, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v46
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v51, v0, v2 :: v_dual_mul_f32 v0, v13, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v2, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v54, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v43
	v_mul_f32_e32 v3, v213, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v13, v13, v35 :: v_dual_fmac_f32 v50, v0, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v14, off offset:16
	scratch_store_b32 off, v51, off offset:32
	v_mul_f32_e32 v14, v27, v12
	v_mul_f32_e32 v12, v12, v30
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	v_dual_mul_f32 v4, v22, v11 :: v_dual_mul_f32 v11, v11, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v3, v5
	v_fmac_f32_e32 v58, v12, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v57, off offset:60
	scratch_store_b32 off, v60, off offset:72
	scratch_load_b32 v60, off, off offset:128 ; 4-byte Folded Reload
	v_fmac_f32_e32 v150, v11, v5
	v_fmac_f32_e32 v206, v4, v6
	v_fmac_f32_e32 v61, v14, v6
	v_fmac_f32_e32 v53, v13, v5
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v52, off offset:36
	scratch_store_b32 off, v55, off offset:48
	scratch_store_b32 off, v54, off offset:44
	scratch_store_b32 off, v50, off offset:28
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v58, off offset:64
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v1, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v1, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v213
	v_dual_mul_f32 v2, v2, v213 :: v_dual_fmac_f32 v209, v0, v6
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v60, v2, v8
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v172, off, off offset:468
	scratch_load_b32 v9, off, off offset:484
	scratch_load_b32 v7, off, off offset:480
	scratch_load_b32 v173, off, off offset:472
	scratch_load_b32 v175, off, off offset:476
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v5, 8, v172
.LBB0_7:                                ; %._crit_edge
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v123, off, off offset:60
	scratch_load_b32 v115, off, off offset:56
	scratch_load_b32 v114, off, off offset:48
	scratch_load_b32 v90, off, off offset:40
	scratch_load_b32 v75, off, off offset:32
	scratch_load_b32 v149, off, off offset:64
	scratch_load_b32 v119, off, off offset:72
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(7)
	v_lshrrev_b32_e32 v10, 7, v175
	v_and_b32_e32 v8, 63, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v208
	v_mul_f32_e32 v199, 0xbfb8aa3b, v109
	v_mul_f32_e32 v191, 0xbfb8aa3b, v137
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v10
	v_or_b32_e32 v6, 60, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v181, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v202
	v_dual_mul_f32 v201, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v103
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 58, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s1, s72, v6
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_ci_u32_e64 v12, null, s73, 0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, s1, s72, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s72, v8
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v10
	v_or_b32_e32 v6, 54, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[11:12]
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v10
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s6, s72, v6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 50, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s10, s72, v6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 46, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s14, s72, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v6, 42, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v0
	v_add_co_ci_u32_e64 v12, null, s73, 0, s14
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[13:14]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v13, s18, s72, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[11:12]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v11, s22, s72, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v12, null, s73, 0, s22
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v59
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[13:14]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[11:12]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[11:12]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v12, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v209
	v_mul_f32_e32 v13, 0xbfb8aa3b, v156
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v14, 0xbfb8aa3b, v158
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v17
	v_mul_f32_e32 v22, 0xbfb8aa3b, v203
	v_mul_f32_e32 v192, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v19, 0, 0x42800000, s26
	v_mul_f32_e32 v186, 0xbfb8aa3b, v154
	v_mul_f32_e32 v182, 0xbfb8aa3b, v128
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v18, 0xbfb8aa3b, v60
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v16, v16
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v209
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v18
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s26
	v_mul_f32_e32 v184, 0xbfb8aa3b, v131
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v21, 0, 0x42800000, s27
	v_mul_f32_e32 v30, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s27
	v_ldexp_f32 v0, v16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, 0xbfb8aa3b, v207 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v22
	v_mul_f32_e32 v170, 0xbfb8aa3b, v205
	v_dual_mul_f32 v37, 0xbfb8aa3b, v121 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v21, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_ldexp_f32 v15, v17, v15
	v_ldexp_f32 v17, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v25, 0, 0x42800000, s27
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s27
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v26
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v0, v0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v21, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v21, 0xbfb8aa3b, v204
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v203
	v_cndmask_b32_e64 v29, 0, 0x42800000, s27
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v23, 0, 0x42800000, s26
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s26
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v204
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v16, v20, v16
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v20, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v125 :: v_dual_add_f32 v16, 1.0, v16
	v_dual_mul_f32 v31, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v200, 0xbfb8aa3b, v117
	v_ldexp_f32 v19, v21, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v16, v16, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v23, v22
	v_ldexp_f32 v22, v25, v24
	v_mul_f32_e32 v25, 0xbfb8aa3b, v62
	v_mul_f32_e32 v23, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v187, 0xbfb8aa3b, v134
	v_dual_mul_f32 v197, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v198, 0xbfb8aa3b, v108
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v84
	v_dual_mul_f32 v196, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v80
	v_mul_f32_e32 v194, 0xbfb8aa3b, v81
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v189, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v94
	v_dual_mul_f32 v185, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v135
	v_dual_mul_f32 v183, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v127
	v_dual_mul_f32 v39, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v107
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v24, v20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v113, off, off offset:16
	scratch_load_b32 v88, off, off offset:36
	scratch_load_b32 v105, off, off offset:44
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v6, 36, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[3:4]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v8, s72, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v166, 0xbfb8aa3b, v64
	v_mul_f32_e32 v36, 0xbfb8aa3b, v120
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	v_add_f32_e32 v22, 1.0, v22
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v38, 0xbfb8aa3b, v115
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v33, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v27, 0, 0x42800000, s26
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v62
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v23, v25, v23
	v_ldexp_f32 v25, v29, v28
	v_dual_mul_f32 v28, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v24, v27, v26
	v_dual_mul_f32 v26, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v178
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v27
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v42, 0, 0x42800000, s26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v35, 0xbfb8aa3b, v119
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v104 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v178
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, s26
	v_mul_f32_e32 v171, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v98 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, vcc_lo, v59, v0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v47, v29
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v41, v42, v41
	v_ldexp_f32 v42, v46, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v43, v47, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v45, v48, 1.0
	v_div_scale_f32 v46, null, v15, v15, v209
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v44, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v51, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v45, v51, v49
	v_fma_f32 v52, -v46, v44, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v53, v48
	v_fmac_f32_e32 v44, v52, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v47, null, v17, v17, v208
	v_div_scale_f32 v52, s26, v209, v15, v209
	v_div_scale_f32 v55, s27, v208, v17, v208
	v_rcp_f32_e32 v50, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, v52, v44
	v_fma_f32 v45, -v45, v51, v49
	v_fma_f32 v49, -v46, v53, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v45, v45, v48, v51
	v_rcp_f32_e32 v48, v58
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v54, -v47, v50, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v49, v44
	v_div_fixup_f32 v0, v45, v0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, null, v18, v18, v60
	v_fma_f32 v45, -v46, v53, v52
	v_div_scale_f32 v46, s28, v60, v18, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v54
	v_mul_f32_e32 v57, v55, v50
	v_div_fmas_f32 v44, v45, v44, v53
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v47, v57, v55
	v_div_fixup_f32 v15, v44, v15, v209
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v54, v56, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v49, v50
	v_fma_f32 v49, -v58, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_fmac_f32 v56, v51, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, s26, v207, v16, v207
	v_fma_f32 v45, -v47, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v49, v48
	v_mul_f32_e32 v47, v46, v56
	v_div_scale_f32 v49, null, v19, v19, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v45, v50, v57
	v_mul_f32_e32 v53, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v54, v47, v46
	v_rcp_f32_e32 v50, v49
	v_div_scale_f32 v55, null, v21, v21, v204
	v_div_fixup_f32 v17, v45, v17, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v52, v56
	v_fma_f32 v44, -v58, v53, v51
	v_rcp_f32_e32 v45, v55
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v46, -v54, v47, v46
	v_fma_f32 v52, -v49, v50, 1.0
	v_div_scale_f32 v54, null, v22, v22, v203
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v44, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v44, s27, v206, v19, v206
	v_rcp_f32_e32 v52, v54
	v_fma_f32 v57, -v55, v45, 1.0
	v_div_fmas_f32 v46, v46, v56, v47
	v_fma_f32 v47, -v58, v53, v51
	v_mul_f32_e32 v51, v44, v50
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v45, v57, v45
	v_div_scale_f32 v56, s28, v204, v21, v204
	v_div_scale_f32 v58, null, v20, v20, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v54, v52, 1.0
	v_div_fmas_f32 v47, v47, v48, v53
	v_fma_f32 v48, -v49, v51, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v53, v56, v45 :: v_dual_fmac_f32 v52, v57, v52
	v_rcp_f32_e32 v57, v58
	v_div_scale_f32 v59, s26, v203, v22, v203
	v_fmac_f32_e32 v51, v48, v50
	v_div_scale_f32 v48, null, v23, v23, v61
	v_div_fixup_f32 v18, v46, v18, v60
	v_div_fixup_f32 v16, v47, v16, v207
	v_fma_f32 v46, -v55, v53, v56
	v_mul_f32_e32 v47, v59, v52
	v_fma_f32 v44, -v49, v51, v44
	v_rcp_f32_e32 v49, v48
	v_fma_f32 v60, -v58, v57, 1.0
	v_fmac_f32_e32 v53, v46, v45
	v_fma_f32 v46, -v54, v47, v59
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v60, v57
	v_div_scale_f32 v60, s29, v139, v20, v139
	v_div_fmas_f32 v44, v44, v50, v51
	v_fma_f32 v50, -v55, v53, v56
	v_fmac_f32_e32 v47, v46, v52
	v_fma_f32 v51, -v48, v49, 1.0
	s_mov_b32 vcc_lo, s28
	v_mul_f32_e32 v46, v60, v57
	v_div_fmas_f32 v45, v50, v45, v53
	v_fma_f32 v50, -v54, v47, v59
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, null, v24, v24, v62
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v53, -v58, v46, v60
	v_div_scale_f32 v54, s27, v61, v23, v61
	v_div_fmas_f32 v47, v50, v52, v47
	v_rcp_f32_e32 v50, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v53, v57
	v_mul_f32_e32 v52, v54, v49
	v_div_fixup_f32 v19, v44, v19, v206
	v_div_fixup_f32 v44, v45, v21, v204
	v_div_fixup_f32 v45, v47, v22, v203
	v_fma_f32 v21, -v58, v46, v60
	v_fma_f32 v22, -v48, v52, v54
	v_div_scale_f32 v47, null, v25, v25, v202
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v51, v50, 1.0
	s_mov_b32 vcc_lo, s29
	v_fmac_f32_e32 v52, v22, v49
	v_div_fmas_f32 v21, v21, v57, v46
	v_rcp_f32_e32 v46, v47
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v53, null, v26, v26, v104
	v_div_scale_f32 v22, s26, v62, v24, v62
	v_div_fixup_f32 v55, v21, v20, v139
	v_fma_f32 v20, -v48, v52, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v53
	v_mul_f32_e32 v21, v22, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v47, v46, 1.0
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v20, v20, v49, v52
	v_fma_f32 v49, -v51, v21, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, null, v41, v41, v178
	v_fma_f32 v56, -v53, v54, 1.0
	v_div_scale_f32 v52, s27, v202, v25, v202
	v_div_fixup_f32 v57, v20, v23, v61
	v_fmac_f32_e32 v21, v49, v50
	v_rcp_f32_e32 v20, v48
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, null, v42, v42, v98
	v_mul_f32_e32 v23, v52, v46
	v_div_scale_f32 v49, s28, v104, v26, v104
	v_fma_f32 v22, -v51, v21, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v60, v56
	v_div_scale_f32 v61, null, v43, v43, v89
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v51, -v47, v23, v52
	v_mul_f32_e32 v58, v49, v54
	v_fma_f32 v59, -v48, v20, 1.0
	v_div_fmas_f32 v21, v22, v50, v21
	v_rcp_f32_e32 v50, v61
	v_fmac_f32_e32 v23, v51, v46
	v_fma_f32 v22, -v53, v58, v49
	v_fmac_f32_e32 v20, v59, v20
	v_div_scale_f32 v51, s26, v178, v41, v178
	v_fma_f32 v59, -v56, v60, 1.0
	v_div_fixup_f32 v62, v21, v24, v62
	v_fma_f32 v21, -v47, v23, v52
	v_fmac_f32_e32 v58, v22, v54
	v_mul_f32_e32 v22, v51, v20
	v_fmac_f32_e32 v60, v59, v60
	v_div_scale_f32 v24, s29, v98, v42, v98
	v_fma_f32 v47, -v61, v50, 1.0
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v21, v21, v46, v23
	v_fma_f32 v23, -v53, v58, v49
	v_fma_f32 v46, -v48, v22, v51
	v_dual_mul_f32 v49, v24, v60 :: v_dual_fmac_f32 v50, v47, v50
	v_div_scale_f32 v47, s27, v89, v43, v89
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v22, v46, v20
	v_div_fmas_f32 v23, v23, v54, v58
	v_fma_f32 v46, -v56, v49, v24
	v_mul_f32_e32 v52, v47, v50
	v_div_fixup_f32 v53, v21, v25, v202
	v_fma_f32 v21, -v48, v22, v51
	v_div_fixup_f32 v54, v23, v26, v104
	v_fmac_f32_e32 v49, v46, v60
	v_fma_f32 v23, -v61, v52, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v21, v20, v22
	v_fma_f32 v20, -v56, v49, v24
	v_fmac_f32_e32 v52, v23, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s28
	v_cndmask_b32_e64 v24, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v61, v52, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v158
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v60, v49
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v23, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_exp_f32_e32 v12, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v14, v41, v178
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v118, v0 :: v_dual_mul_f32 v25, v180, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v20, v42, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v22, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v140, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v12, v46
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v13, v43, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v21, v74, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v44, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v142, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v0, v0, v158
	v_div_scale_f32 v45, null, v44, v44, v156
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v179, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v87, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v12, v14
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v122, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, vcc_lo, v158, v0, v158
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v43, v47, 1.0
	v_div_scale_f32 v55, s26, v156, v44, v156
	v_fma_f32 v11, -v45, v49, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v83, v16
	v_mul_f32_e32 v16, v174, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v14, v161, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v11, v49
	v_dual_fmac_f32 v47, v12, v47 :: v_dual_mul_f32 v12, v151, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v50, v50, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v55, v49
	v_mul_f32_e32 v53, v51, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s27, v124, v50, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v43, v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v48, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v47
	v_fma_f32 v43, -v43, v53, v51
	v_fma_f32 v51, -v45, v42, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v176, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v47, v53
	v_fmac_f32_e32 v42, v51, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s28
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fixup_f32 v0, v43, v0, v158
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v152, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v52, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v45, v42, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v54, null, v41, v41, v125
	v_fmac_f32_e32 v48, v46, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, s28, v125, v41, v125
	v_rcp_f32_e32 v46, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v53, v56, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v162, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v43, v49, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v52, v53, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v42, v44, v156
	v_fma_f32 v57, -v54, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v45, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v51, v47
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v57, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v52, v53, v56
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v43, v55, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v45, v45, v97
	v_div_fmas_f32 v48, v52, v48, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v54, v43, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v111
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v31, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v57
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v54, v43, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v31, v49
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v46, v43
	v_fma_f32 v46, -v56, v52, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v41, v125
	v_fmac_f32_e32 v52, v46, v52
	v_div_scale_f32 v46, vcc_lo, v97, v45, v97
	v_div_scale_f32 v47, null, v43, v43, v117
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v46, v52
	v_div_fixup_f32 v31, v48, v50, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v124, v155, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v53, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v56, v57, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v125, v133, v42
	v_mul_f32_e32 v30, v241, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v42, 1.0, v49 :: v_dual_fmac_f32 v57, v44, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s26, v117, v43, v117
	v_fma_f32 v48, -v47, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v50, null, v42, v42, v110
	v_fma_f32 v46, -v56, v57, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v48, v54
	v_div_fmas_f32 v46, v46, v52, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v44, v54
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v0, v46, v45, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v47, v49, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v51, v51, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v109 :: v_dual_fmac_f32 v49, v53, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v50, v52, 1.0
	v_rcp_f32_e32 v41, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v159, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s28, v110, v42, v110
	v_fma_f32 v44, -v47, v49, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v46, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v55, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v44, v54, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v53, v52
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s27, v111, v51, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v49, v53
	v_dual_mul_f32 v56, v48, v41 :: v_dual_fmac_f32 v49, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v55, v56, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v55, v56, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v45, v45, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v41, v48, v41, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v51, v111
	v_div_scale_f32 v58, null, v45, v45, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v163, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v58
	v_div_fixup_f32 v43, v44, v43, v117
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v50, v49, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v146, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v44, v44, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v46, v46, v52, v49
	v_fma_f32 v51, -v58, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v46, v42, v110
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s26, v109, v45, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v51, v47
	v_fma_f32 v53, -v50, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v48, v48, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v58, v52, v51
	v_fmac_f32_e32 v49, v53, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s27, v108, v44, v108
	v_fmac_f32_e32 v52, v54, v47
	v_rcp_f32_e32 v41, v55
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v53, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v222, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v58, v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v46, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v153, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v50, v54, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v47, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v55, v41, 1.0
	v_fmac_f32_e32 v54, v51, v49
	v_div_fixup_f32 v43, v43, v45, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v0, v0, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v54, v53
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, s26, v102, v48, v102
	v_rcp_f32_e32 v47, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v49, v54
	v_mul_f32_e32 v53, v42, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v46, v47, 1.0
	v_div_fixup_f32 v44, v45, v44, v108
	v_fma_f32 v45, -v55, v53, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s28
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s27, v103, v0, v103
	v_fmac_f32_e32 v53, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v51, v50
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v54, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v55, v53, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v52, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v46, v50, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v45, v45, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v50, v55, v47 :: v_dual_add_f32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v56
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v52
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v86, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v49, v49, v84
	v_div_fmas_f32 v41, v42, v41, v53
	v_fma_f32 v42, -v46, v50, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v57
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v58, -v52, v56, 1.0
	v_div_fmas_f32 v42, v42, v47, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v55, v51
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v85, v45, v85
	v_fmac_f32_e32 v56, v58, v56
	v_div_fixup_f32 v0, v42, v0, v103
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v57, v54, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v50, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v51, v54
	v_div_scale_f32 v51, s26, v84, v49, v84
	v_div_scale_f32 v55, null, v47, v47, v81
	v_div_fixup_f32 v41, v41, v48, v102
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v101, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v52, v53, v50
	v_mul_f32_e32 v48, v51, v54
	v_rcp_f32_e32 v58, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v100, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v42, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v0, v56
	v_fma_f32 v0, -v57, v48, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v91, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, s27, v81, v47, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v52, v53, v50
	v_fmac_f32_e32 v48, v0, v54
	v_fma_f32 v0, -v55, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v41, v41, v80
	v_div_fmas_f32 v42, v42, v56, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v57, v48, v51
	v_fmac_f32_e32 v58, v0, v58
	v_rcp_f32_e32 v0, v43
	v_div_fixup_f32 v42, v42, v45, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v45, v46, v58
	v_div_fmas_f32 v44, v44, v54, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v143
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s26, v80, v41, v80
	v_fma_f32 v48, -v43, v0, 1.0
	v_div_fixup_f32 v44, v44, v49, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v51
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v55, v45, v46
	v_fmac_f32_e32 v0, v48, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v137 :: v_dual_fmac_f32 v45, v51, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v144, v44
	v_mul_f32_e32 v100, v240, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v53, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v43, v50, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v55, v45, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v143
	v_fmac_f32_e32 v50, v56, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v52, v48
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v55
	v_div_fmas_f32 v45, v46, v58, v45
	v_fma_f32 v43, -v43, v50, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v46, 1.0, v48 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v43, v0, v50
	v_div_scale_f32 v53, null, v46, v46, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v57
	v_ldexp_f32 v48, v54, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v55, v52, 1.0
	v_rcp_f32_e32 v50, v53
	v_div_fixup_f32 v0, v0, v41, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, vcc_lo, v143, v49, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v239, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v43, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v48, v48, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v53, v50, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v47, v81
	v_mul_f32_e32 v47, v51, v52
	v_rcp_f32_e32 v43, v41
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s26, v137, v46, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v55, v47, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v230, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v44, v54, v50 :: v_dual_fmac_f32 v47, v56, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v43, 1.0
	v_div_scale_f32 v56, null, v0, v0, v95
	v_fma_f32 v42, -v55, v47, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v53, v44, v54
	v_fmac_f32_e32 v43, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v56
	v_div_scale_f32 v55, s27, v94, v48, v94
	v_fmac_f32_e32 v44, v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v52, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v55, v43
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v56, v45, 1.0
	v_div_fixup_f32 v42, v42, v49, v143
	v_fma_f32 v49, -v53, v44, v54
	v_div_scale_f32 v54, s28, v95, v0, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v45, v57, v45 :: v_dual_mul_f32 v92, v92, v42
	v_fma_f32 v53, -v41, v52, v55
	v_div_fmas_f32 v44, v49, v50, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v54, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v53, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s29
	v_ldexp_f32 v47, v51, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v56, v49, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v52, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v53, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v57
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v55, null, v47, v47, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v43, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v55
	v_fma_f32 v54, -v56, v49, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v58
	v_ldexp_f32 v50, v53, v50
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v44, v44, v46, v137
	v_div_fmas_f32 v45, v54, v45, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v55, v52, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v150
	v_ldexp_f32 v43, v43, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v95
	v_div_scale_f32 v51, null, v49, v49, v134
	v_fmac_f32_e32 v52, v50, v52
	v_div_scale_f32 v50, vcc_lo, v135, v47, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v50, v52
	v_div_fixup_f32 v41, v41, v48, v94
	v_div_scale_f32 v57, null, v43, v43, v154
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v138, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v55, v58, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v136, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v57
	v_fma_f32 v48, -v51, v54, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v46, v52
	v_div_scale_f32 v41, s26, v134, v49, v134
	v_dual_fmac_f32 v54, v48, v54 :: v_dual_mul_f32 v93, v93, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v55, v58, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v57, v45, 1.0
	v_mul_f32_e32 v48, v41, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v50, null, v0, v0, v150
	v_div_fmas_f32 v44, v44, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v51, v48, v41
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v42, v44, v47, v135
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, s27, v154, v43, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v53, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v84, v132, v42 :: v_dual_mul_f32 v55, v46, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v50, v52, 1.0
	v_fma_f32 v41, -v51, v48, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v57, v55, v46
	v_div_scale_f32 v53, s28, v150, v0, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v47, v52 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v130
	v_fmac_f32_e32 v55, v44, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v58
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v54, v48
	v_mul_f32_e32 v48, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v57, v55, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v48, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v46, v45, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v51, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v54, v52
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v58, null, v44, v44, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v45, v43, v154
	v_fma_f32 v45, -v50, v48, v53
	v_rcp_f32_e32 v47, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v46, v46, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v45, v52, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v160, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v58, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v87, v82, v0 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v49, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s26, v131, v44, v131
	v_fma_f32 v54, -v50, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, v51, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v85, v148, v41 :: v_dual_fmac_f32 v48, v54, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s27, v130, v46, v130
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v58, v53, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v52, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v0, v0, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v53, v49, v47 :: v_dual_add_f32 v42, 1.0, v45
	v_rcp_f32_e32 v41, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v58, v53, v51
	v_div_fmas_f32 v43, v43, v47, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v42, v42, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v55, v41, 1.0
	v_div_fixup_f32 v43, v43, v44, v131
	v_mul_f32_e32 v49, v54, v48
	v_div_scale_f32 v40, s26, v128, v0, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v45, v41 :: v_dual_mul_f32 v76, v76, v43
	v_fma_f32 v51, -v50, v49, v54
	v_rcp_f32_e32 v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v51, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v50, v49, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v52, -v47, v45, 1.0
	v_div_fmas_f32 v39, v44, v48, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, s28
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v40, v41
	v_fmac_f32_e32 v45, v52, v45
	v_div_fixup_f32 v39, v39, v46, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, s27, v129, v42, v129
	v_fma_f32 v46, -v55, v49, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v38, v51, v50
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v46, v41
	v_mul_f32_e32 v46, v52, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v177
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v55, v49, v40
	v_fma_f32 v53, -v47, v46, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v48, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v38, v38, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v53, v45
	s_mov_b32 vcc_lo, s26
	v_rcp_f32_e32 v53, v48
	v_div_fmas_f32 v40, v40, v41, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v47, v46, v52
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v40, v0, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v45, v46
	v_div_scale_f32 v46, vcc_lo, v127, v38, v127
	v_fma_f32 v55, -v48, v53, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v42, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v49
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v54, null, v44, v44, v126
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v79, v79, v41 :: v_dual_mul_f32 v78, v78, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v46, v53
	v_rcp_f32_e32 v52, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v42, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v49, v40, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v49, v46
	v_div_fmas_f32 v39, v39, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v42
	v_div_fixup_f32 v38, v39, v38, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v68, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v51, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v54, v52, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_fmac_f32 v52, v50, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s26, v126, v44, v126
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v51, null, v45, v45, v115
	v_mul_f32_e32 v41, v50, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v40, -v54, v41, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v40, v52
	v_fma_f32 v40, -v51, v55, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v54, v41, v50
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s27, v115, v45, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v43, v52, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s26, v123, v0, v123
	v_mul_f32_e32 v43, v40, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v41, v41, v44, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v51, v43, v40
	v_mul_f32_e32 v35, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v69, v41 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v44, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v47, v46
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v42, v35, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v44, 1.0, v44 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v49, v37
	v_fma_f32 v40, -v51, v43, v40
	v_div_scale_f32 v50, null, v44, v44, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v47
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v39, v48, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v50
	v_fma_f32 v36, -v42, v35, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v149
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v40, v55, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v50, v49, 1.0
	v_div_scale_f32 v46, null, v39, v39, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v42, v49
	v_div_scale_f32 v42, s27, v121, v44, v121
	v_rcp_f32_e32 v48, v46
	v_div_fmas_f32 v35, v36, v37, v35
	v_div_scale_f32 v36, null, v33, v33, v119
	v_mul_f32_e32 v37, v42, v49
	v_div_fixup_f32 v40, v40, v45, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v35, v0, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v43, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v36
	v_fma_f32 v45, -v50, v37, v42
	v_fma_f32 v47, -v46, v48, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v71, v0
	v_mul_f32_e32 v70, v70, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v35 :: v_dual_fmac_f32 v37, v45, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v47, v48
	v_div_scale_f32 v35, s26, v120, v39, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v36, v43, 1.0
	v_fma_f32 v42, -v50, v37, v42
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v35, v48
	v_div_scale_f32 v45, null, v0, v0, v149
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, s28, v119, v33, v119
	v_div_fmas_f32 v37, v42, v49, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v46, v47, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v40, v43
	v_rcp_f32_e32 v50, v45
	v_div_fixup_f32 v37, v37, v44, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v38, v48
	v_fma_f32 v38, -v36, v41, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v112, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v38, v43
	v_fma_f32 v35, -v46, v47, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v36, -v36, v41, v40
	v_div_fmas_f32 v35, v35, v48, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v40, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v50, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v51, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v39, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v42
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v50, v34, v50
	v_div_fmas_f32 v36, v36, v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v49, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s27, v149, v0, v149
	v_div_fixup_f32 v33, v36, v33, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v34, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v38, v38, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v44, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v40, v40, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v46, v50
	v_fma_f32 v34, -v45, v44, v34
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v43, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v41, v45, 1.0
	v_div_scale_f32 v42, null, v39, v39, v205
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v45, v43, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v49, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:52
	scratch_load_b32 v99, off, off offset:28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v169, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v113
	v_mul_f32_e32 v165, 0xbfb8aa3b, v88
	v_mul_f32_e32 v29, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v168
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v37, s27, v205, v39, v205
	v_div_fmas_f32 v34, v34, v50, v44
	v_rcp_f32_e32 v44, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v107, v38, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v34, v0, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s28
	v_exp_f32_e32 v34, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v43, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v48, v44, 1.0
	v_rcp_f32_e32 v0, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v47, v44
	v_div_scale_f32 v47, s26, v96, v40, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v61, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v34, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v41, v36, v43
	v_mul_f32_e32 v35, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v42, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, 0xbfb8aa3b, v99 :: v_dual_add_f32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v34, v45
	v_fma_f32 v34, -v48, v35, v47
	v_fmac_f32_e32 v0, v46, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v46, null, v33, v33, v114
	v_fma_f32 v41, -v41, v36, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v34, v44
	v_mul_f32_e32 v34, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v46
	v_div_fmas_f32 v36, v41, v45, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v48, v35, v47
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v45, -v42, v34, v37
	v_div_fmas_f32 v35, v41, v44, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v45, v0
	v_fma_f32 v41, -v46, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v40, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, s26, v114, v33, v114
	v_fma_f32 v37, -v42, v34, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v42, v41, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v37, v0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v46, v42, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v39, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v34, v43
	v_div_fixup_f32 v34, v36, v38, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v47, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v46, v42, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v48
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v39, v43, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v44, v44, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v42, null, v37, v37, v64
	v_div_fixup_f32 v33, v39, v33, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v41, null, v38, v38, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v106, v33
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v113, v44, v113
	v_rcp_f32_e32 v48, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v164, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v49, v36, 1.0
	v_fma_f32 v40, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v47, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v46, v40, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v40, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v41, v48, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v51, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v43, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v39, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, s27, v64, v37, v64
	v_fmac_f32_e32 v48, v47, v48
	v_div_scale_f32 v47, s26, v145, v38, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v54, v33, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v49, v50, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v47, v48
	v_fmac_f32_e32 v50, v0, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v0, -v41, v33, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v40, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v49, v50, v43
	v_dual_fmac_f32 v33, v0, v48 :: v_dual_mul_f32 v0, v39, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v50
	v_fma_f32 v36, -v41, v33, v47
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v42, v0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s28
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v36, v48, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v0, v40, v46 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v34, v34, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v0, v39
	v_rcp_f32_e32 v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v33, v33, v38, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v43
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v43, 0, 0x42800000, s26
	v_ldexp_f32 v36, v41, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v39, v46, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s26
	v_exp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v90 :: v_dual_add_f32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v37, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v29, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v36, v36, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v41, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v46, v28
	v_div_scale_f32 v41, vcc_lo, v88, v34, v88
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v41, v28
	v_div_scale_f32 v43, null, v27, v27, v105
	v_div_scale_f32 v39, null, v40, v40, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v29, v45, v41
	v_rcp_f32_e32 v46, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v38, v42, 1.0
	v_rcp_f32_e32 v48, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v49, v28
	v_div_fixup_f32 v35, v35, v44, v113
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s26, v75, v36, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v29, -v29, v45, v41
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v50, null, v37, v37, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v39, v48, 1.0
	v_mul_f32_e32 v57, v47, v42
	v_div_fmas_f32 v28, v29, v28, v45
	v_fmac_f32_e32 v46, v51, v46
	v_div_scale_f32 v51, s27, v105, v27, v105
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s28, v99, v40, v99
	v_fma_f32 v41, -v38, v57, v47
	v_div_fixup_f32 v28, v28, v34, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, v51, v46 :: v_dual_mul_f32 v64, v49, v48
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v57, v41, v42
	v_rcp_f32_e32 v56, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v43, v59, v51
	v_fma_f32 v41, -v39, v64, v49
	s_mov_b32 s26, 0x76543210
	v_fma_f32 v34, -v38, v57, v47
	v_fmac_f32_e32 v59, v29, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v64, v41, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v41, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v42, v57
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v38, -v43, v59, v51
	v_fma_f32 v58, -v50, v56, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v73, v35
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v35, |v102|, |v92|, |v93|
	v_max3_f32 v43, |v63|, |v17|, |v15|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v46, v59
	v_fmac_f32_e32 v56, v58, v56
	v_div_scale_f32 v58, s29, v90, v37, v90
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v27, v38, v27, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v45, v58, v56 :: v_dual_mul_f32 v38, v67, v27
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v116|, |v117|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v50, v45, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v29, v56
	v_fma_f32 v29, -v39, v64, v49
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v49, 3, v175
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v50, v45, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v48, v64
	s_mov_b32 vcc_lo, s29
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v50, 3, v172
	v_lshlrev_b32_e32 v48, 1, v175
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v39, v56, v45
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v41, v28
	scratch_load_b32 v28, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v28, v0
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v29, v40, v99
	v_div_fixup_f32 v29, v34, v36, v75
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v34, |v100|, |v101|
	v_max3_f32 v36, |v84|, |v85|, |v86|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v66, v29
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v108|, |v109|, |v110|
.Ltmp17:
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v0, v33
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v0, v39, v37, v90
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v33, |v111|, |v25|, |v23|
	v_max3_f32 v37, |v87|, |v21|, |v20|
.Ltmp19:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v72, v28
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, |v118|, |v32|, |v26|
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v65, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v124|, |v125|
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v0, v0, |v30|, v27
	v_max3_f32 v27, v29, v33, |v24|
	v_max3_f32 v29, |v94|, |v95|, |v22|
	v_max3_f32 v33, v34, |v103|, v35
	v_max3_f32 v34, v36, v37, |v19|
	v_max_f32_e64 v35, |v76|, |v77|
	v_max3_f32 v36, |v78|, |v68|, |v69|
	v_max3_f32 v37, |v60|, |v61|, |v62|
	v_max3_f32 v0, v0, v28, v27
	v_max3_f32 v27, v33, v29, v34
	v_max3_f32 v28, |v70|, |v71|, |v18|
	v_max3_f32 v29, v35, |v79|, v36
	v_max3_f32 v33, v37, v43, |v16|
	v_max_f32_e64 v34, |v52|, |v53|
	v_max3_f32 v35, |v54|, |v42|, |v45|
	v_max3_f32 v36, |v41|, |v38|, |v39|
	v_max3_f32 v37, |v40|, |v11|, |v12|
	v_max3_f32 v28, v29, v28, v33
	v_max3_f32 v29, |v46|, |v47|, |v14|
	v_max3_f32 v33, v34, |v55|, v35
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v35, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v34, v36, v37, |v13|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v27, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s27, s72, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v35, v35
	v_max3_f32 v29, v33, v29, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v36, v36
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v28, s26, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v37, 5, v50
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v0, v6 :: v_dual_and_b32 v6, 4, v172
	v_max_f32_e32 v34, v27, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v0, v36, v36
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v27, v50, 9, 0
	v_permlanex16_b32 v36, v29, s26, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v56, v6, 6, 0
.Ltmp31:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s73, 0, s27
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v28, v0
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v28, 0x60, v172
	v_lshl_add_u32 v0, v6, 2, v27
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v36, v36
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v36, 0x680, v9, v37
.Ltmp36:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[43:44]
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v37, v37, v28
	v_lshl_add_u32 v0, v5, 4, v0
.Ltmp38:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[43:44]
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v51, v36, v28
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v29, v27
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 34, v10
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v48, v37
.Ltmp43:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v9, 0x2f0, v9
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v29, v56, v49, v51
.Ltmp45:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.h, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v48, s26, s72, v27
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v29
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v49, null, s73, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 30, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s72, v0
	v_add_co_ci_u32_e64 v4, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v43, s31, s72, v27
	v_add_co_ci_u32_e64 v44, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 28, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[43:44]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[48:49]
.Ltmp48:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v0, v33 :: v_dual_mov_b32 v3, v34
	v_mov_b32_e32 v27, v35
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v33, v33
	v_max_f32_e32 v33, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v36, v36
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v27, v27, v27
.Ltmp54:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[48:49]
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v29, v0 :: v_dual_add_nc_u32 v49, 0, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v29, v33, v3
	v_max_f32_e32 v33, v35, v35
	v_max_f32_e32 v35, v36, v36
.Ltmp56:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v4
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v36, v0 :: v_dual_max_f32 v27, v33, v27
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v37, v29
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v34, v35
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v27
.Ltmp62:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v35, v33
.Ltmp64:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v36, v36
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v37, v37
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 26, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v3 :: v_dual_max_f32 v3, v34, v34
	v_dual_max_f32 v4, v29, v4 :: v_dual_max_f32 v29, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v34, s38, s72, v36
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v36, v0 :: v_dual_max_f32 v27, v27, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v37, v4
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v33, v29
.Ltmp74:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 24, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v33, v27
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v29
	s_waitcnt lgkmcnt(0)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v44, v36, v36
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v37, v37
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s39, s72, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v0, v44 :: v_dual_max_f32 v0, v33, v33
	v_dual_max_f32 v4, v4, v48 :: v_dual_lshlrev_b32 v33, 4, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v43
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v44, 1, v28
	v_lshlrev_b32_e32 v48, 3, v5
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v27, v0 :: v_dual_lshlrev_b32 v0, 5, v6
	v_dual_max_f32 v6, v29, v43 :: v_dual_add_nc_u32 v27, 0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v29, v49, v44, v48
	s_barrier
.Ltmp85:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 22, v10
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v27, v0, v48
.Ltmp87:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v35, null, s73, 0, s38
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v29, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v0
.Ltmp89:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s73, 0, s39
	v_add_co_u32 v43, s39, s72, v43
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[34:35]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s73, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[34:35]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v34, s44, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v27, 18, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v35, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[36:37]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v36, s44, s72, v27
	v_add_co_ci_u32_e64 v37, null, s73, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 16, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[34:35]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[34:35]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[36:37]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v34, s48, s72, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v10
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[36:37]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v35, null, s73, 0, s48
	v_add_co_u32 v36, s48, s72, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v29
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 12, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s73, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[43:44]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v43, s48, s72, v27
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v27, 10, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s73, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[36:37]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_fma_f32 v36, -v29, v3, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[34:35]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[34:35]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v34, s54, s72, v27
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v27, 8, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[43:44]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fmac_f32_e32 v3, v36, v3
	v_div_scale_f32 v43, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v35, null, s73, 0, s54
	v_add_co_u32 v36, s54, s72, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v44, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v27, v43, v3 :: v_dual_max_f32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[34:35]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v48, v44
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[34:35]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[36:37]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v34, -v29, v27, v43
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[36:37]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v36, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v35, 6, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v34, v3
	v_div_scale_f32 v37, s60, v5, 0x40e00000, v5
	v_max_f32_e32 v34, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v36
	v_fma_f32 v4, -v44, v48, 1.0
	v_fma_f32 v29, -v29, v27, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v49, null, 0x40e00000, 0x40e00000, v34
	v_rcp_f32_e32 v43, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v4, v48
	v_div_fmas_f32 v27, v29, v3, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v35
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v29, v37, v48
	v_div_fixup_f32 v0, v27, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v35, -v6, v43, 1.0
	v_fma_f32 v27, -v44, v29, v37
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v43, v35, v43
	v_div_scale_f32 v35, s61, v36, 0x40e00000, v36
	v_fmac_f32_e32 v29, v27, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v0.h
	v_mov_b16_e32 v27.h, v51.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v56, v35, v43
	v_fma_f32 v57, -v49, v50, 1.0
	v_fma_f32 v3, -v44, v29, v37
	v_div_scale_f32 v37, s62, v34, 0x40e00000, v34
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v6, v56, v35
	v_fmac_f32_e32 v50, v57, v50
	v_div_fmas_f32 v3, v3, v48, v29
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v56, v27, v43 :: v_dual_mul_f32 v29, v37, v50
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v27, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v6, v56, v35
	v_fma_f32 v5, -v49, v29, v37
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v35, 0xffff0000, v27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v3.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v43, v56
	v_fmac_f32_e32 v29, v5, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v44, null, v35, v35, v124
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v37, -v49, v29, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v44
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v4, v4, 0x40e00000, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v36, null, v35, v35, v125
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v29, v37, v50, v29
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v43, 1, v51
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v49, vcc_lo, v124, v35, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v36
	v_fma_f32 v37, -v44, v0, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v34, v29, 0x40e00000, v34
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v29.l, v4.h
	v_mov_b16_e32 v29.h, v51.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v56, null, v35, v35, v30
	v_fmac_f32_e32 v0, v37, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v34.h
	v_add3_u32 v3, v3, v43, 0x7fff
	v_and_b32_e32 v29, 1, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v43, -v36, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v49, v0 :: v_dual_and_b32 v51, 1, v51
	v_rcp_f32_e32 v58, v56
	v_div_scale_f32 v64, null, v35, v35, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v29, v4, v29, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v44, v50, v49
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v65, s60, v125, v35, v125
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v34, v51, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v34, v64
	v_fmac_f32_e32 v50, v57, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v65, v48
	v_fma_f32 v57, -v56, v58, 1.0
	v_div_scale_f32 v67, null, v35, v35, v116
	v_fma_f32 v44, -v44, v50, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v36, v51, v65
	v_fmac_f32_e32 v58, v57, v58
	v_div_scale_f32 v57, s61, v30, v35, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v64, v34, 1.0
	v_div_fmas_f32 v0, v44, v0, v50
	v_fmac_f32_e32 v51, v49, v48
	v_mul_f32_e32 v49, v57, v58
	v_rcp_f32_e32 v50, v67
	v_fmac_f32_e32 v34, v66, v34
	v_div_scale_f32 v66, s62, v31, v35, v31
	v_div_scale_f32 v72, null, v35, v35, v117
	v_div_fixup_f32 v44, v0, v35, v124
	v_fma_f32 v0, -v36, v51, v65
	v_fma_f32 v36, -v56, v49, v57
	v_mul_f32_e32 v65, v66, v34
	v_rcp_f32_e32 v73, v72
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v74, -v67, v50, 1.0
	v_div_fmas_f32 v0, v0, v48, v51
	v_fmac_f32_e32 v49, v36, v58
	v_fma_f32 v36, -v64, v65, v66
	v_div_scale_f32 v51, s60, v116, v35, v116
	v_fmac_f32_e32 v50, v74, v50
	v_div_fixup_f32 v48, v0, v35, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fma_f32 v0, -v56, v49, v57
	v_fmac_f32_e32 v65, v36, v34
	v_div_scale_f32 v57, null, v35, v35, v118
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v36, v51, v50 :: v_dual_fmac_f32 v73, v74, v73
	v_div_scale_f32 v56, s63, v117, v35, v117
	v_div_fmas_f32 v0, v0, v58, v49
	v_fma_f32 v49, -v64, v65, v66
	v_rcp_f32_e32 v64, v57
	v_fma_f32 v58, -v67, v36, v51
	v_mul_f32_e32 v66, v56, v73
	v_div_scale_f32 v74, null, v35, v35, v32
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v36, v58, v50
	v_div_fmas_f32 v34, v49, v34, v65
	v_rcp_f32_e32 v58, v74
	v_fma_f32 v49, -v72, v66, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v57, v64, 1.0
	v_div_fixup_f32 v30, v0, v35, v30
	v_fma_f32 v0, -v67, v36, v51
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v66, v49, v73
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, null, v35, v35, v26
	v_div_fixup_f32 v31, v34, v35, v31
	v_div_scale_f32 v34, s61, v118, v35, v118
	v_fma_f32 v49, -v74, v58, 1.0
	v_div_fmas_f32 v0, v0, v50, v36
	v_fma_f32 v36, -v72, v66, v56
	v_rcp_f32_e32 v56, v65
	v_div_scale_f32 v72, null, v35, v35, v108
	v_dual_mul_f32 v51, v34, v64 :: v_dual_fmac_f32 v58, v49, v58
	v_div_scale_f32 v67, s60, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v80, v72
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v49, v0, v35, v116
	v_div_fmas_f32 v36, v36, v73, v66
	v_fma_f32 v66, -v57, v51, v34
	v_mul_f32_e32 v73, v67, v58
	v_fma_f32 v75, -v65, v56, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v50, v36, v35, v117
	v_fmac_f32_e32 v51, v66, v64
	v_fma_f32 v0, -v74, v73, v67
	v_fmac_f32_e32 v56, v75, v56
	v_div_scale_f32 v36, s62, v26, v35, v26
	v_div_scale_f32 v66, null, v35, v35, v109
	v_fma_f32 v75, -v72, v80, 1.0
	v_fma_f32 v34, -v57, v51, v34
	v_fmac_f32_e32 v73, v0, v58
	v_mul_f32_e32 v0, v36, v56
	v_rcp_f32_e32 v57, v66
	v_fmac_f32_e32 v80, v75, v80
	v_div_scale_f32 v75, s63, v108, v35, v108
	v_div_fmas_f32 v34, v34, v64, v51
	v_fma_f32 v51, -v74, v73, v67
	v_fma_f32 v64, -v65, v0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v75, v80
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v66, v57, 1.0
	v_div_fmas_f32 v58, v51, v58, v73
	v_fmac_f32_e32 v0, v64, v56
	v_fma_f32 v73, -v72, v67, v75
	v_div_fixup_f32 v51, v34, v35, v118
	v_fmac_f32_e32 v57, v74, v57
	v_div_scale_f32 v74, s60, v109, v35, v109
	v_fma_f32 v34, -v65, v0, v36
	v_fmac_f32_e32 v67, v73, v80
	v_div_scale_f32 v65, null, v35, v35, v111
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v36, v74, v57
	v_div_fmas_f32 v0, v34, v56, v0
	v_fma_f32 v34, -v72, v67, v75
	v_rcp_f32_e32 v72, v65
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v56, -v66, v36, v74
	v_div_fixup_f32 v26, v0, v35, v26
	v_div_fmas_f32 v34, v34, v80, v67
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v97, null, v88, v88, v22
	v_fmac_f32_e32 v36, v56, v57
	v_div_scale_f32 v98, null, v88, v88, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v65, v72, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v66, v36, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v80, null, v35, v35, v23
	v_div_fmas_f32 v0, v0, v57, v36
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v37, 2, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v36, v80
	v_fma_f32 v89, -v80, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v89, v36
	v_div_scale_f32 v81, null, v35, v35, v110
	v_div_fixup_f32 v32, v58, v35, v32
	v_div_scale_f32 v73, null, v35, v35, v25
	v_rcp_f32_e32 v64, v81
	v_div_fixup_f32 v56, v34, v35, v108
	v_div_scale_f32 v66, s62, v111, v35, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v67, v73
	v_div_scale_f32 v82, null, v35, v35, v24
	v_div_fixup_f32 v57, v0, v35, v109
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v81, v64, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v74, -v73, v67, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v64, v58, v64
	v_div_scale_f32 v58, s61, v110, v35, v110
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s60, v25, v35, v25
	v_mul_f32_e32 v75, v58, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v82, v83, 1.0
	v_fma_f32 v34, -v81, v75, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, null, v88, v88, v100
	v_fmac_f32_e32 v75, v34, v64
	v_mul_f32_e32 v34, v66, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v81, v75, v58
	v_fma_f32 v58, -v65, v34, v66
	v_mul_f32_e32 v81, v74, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v64, v75
	v_fmac_f32_e32 v34, v58, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v73, v81, v74
	v_div_scale_f32 v75, s61, v23, v35, v23
	v_div_fixup_f32 v58, v0, v35, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v65, v34, v66
	v_fmac_f32_e32 v81, v64, v67
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v65, v75, v36
	v_div_scale_f32 v66, s63, v24, v35, v24
	v_div_fmas_f32 v0, v0, v72, v34
	v_fma_f32 v34, -v73, v81, v74
	v_div_scale_f32 v74, null, v88, v88, v101
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v64, -v80, v65, v75
	v_rcp_f32_e32 v72, v89
	v_div_fmas_f32 v34, v34, v67, v81
	v_rcp_f32_e32 v67, v74
	v_mul_f32_e32 v73, v66, v83
	v_fmac_f32_e32 v65, v64, v36
	v_div_fixup_f32 v64, v0, v35, v111
	v_div_fixup_f32 v25, v34, v35, v25
	v_div_scale_f32 v34, s60, v100, v88, v100
	v_fma_f32 v81, -v82, v73, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v89, v72, 1.0
	v_fma_f32 v0, -v80, v65, v75
	v_fma_f32 v75, -v74, v67, 1.0
	v_div_scale_f32 v80, null, v88, v88, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v73, v81, v83 :: v_dual_fmac_f32 v72, v90, v72
	v_fmac_f32_e32 v67, v75, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v80
	v_div_scale_f32 v81, null, v88, v88, v102
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v36, v65
	v_fma_f32 v36, -v82, v73, v66
	v_mul_f32_e32 v65, v34, v72
	v_div_scale_f32 v66, s61, v101, v88, v101
	v_rcp_f32_e32 v90, v81
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v0, v35, v23
	v_div_fmas_f32 v36, v36, v83, v73
	v_fma_f32 v73, -v89, v65, v34
	v_mul_f32_e32 v82, v66, v67
	v_fma_f32 v83, -v80, v75, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v24, v36, v35, v24
	v_fmac_f32_e32 v65, v73, v72
	v_fma_f32 v0, -v74, v82, v66
	v_fmac_f32_e32 v75, v83, v75
	v_div_scale_f32 v35, s62, v103, v88, v103
	v_div_scale_f32 v36, null, v88, v88, v92
	v_fma_f32 v73, -v81, v90, 1.0
	v_fma_f32 v34, -v89, v65, v34
	v_fmac_f32_e32 v82, v0, v67
	v_mul_f32_e32 v0, v35, v75
	v_rcp_f32_e32 v83, v36
	v_fmac_f32_e32 v90, v73, v90
	v_div_scale_f32 v73, s63, v102, v88, v102
	v_div_fmas_f32 v34, v34, v72, v65
	v_fma_f32 v65, -v74, v82, v66
	v_fma_f32 v66, -v80, v0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v72, v73, v90
	v_div_scale_f32 v89, null, v88, v88, v93
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v74, -v36, v83, 1.0
	v_div_fmas_f32 v67, v65, v67, v82
	v_fmac_f32_e32 v0, v66, v75
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v91, -v81, v72, v73
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s60, v92, v88, v92
	v_div_fixup_f32 v65, v34, v88, v100
	v_fma_f32 v34, -v80, v0, v35
	v_fmac_f32_e32 v72, v91, v90
	v_div_scale_f32 v80, null, v88, v88, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v66, v67, v88, v101
	v_mul_f32_e32 v35, v74, v83
	v_fma_f32 v67, -v89, v82, 1.0
	v_div_fmas_f32 v0, v34, v75, v0
	v_fma_f32 v34, -v81, v72, v73
	v_rcp_f32_e32 v75, v80
	v_div_scale_f32 v91, null, v88, v88, v95
	s_mov_b32 vcc_lo, s63
	v_dual_fmac_f32 v82, v67, v82 :: v_dual_and_b32 v43, 0xffff0000, v4
	v_fma_f32 v73, -v36, v35, v74
	v_div_scale_f32 v81, s61, v93, v88, v93
	v_div_fmas_f32 v34, v34, v90, v72
	v_rcp_f32_e32 v90, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v73, v83
	v_mul_f32_e32 v96, v81, v82
	v_fma_f32 v73, -v80, v75, 1.0
	v_div_fixup_f32 v67, v0, v88, v103
	v_div_fixup_f32 v72, v34, v88, v102
	v_fma_f32 v0, -v36, v35, v74
	v_fma_f32 v34, -v89, v96, v81
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v36, s62, v94, v88, v94
	v_fma_f32 v73, -v91, v90, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v96, v34, v82
	v_div_fmas_f32 v0, v0, v83, v35
	v_mul_f32_e32 v34, v36, v75
	v_fmac_f32_e32 v90, v73, v90
	v_rcp_f32_e32 v35, v97
	v_div_scale_f32 v83, s60, v95, v88, v95
	v_div_fixup_f32 v73, v0, v88, v92
	v_fma_f32 v0, -v89, v96, v81
	v_fma_f32 v74, -v80, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v81, v83, v90
	v_rcp_f32_e32 v89, v98
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v97, v35, 1.0
	v_div_fmas_f32 v0, v0, v82, v96
	v_fmac_f32_e32 v34, v74, v75
	v_fma_f32 v82, -v91, v81, v83
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v35, v92, v35
	v_div_scale_f32 v92, s61, v22, v88, v22
	v_fma_f32 v96, -v98, v89, 1.0
	v_div_fixup_f32 v74, v0, v88, v93
	v_fma_f32 v0, -v80, v34, v36
	v_fmac_f32_e32 v81, v82, v90
	v_div_scale_f32 v93, null, v88, v88, v85
	v_mul_f32_e32 v36, v92, v35
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v82, s63, v84, v88, v84
	v_div_fmas_f32 v0, v0, v75, v34
	v_fma_f32 v34, -v91, v81, v83
	v_rcp_f32_e32 v83, v93
	v_div_scale_f32 v96, null, v88, v88, v86
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v75, -v97, v36, v92
	v_mul_f32_e32 v91, v82, v89
	v_div_fmas_f32 v34, v34, v90, v81
	v_rcp_f32_e32 v90, v96
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v36, v75, v35
	v_fma_f32 v81, -v98, v91, v82
	v_fma_f32 v99, -v93, v83, 1.0
	v_div_fixup_f32 v75, v0, v88, v94
	v_div_fixup_f32 v80, v34, v88, v95
	v_fma_f32 v0, -v97, v36, v92
	v_fmac_f32_e32 v91, v81, v89
	v_fmac_f32_e32 v83, v99, v83
	v_div_scale_f32 v34, s60, v85, v88, v85
	v_fma_f32 v81, -v96, v90, 1.0
	v_div_scale_f32 v92, null, v88, v88, v87
	v_div_fmas_f32 v0, v0, v35, v36
	v_fma_f32 v35, -v98, v91, v82
	v_mul_f32_e32 v36, v34, v83
	v_fmac_f32_e32 v90, v81, v90
	v_div_scale_f32 v82, s61, v86, v88, v86
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v94, v92
	v_div_scale_f32 v95, null, v88, v88, v21
	v_div_fmas_f32 v35, v35, v89, v91
	v_fma_f32 v89, -v93, v36, v34
	v_mul_f32_e32 v91, v82, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v22, v0, v88, v22
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v36, v89, v83
	v_fma_f32 v0, -v96, v91, v82
	v_fma_f32 v97, -v92, v94, 1.0
	v_div_scale_f32 v89, null, v88, v88, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v93, v36, v34
	v_fmac_f32_e32 v91, v0, v90
	v_div_fixup_f32 v81, v35, v88, v84
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v35, s62, v87, v88, v87
	v_fma_f32 v84, -v95, v98, 1.0
	v_rcp_f32_e32 v93, v89
	v_div_fmas_f32 v34, v34, v83, v36
	v_fma_f32 v36, -v96, v91, v82
	v_div_scale_f32 v97, null, v88, v88, v19
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v35, v94
	v_fmac_f32_e32 v98, v84, v98
	v_div_scale_f32 v84, s63, v21, v88, v21
	v_div_fmas_f32 v36, v36, v90, v91
	v_rcp_f32_e32 v90, v97
	v_fma_f32 v82, -v92, v0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v84, v98
	v_fma_f32 v83, -v89, v93, 1.0
	v_div_scale_f32 v99, s60, v20, v88, v20
	v_fmac_f32_e32 v0, v82, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v95, v96, v84
	v_fmac_f32_e32 v93, v83, v93
	v_div_fixup_f32 v82, v34, v88, v85
	v_div_fixup_f32 v83, v36, v88, v86
	v_fma_f32 v36, -v97, v90, 1.0
	v_div_scale_f32 v85, null, v59, v59, v76
	v_fma_f32 v34, -v92, v0, v35
	v_fmac_f32_e32 v96, v91, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v35, v99, v93 :: v_dual_fmac_f32 v90, v36, v90
	v_rcp_f32_e32 v36, v85
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, null, v59, v59, v77
	v_div_fmas_f32 v0, v34, v94, v0
	v_fma_f32 v34, -v95, v96, v84
	v_fma_f32 v84, -v89, v35, v99
	v_div_scale_f32 v86, s61, v19, v88, v19
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v85, v36, 1.0
	v_fmac_f32_e32 v35, v84, v93
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v86, v90
	v_div_fmas_f32 v34, v34, v98, v96
	v_div_fixup_f32 v84, v0, v88, v87
	v_fma_f32 v0, -v89, v35, v99
	v_fmac_f32_e32 v36, v95, v36
	v_div_scale_f32 v95, null, v59, v59, v79
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v21, v34, v88, v21
	v_fma_f32 v34, -v97, v94, v86
	v_div_scale_f32 v87, s62, v76, v59, v76
	v_fma_f32 v89, -v91, v92, 1.0
	v_div_fmas_f32 v0, v0, v93, v35
	v_rcp_f32_e32 v35, v95
	v_fmac_f32_e32 v94, v34, v90
	v_mul_f32_e32 v34, v87, v36
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v89, s60, v77, v59, v77
	v_div_scale_f32 v93, null, v59, v59, v78
	v_div_fixup_f32 v20, v0, v88, v20
	v_fma_f32 v0, -v97, v94, v86
	v_fma_f32 v86, -v85, v34, v87
	v_mul_f32_e32 v96, v89, v92
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v35, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v34, v86, v36
	v_div_fmas_f32 v0, v0, v90, v94
	v_fma_f32 v86, -v91, v96, v89
	v_fmac_f32_e32 v35, v98, v35
	v_div_scale_f32 v90, s61, v79, v59, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v19, v0, v88, v19
	v_fma_f32 v94, -v93, v97, 1.0
	v_fma_f32 v0, -v85, v34, v87
	v_fmac_f32_e32 v96, v86, v92
	v_mul_f32_e32 v85, v90, v35
	v_div_scale_f32 v87, null, v59, v59, v68
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v94, v97
	v_div_scale_f32 v86, s63, v78, v59, v78
	v_div_fmas_f32 v0, v0, v36, v34
	v_fma_f32 v34, -v91, v96, v89
	v_fma_f32 v36, -v95, v85, v90
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v59, v59, v69
	v_mul_f32_e32 v89, v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v36, v35
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v36, v91
	v_div_fmas_f32 v34, v34, v92, v96
	v_fma_f32 v92, -v93, v89, v86
	v_div_fixup_f32 v76, v0, v59, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v88, 1.0
	v_fma_f32 v0, -v95, v85, v90
	v_div_fixup_f32 v77, v34, v59, v77
	v_fmac_f32_e32 v89, v92, v97
	v_div_scale_f32 v34, s60, v68, v59, v68
	v_fmac_f32_e32 v88, v94, v88
	v_fma_f32 v90, -v91, v36, 1.0
	v_div_scale_f32 v92, null, v59, v59, v70
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v35, v85
	v_fma_f32 v35, -v93, v89, v86
	v_mul_f32_e32 v85, v34, v88
	v_fmac_f32_e32 v36, v90, v36
	v_rcp_f32_e32 v86, v92
	v_div_scale_f32 v90, s61, v69, v59, v69
	v_div_scale_f32 v93, null, v59, v59, v71
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v90, v36
	v_div_fmas_f32 v35, v35, v97, v89
	v_fma_f32 v89, -v87, v85, v34
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v92, v86, 1.0
	v_div_fixup_f32 v79, v0, v59, v79
	v_fma_f32 v0, -v91, v94, v90
	v_fmac_f32_e32 v85, v89, v88
	v_div_fixup_f32 v78, v35, v59, v78
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v35, s62, v70, v59, v70
	v_div_scale_f32 v89, null, v59, v59, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v34, -v87, v85, v34
	v_fmac_f32_e32 v94, v0, v36
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v35, v86
	v_rcp_f32_e32 v87, v89
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v71, v59, v71
	v_div_fmas_f32 v34, v34, v88, v85
	v_fma_f32 v85, -v91, v94, v90
	v_div_scale_f32 v97, null, v59, v59, v60
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v92, v0, v35
	v_mul_f32_e32 v90, v95, v96
	v_div_fmas_f32 v36, v85, v36, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v91, -v89, v87, 1.0
	v_fmac_f32_e32 v0, v88, v86
	v_fma_f32 v88, -v93, v90, v95
	v_div_fixup_f32 v69, v36, v59, v69
	v_div_fixup_f32 v68, v34, v59, v68
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s60, v18, v59, v18
	v_fmac_f32_e32 v90, v88, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v97, v85, 1.0
	v_div_scale_f32 v88, null, v59, v59, v61
	v_fma_f32 v34, -v92, v0, v35
	v_mul_f32_e32 v35, v91, v87
	v_fmac_f32_e32 v85, v36, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v88
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v60, v59, v60
	v_div_fmas_f32 v0, v34, v86, v0
	v_fma_f32 v34, -v93, v90, v95
	v_fma_f32 v86, -v89, v35, v91
	v_div_scale_f32 v93, null, v59, v59, v62
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v36, 1.0
	v_fmac_f32_e32 v35, v86, v87
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v34, v34, v96, v90
	v_mul_f32_e32 v90, v92, v85
	v_div_fixup_f32 v70, v0, v59, v70
	v_fma_f32 v0, -v89, v35, v91
	v_fmac_f32_e32 v36, v94, v36
	v_div_scale_f32 v94, null, v59, v59, v63
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v71, v34, v59, v71
	v_fma_f32 v34, -v97, v90, v92
	v_div_scale_f32 v89, s62, v61, v59, v61
	v_fma_f32 v91, -v93, v86, 1.0
	v_div_fmas_f32 v0, v0, v87, v35
	v_rcp_f32_e32 v35, v94
	v_fmac_f32_e32 v90, v34, v85
	v_mul_f32_e32 v34, v89, v36
	v_fmac_f32_e32 v86, v91, v86
	v_div_scale_f32 v87, s60, v62, v59, v62
	v_div_scale_f32 v91, null, v59, v59, v17
	v_div_fixup_f32 v0, v0, v59, v18
	v_fma_f32 v18, -v97, v90, v92
	v_fma_f32 v92, -v88, v34, v89
	v_mul_f32_e32 v95, v87, v86
	v_rcp_f32_e32 v96, v91
	v_fma_f32 v97, -v94, v35, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v34, v92, v36
	v_div_fmas_f32 v18, v18, v85, v90
	v_fma_f32 v85, -v93, v95, v87
	v_fmac_f32_e32 v35, v97, v35
	v_div_scale_f32 v90, s61, v63, v59, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v18, v18, v59, v60
	v_fma_f32 v92, -v91, v96, 1.0
	v_fma_f32 v60, -v88, v34, v89
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v85, v90, v35
	v_div_scale_f32 v89, null, v59, v59, v15
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v88, s63, v17, v59, v17
	v_div_fmas_f32 v34, v60, v36, v34
	v_fma_f32 v36, -v93, v95, v87
	v_fma_f32 v60, -v94, v85, v90
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v93, null, v59, v59, v16
	v_mul_f32_e32 v92, v88, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v60, v35
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v60, v93
	v_div_fmas_f32 v36, v36, v86, v95
	v_fma_f32 v86, -v91, v92, v88
	v_div_fixup_f32 v34, v34, v59, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v87, 1.0
	v_fma_f32 v61, -v94, v85, v90
	v_div_fixup_f32 v36, v36, v59, v62
	v_fmac_f32_e32 v92, v86, v96
	v_div_scale_f32 v62, s60, v15, v59, v15
	v_fmac_f32_e32 v87, v95, v87
	v_fma_f32 v86, -v93, v60, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v43, v43, v53
	v_div_fmas_f32 v35, v61, v35, v85
	v_mul_f32_e32 v85, v62, v87
	v_fmac_f32_e32 v60, v86, v60
	v_div_scale_f32 v86, null, v43, v43, v52
	v_fma_f32 v61, -v91, v92, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v89, v85, v62
	v_div_scale_f32 v88, s61, v16, v59, v16
	v_rcp_f32_e32 v90, v86
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v85, v91, v87
	v_div_fmas_f32 v61, v61, v96, v92
	v_mul_f32_e32 v92, v88, v60
	v_div_fixup_f32 v35, v35, v59, v63
	v_rcp_f32_e32 v63, v94
	v_fma_f32 v62, -v89, v85, v62
	v_div_scale_f32 v89, null, v43, v43, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v90, 1.0
	v_div_fixup_f32 v17, v61, v59, v17
	v_fma_f32 v61, -v93, v92, v88
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, null, v43, v43, v54
	v_fmac_f32_e32 v90, v91, v90
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v92, v61, v60
	v_div_scale_f32 v61, s62, v52, v43, v52
	v_div_fmas_f32 v62, v62, v87, v85
	v_fma_f32 v95, -v94, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v93, v92, v88
	v_mul_f32_e32 v87, v61, v90
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v88, s60, v53, v43, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v91, 1.0
	v_fmac_f32_e32 v63, v95, v63
	v_fma_f32 v95, -v86, v87, v61
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v60, v85, v60, v92
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v55, v43, v55
	v_mul_f32_e32 v97, v88, v63
	v_fmac_f32_e32 v87, v95, v90
	v_div_fixup_f32 v15, v62, v59, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_fixup_f32 v16, v60, v59, v16
	v_div_scale_f32 v62, null, v43, v43, v42
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v60, -v89, v92, v93
	v_fma_f32 v59, -v86, v87, v61
	v_fma_f32 v61, -v96, v98, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v85, v63
	v_fmac_f32_e32 v92, v60, v91
	v_rcp_f32_e32 v60, v62
	v_fmac_f32_e32 v98, v61, v98
	v_div_scale_f32 v61, s61, v54, v43, v54
	v_div_fmas_f32 v59, v59, v90, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v61, v98
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v88, -v62, v60, 1.0
	v_div_fmas_f32 v63, v85, v63, v97
	v_fma_f32 v85, -v89, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v61
	v_fmac_f32_e32 v60, v88, v60
	v_div_scale_f32 v88, s60, v42, v43, v42
	v_div_fixup_f32 v52, v59, v43, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v90, v98
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v59, v88, v60
	v_div_fmas_f32 v85, v85, v91, v92
	v_div_fixup_f32 v53, v63, v43, v53
	v_fma_f32 v63, -v87, v89, 1.0
	v_fma_f32 v61, -v96, v86, v61
	v_fma_f32 v90, -v62, v59, v88
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v55, v85, v43, v55
	v_div_scale_f32 v85, null, v43, v43, v46
	v_fmac_f32_e32 v89, v63, v89
	v_div_scale_f32 v63, s62, v45, v43, v45
	v_div_fmas_f32 v61, v61, v98, v86
	v_fmac_f32_e32 v59, v90, v60
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v63, v89
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v54, v61, v43, v54
	v_fma_f32 v61, -v62, v59, v88
	v_div_scale_f32 v90, null, v43, v43, v47
	v_fma_f32 v62, -v87, v86, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v61, v60, v59
	v_div_scale_f32 v60, null, v43, v43, v14
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v62, v89
	v_rcp_f32_e32 v62, v60
	v_div_scale_f32 v61, s60, v46, v43, v46
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v43, v43, v41
	v_div_fixup_f32 v42, v59, v43, v42
	v_fma_f32 v63, -v87, v86, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v60, v62, 1.0
	v_mul_f32_e32 v87, v61, v91
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v59, v92
	v_div_scale_f32 v59, s61, v47, v43, v47
	v_fmac_f32_e32 v62, v93, v62
	v_div_scale_f32 v93, null, v43, v43, v38
	v_div_fmas_f32 v63, v63, v89, v86
	v_fma_f32 v86, -v85, v87, v61
	v_mul_f32_e32 v89, v59, v92
	v_div_scale_f32 v95, s62, v14, v43, v14
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v59
	v_mul_f32_e32 v98, v95, v62
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v41, v43, v41
	v_div_fixup_f32 v45, v63, v43, v45
	v_fma_f32 v61, -v85, v87, v61
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v63, -v60, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v59, -v90, v89, v59
	v_fmac_f32_e32 v98, v63, v62
	v_fma_f32 v63, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s60, v38, v43, v38
	v_div_fmas_f32 v61, v61, v91, v87
	v_fma_f32 v60, -v60, v98, v95
	v_fmac_f32_e32 v85, v63, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v63, v86, v97
	v_div_scale_f32 v87, null, v43, v43, v39
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v46, v61, v43, v46
	v_div_fmas_f32 v59, v59, v92, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v60, v60, v62, v98
	v_fma_f32 v62, -v88, v85, v96
	v_fma_f32 v88, -v93, v63, v86
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v47, v59, v43, v47
	v_div_fixup_f32 v14, v60, v43, v14
	v_div_fmas_f32 v62, v62, v94, v85
	v_fmac_f32_e32 v63, v88, v97
	v_div_scale_f32 v60, null, v43, v43, v40
	v_fma_f32 v61, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v41, v62, v43, v41
	v_fma_f32 v59, -v93, v63, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v62, v60
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v61, v89
	v_div_scale_f32 v61, null, v43, v43, v11
	v_div_fmas_f32 v59, v59, v97, v63
	v_div_scale_f32 v85, vcc_lo, v39, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v61
	v_div_scale_f32 v63, null, v43, v43, v12
	v_div_fixup_f32 v38, v59, v43, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v60, v62, 1.0
	v_mul_f32_e32 v90, v85, v89
	v_rcp_f32_e32 v88, v63
	v_div_scale_f32 v91, null, v43, v43, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v59, v62
	v_div_scale_f32 v59, s60, v40, v43, v40
	v_fma_f32 v92, -v61, v86, 1.0
	v_fma_f32 v94, -v87, v90, v85
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v96, v59, v62
	v_fma_f32 v95, -v63, v88, 1.0
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v11, v43, v11
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v94, -v60, v96, v59
	v_fmac_f32_e32 v88, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v98, v92, v86
	v_div_scale_f32 v95, s62, v12, v43, v12
	v_fmac_f32_e32 v96, v94, v62
	v_fma_f32 v85, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v87, -v61, v98, v92
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v60, v96, v59
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v98, v87, v86
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v59, v59, v62, v96
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v61, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v59, v43, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v86, v98
	v_mul_f32_e32 v99, v95, v88
	v_div_fixup_f32 v39, v85, v43, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v85, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v61, v43, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v63, v99, v95
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s63, v13, v43, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v60, -v91, v100, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_and_b32_e32 v20, 15, v61
	v_cvt_i32_f32_e32 v86, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v75
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v60, v93
	v_fma_f32 v60, -v63, v99, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v73
	v_rndne_f32_e32 v73, v83
	v_rndne_f32_e32 v75, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v91, v100, v97
	v_div_fmas_f32 v60, v60, v88, v99
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v77, v79
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v60, v43, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v66
	v_rndne_f32_e32 v66, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v12, v12, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_cvt_i32_f32_e32 v106, v12
	v_and_b32_e32 v12, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v62, v62, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v80, v23
	v_and_b32_e32 v19, 15, v30
	v_and_b32_e32 v23, 15, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v62, v43, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v64
	v_rndne_f32_e32 v62, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v79, v58
	v_cvt_i32_f32_e32 v81, v62
	v_and_b32_e32 v58, 15, v51
	v_and_b32_e32 v51, 15, v83
	v_and_b32_e32 v83, 15, v86
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v86, 16, v172
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v56
	v_and_b32_e32 v56, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v172
	v_and_b32_e32 v31, 64, v172
	v_lshlrev_b32_e32 v30, 8, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v64, v74
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_cvt_i32_f32_e32 v98, v46
	v_and_b32_e32 v46, 15, v50
	v_and_b32_e32 v50, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v32, 3, v175
	v_and_or_b32 v0, 0xe000, v0, v30
	v_xor_b32_e32 v9, v9, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v82
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v87, v75
	v_cvt_i32_f32_e32 v94, v52
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v32, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v97, v42
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v100, v14
	v_cvt_i32_f32_e32 v105, v11
	v_cvt_i32_f32_e32 v107, v13
	v_and_b32_e32 v11, 15, v43
	v_and_b32_e32 v13, 15, v87
	v_and_b32_e32 v14, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v9, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_cvt_i32_f32_e32 v101, v41
	v_cvt_i32_f32_e32 v102, v38
	v_cvt_i32_f32_e32 v103, v39
	v_cvt_i32_f32_e32 v104, v40
	v_and_b32_e32 v38, 15, v48
	v_and_b32_e32 v39, 15, v63
	v_and_b32_e32 v40, 15, v68
	v_and_b32_e32 v41, 15, v97
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v43, 15, v64
	v_and_b32_e32 v64, 15, v34
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[11:14]
	ds_store_b128 v9, v[38:41] offset:256
	v_cndmask_b32_e64 v13, 0x2010, 0, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v34, s2, s72, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v84, v74
	v_and_b32_e32 v63, 15, v72
	v_and_b32_e32 v68, 15, v36
	v_and_b32_e32 v72, 15, v35
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v35, null, s73, 0, s2
	v_add_co_u32 v36, s2, s72, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s73, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1240 13 is_stmt 1             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v95, v55
	v_cvt_i32_f32_e32 v96, v54
	v_and_b32_e32 v54, 15, v26
	v_and_b32_e32 v66, 15, v57
	v_and_b32_e32 v55, 15, v22
	v_and_b32_e32 v57, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v89, v70
	v_cvt_i32_f32_e32 v90, v71
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v70, 15, v79
	v_and_b32_e32 v59, 15, v67
	v_and_b32_e32 v67, 15, v73
	v_and_b32_e32 v71, 15, v84
	v_and_b32_e32 v73, 15, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v91, v17
	v_cvt_i32_f32_e32 v92, v15
	v_cvt_i32_f32_e32 v93, v16
	v_and_b32_e32 v15, 15, v44
	v_and_b32_e32 v17, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v11, v0, 16, 0
	ds_store_b128 v9, v[54:57] offset:2048
	ds_store_b128 v9, v[70:73] offset:2304
	v_lshlrev_b32_e32 v9, 6, v172
	v_lshlrev_b32_e32 v12, 5, v28
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v16, 15, v60
	v_and_b32_e32 v60, 15, v18
	v_and_b32_e32 v18, 15, v53
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_and_b32_e32 v42, 15, v49
	v_and_b32_e32 v44, 15, v69
	v_and_b32_e32 v45, 15, v45
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v77, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[15:18]
	ds_store_b128 v11, v[42:45] offset:256
	v_lshlrev_b32_e32 v15, 2, v86
	v_and_or_b32 v9, 0x300, v9, v12
	v_xor_b32_e32 v12, v13, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v88, v78
	v_cvt_i32_f32_e32 v99, v47
	v_and_b32_e32 v47, 15, v65
	v_and_b32_e32 v75, 15, v21
	v_and_b32_e32 v21, 15, v77
	v_and_b32_e32 v22, 15, v95
	v_and_b32_e32 v61, 15, v101
	v_and_b32_e32 v65, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v0, 32, 0
	v_or3_b32 v9, v12, v9, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v25
	v_and_b32_e32 v78, 15, v80
	v_and_b32_e32 v82, 15, v24
	v_and_b32_e32 v24, 15, v81
	v_and_b32_e32 v79, 15, v85
	v_and_b32_e32 v48, 15, v89
	v_and_b32_e32 v76, 15, v91
	v_and_b32_e32 v80, 15, v92
	v_and_b32_e32 v49, 15, v98
	v_and_b32_e32 v69, 15, v103
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v81, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v25, 15, v88
	v_and_b32_e32 v84, 15, v93
	v_and_b32_e32 v26, 15, v96
	v_and_b32_e32 v85, 15, v107
	v_and_b32_e32 v52, 15, v90
	v_and_b32_e32 v53, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[58:61] offset:2048
	ds_store_b128 v11, v[74:77] offset:2304
	ds_store_b128 v14, v[19:22]
	ds_store_b128 v14, v[46:49] offset:256
	ds_store_b128 v14, v[62:65] offset:2048
	ds_store_b128 v14, v[78:81] offset:2304
	ds_store_b128 v0, v[23:26]
	ds_store_b128 v0, v[50:53] offset:256
	v_add_nc_u32_e32 v23, 0, v9
	ds_store_b128 v0, v[66:69] offset:2048
	ds_store_b128 v0, v[82:85] offset:2304
	v_xad_u32 v0, 0x4020, v9, 0
	v_xad_u32 v28, 0x8040, v9, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v23
	ds_load_b128 v[15:18], v23 offset:128
	ds_load_b128 v[19:22], v23 offset:4096
	ds_load_b128 v[23:26], v23 offset:4224
	ds_load_b128 v[30:33], v0
	ds_load_b128 v[38:41], v0 offset:128
	ds_load_b128 v[42:45], v0 offset:4096
	ds_load_b128 v[46:49], v0 offset:4224
	v_xad_u32 v0, 0xc060, v9, 0
	ds_load_b128 v[50:53], v28
	ds_load_b128 v[54:57], v28 offset:128
	ds_load_b128 v[58:61], v28 offset:4096
	ds_load_b128 v[62:65], v28 offset:4224
	ds_load_b128 v[66:69], v0 offset:4096
	ds_load_b128 v[70:73], v0
	ds_load_b128 v[74:77], v0 offset:128
	ds_load_b128 v[78:81], v0 offset:4224
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v10
	v_lshl_or_b32 v0, s79, 7, v7
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[34:35]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[34:35]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 2, v5
	v_add_nc_u32_e32 v10, 4, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[36:37]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 44, v5
	v_add_nc_u32_e32 v35, 46, v5
	v_add_nc_u32_e32 v36, 48, v5
	v_add_nc_u32_e32 v37, 50, v5
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v28, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 6, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 8, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 10, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v82, v42, 4, v30
	v_lshl_or_b32 v66, v23, 4, v15
	v_lshl_or_b32 v46, v46, 4, v38
	v_lshl_or_b32 v54, v62, 4, v54
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v31
	v_lshl_or_b32 v67, v24, 4, v16
	v_lshl_or_b32 v47, v47, 4, v39
	v_lshl_or_b32 v44, v44, 4, v32
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v25, 4, v17
	v_lshl_or_b32 v48, v48, 4, v40
	v_lshl_or_b32 v72, v22, 4, v14
	v_lshl_or_b32 v45, v45, 4, v33
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v69, 4, v73
	v_lshl_or_b32 v69, v26, 4, v18
	v_lshl_or_b32 v49, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 12, v5
	v_add_nc_u32_e32 v15, 14, v5
	v_add_nc_u32_e32 v16, 16, v5
	v_add_nc_u32_e32 v17, 18, v5
	v_add_nc_u32_e32 v18, 20, v5
	v_add_nc_u32_e32 v19, 22, v5
	v_add_nc_u32_e32 v20, 24, v5
	v_add_nc_u32_e32 v21, 26, v5
	v_add_nc_u32_e32 v22, 28, v5
	v_add_nc_u32_e32 v23, 30, v5
	v_add_nc_u32_e32 v24, 32, v5
	v_add_nc_u32_e32 v25, 34, v5
	v_add_nc_u32_e32 v26, 36, v5
	v_add_nc_u32_e32 v30, 38, v5
	v_add_nc_u32_e32 v32, 40, v5
	v_add_nc_u32_e32 v33, 42, v5
	v_add_nc_u32_e32 v38, 52, v5
	v_add_nc_u32_e32 v39, 54, v5
	v_add_nc_u32_e32 v40, 56, v5
	v_add_nc_u32_e32 v41, 58, v5
	v_add_nc_u32_e32 v42, 60, v5
	v_add_nc_u32_e32 v43, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[6:7], null, v9, s73, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s73, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s73, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s73, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s73, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s73, v[0:1]
	v_mad_u64_u32 v[30:31], null, v30, s73, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s73, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s73, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	v_mad_u64_u32 v[23:24], null, v24, s73, v[0:1]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v28, v5, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[24:25], null, v25, s73, v[0:1]
	v_mad_u64_u32 v[41:42], null, v42, s73, v[0:1]
	v_mad_u64_u32 v[25:26], null, v26, s73, v[0:1]
	v_mad_u64_u32 v[42:43], null, v43, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v82, v0, s[68:71], 0 offen
	buffer_store_b8 v50, v5, s[68:71], 0 offen
	buffer_store_b8 v58, v6, s[68:71], 0 offen
	buffer_store_b8 v66, v7, s[68:71], 0 offen
	buffer_store_b8 v46, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v0, s[68:71], 0 offen
	buffer_store_b8 v62, v5, s[68:71], 0 offen
	buffer_store_b8 v70, v6, s[68:71], 0 offen
	buffer_store_b8 v74, v7, s[68:71], 0 offen
	buffer_store_b8 v51, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v29.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v27.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v59, v0, s[68:71], 0 offen
	buffer_store_b8 v67, v5, s[68:71], 0 offen
	buffer_store_b8 v47, v6, s[68:71], 0 offen
	buffer_store_b8 v55, v7, s[68:71], 0 offen
	buffer_store_b8 v63, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v71, v0, s[68:71], 0 offen
	buffer_store_b8 v44, v5, s[68:71], 0 offen
	buffer_store_b8 v52, v6, s[68:71], 0 offen
	buffer_store_b8 v60, v7, s[68:71], 0 offen
	buffer_store_b8 v68, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v0, s[68:71], 0 offen
	buffer_store_b8 v56, v5, s[68:71], 0 offen
	buffer_store_b8 v64, v6, s[68:71], 0 offen
	buffer_store_b8 v72, v7, s[68:71], 0 offen
	buffer_store_b8 v45, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	s_clause 0x4
	buffer_store_b8 v53, v0, s[68:71], 0 offen
	buffer_store_b8 v61, v5, s[68:71], 0 offen
	buffer_store_b8 v69, v6, s[68:71], 0 offen
	buffer_store_b8 v49, v7, s[68:71], 0 offen
	buffer_store_b8 v57, v9, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v86
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v42 :: v_dual_lshlrev_b32 v5, 3, v147
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v173
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v65, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v6, v7, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v172
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s79, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp90:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 492
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
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 492
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30020
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 492
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 492
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 160
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
