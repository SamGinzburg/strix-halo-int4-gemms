	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[76:79], s[0:1], 0x5c
	s_load_b128 s[80:83], s[0:1], 0x30
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v50, 7, v0
	v_lshrrev_b32_e32 v49, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[88:89], s[0:1], 0x10
	v_dual_mov_b32 v80, 0x5410 :: v_dual_lshlrev_b32 v65, 3, v50
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s96, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s96, v49
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s67, s96, s2
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v54, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_mov_b32 s87, 0x31027000
	v_mov_b32_e32 v18, v17
	s_mov_b32 s86, 0x7ffffffe
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v101, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s76, v49, v[65:66]
	s_mul_i32 s8, s76, s67
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s76, v65
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s84, s4
	s_and_b32 s85, s5, 0xffff
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v57, 5, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[5:6], null, s76, 48, v[2:3]
	v_lshl_add_u32 v3, s76, 4, v2
	v_mov_b32_e32 v1, v2
	v_lshl_add_u32 v6, s76, 5, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, v2, s8, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:16
	scratch_store_b64 off, v[1:2], off
	scratch_store_b32 off, v0, off offset:96
	v_add_lshl_u32 v1, v3, s8, 1
	v_dual_mov_b32 v3, v5 :: v_dual_and_b32 v82, 0x78, v0
	v_add_lshl_u32 v2, v6, s8, 1
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v6, off offset:20
	scratch_store_b32 off, v69, off offset:100
	scratch_store_b64 off, v[3:4], off offset:8
	v_add_lshl_u32 v3, v5, s8, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_bfe_i32 v62, v0, 2, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x3
	buffer_load_b128 v[33:36], v4, s[84:87], 0 offen
	buffer_load_b128 v[37:40], v1, s[84:87], 0 offen
	buffer_load_b128 v[41:44], v2, s[84:87], 0 offen
	buffer_load_b128 v[45:48], v3, s[84:87], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_bfe_i32 v64, v0, 3, 1
	v_bfe_i32 v66, v0, 5, 1
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v51, 0x7632 :: v_dual_and_b32 v56, 3, v0
	s_add_i32 s0, s3, s0
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_i32 v52, v0, 4, 1
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v53, 4, v0
	v_bfe_i32 v60, v0, 0, 1
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v63, 8, v0
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v62, 0x2040, v62
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v66, 0x2040, v66
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v57, 0x180, v57
	v_dual_mov_b32 v1, v17 :: v_dual_and_b32 v78, 0x410, v64
	v_dual_mov_b32 v6, v17 :: v_dual_lshlrev_b32 v77, 6, v101
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 4
	v_mul_u32_u24_e32 v79, 0x90, v50
	v_cmp_eq_u32_e64 s0, 0, v101
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v81, 0x60, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v55, 24, v0
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v74, 2, v0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v58, 28, v0
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v59, 3, v0
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v61, 4, v0
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v52, 0x2040, v52
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v76, 5, v56
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v71, 4, v50
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v73, 0x630, v53
	v_cndmask_b32_e64 v0, 0x1054, v80, s0
	v_lshl_or_b32 v56, v56, 11, v57
	v_and_or_b32 v60, 0x1020, v60, v62
	v_lshl_or_b32 v62, v63, 4, v77
	v_and_or_b32 v63, 0x1020, v64, v66
	v_xor_b32_e32 v146, v79, v78
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v68, 0x70, v54
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v54, 0x80, v54
	v_lshl_add_u32 v61, v61, 9, 0
	v_xor_b32_e32 v64, v71, v82
	v_lshl_or_b32 v0, v0, 8, v0
	v_or3_b32 v149, v73, v52, v56
	v_xor_b32_e32 v52, v63, v76
	v_xor_b32_e32 v63, 16, v146
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v70, 6, v81
	v_dual_mov_b32 v27, v17 :: v_dual_lshlrev_b32 v72, 2, v81
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v69, 7, v69
	v_mov_b32_e32 v3, v17
	v_lshl_or_b32 v153, v50, 10, v64
	v_and_b32_e32 v50, 0x540054, v0
	v_xor_b32_e32 v64, 32, v146
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s5, v49
	v_add3_u32 v49, v61, v54, v52
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v52, 0, v63
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v53, v53, v68
	v_or3_b32 v68, v69, v70, v71
	v_or_b32_e32 v145, v71, v69
	v_lshl_or_b32 v69, v55, 8, v71
	v_lshl_or_b32 v55, v55, 1, v72
	v_xor_b32_e32 v66, 48, v146
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:24
	scratch_store_b32 off, v101, off offset:104
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v52, 0, v64
	scratch_store_b32 off, v81, off offset:108 ; 4-byte Folded Spill
	v_lshl_or_b32 v70, v58, 7, v76
	v_xor_b32_e32 v148, v69, v55
	v_xor_b32_e32 v69, 64, v146
	scratch_store_b32 off, v52, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v52, 0, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v67, 1, v82
	scratch_store_b32 off, v82, off offset:112 ; 4-byte Folded Spill
	v_or3_b32 v151, v70, v72, v58
	v_xor_b32_e32 v70, 0x50, v146
	scratch_store_b32 off, v52, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v52, 0, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[135:136], null, s77, v67, v[65:66]
	v_mov_b32_e32 v31, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v74, off offset:116
	scratch_store_b32 off, v52, off offset:36
	v_and_b32_e32 v74, 0x7c, v74
	v_xor_b32_e32 v72, 0x60, v146
	v_add_nc_u32_e32 v52, 0, v70
	v_mad_u64_u32 v[136:137], null, s77, 3, v[135:136]
	v_lshrrev_b32_e32 v75, 3, v81
	v_lshl_or_b32 v57, v81, 4, v74
	v_xor_b32_e32 v73, 0x70, v146
	v_mov_b32_e32 v137, 0xff800000
	scratch_store_b32 off, v52, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v72
	v_xor_b32_e32 v150, v57, v75
	v_xor_b32_e32 v75, 0x820, v146
	v_xor_b32_e32 v76, 0x830, v146
	v_xor_b32_e32 v82, 0x810, v146
	scratch_store_b32 off, v52, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v73
	v_xor_b32_e32 v83, 0x860, v146
	v_xor_b32_e32 v84, 0x870, v146
	v_xor_b32_e32 v85, 0x840, v146
	v_xor_b32_e32 v86, 0x850, v146
	scratch_store_b32 off, v52, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v75
	v_xor_b32_e32 v87, 0x1040, v146
	v_xor_b32_e32 v88, 0x1050, v146
	v_xor_b32_e32 v89, 0x1060, v146
	v_dual_mov_b32 v4, v17 :: v_dual_and_b32 v59, 0x310, v59
	scratch_store_b32 off, v52, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v76
	v_cndmask_b32_e64 v51, 0x3276, v51, s0
	v_xor_b32_e32 v90, 0x1070, v146
	v_or3_b32 v152, v60, v62, v59
	v_xor_b32_e32 v55, 16, v145
	scratch_store_b32 off, v52, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v82
	v_lshl_or_b32 v51, v51, 8, v51
	v_xor_b32_e32 v56, 32, v145
	v_xor_b32_e32 v57, 48, v145
	v_xor_b32_e32 v58, 64, v145
	scratch_store_b32 off, v52, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v83
	v_xor_b32_e32 v59, 0x50, v145
	v_xor_b32_e32 v60, 0x60, v145
	v_xor_b32_e32 v62, 0x70, v145
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v154, 0, v55
	scratch_store_b32 off, v52, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v52, 0, v84
	v_add_nc_u32_e32 v156, 0, v57
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v147, 0, v53
	scratch_store_b32 off, v52, off offset:68 ; 4-byte Folded Spill
	v_dual_mov_b32 v131, v17 :: v_dual_add_nc_u32 v52, 0, v85
	v_add_nc_u32_e32 v158, 0, v59
	v_dual_mov_b32 v132, v17 :: v_dual_add_nc_u32 v53, 0, v68
	scratch_store_b32 off, v52, off offset:72 ; 4-byte Folded Spill
	v_dual_mov_b32 v133, v17 :: v_dual_add_nc_u32 v52, 0, v86
	v_add_nc_u32_e32 v160, 0, v62
	v_dual_mov_b32 v134, v17 :: v_dual_and_b32 v51, 0x760076, v51
	scratch_store_b32 off, v52, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v87
	v_xor_b32_e32 v91, 0x1010, v146
	v_lshl_or_b32 v50, v50, 4, v50
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v155, 0, v56
	scratch_store_b32 off, v52, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v88
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v157, 0, v58
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_add_nc_u32 v159, 0, v60
	scratch_store_b32 off, v52, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v89
	v_xor_b32_e32 v54, 16, v149
	v_xor_b32_e32 v55, 32, v149
	v_xor_b32_e32 v56, 48, v149
	v_xor_b32_e32 v57, 64, v149
	scratch_store_b32 off, v52, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v52, 0, v90
	v_xor_b32_e32 v58, 0x50, v149
	v_xor_b32_e32 v59, 0x60, v149
	v_xor_b32_e32 v60, 0x70, v149
	v_xor_b32_e32 v61, 0x810, v150
	scratch_store_b32 off, v52, off offset:92 ; 4-byte Folded Spill
	v_xor_b32_e32 v52, 0x2040, v148
	v_xor_b32_e32 v62, 4, v151
	v_xor_b32_e32 v63, 8, v151
	v_xor_b32_e32 v64, 12, v151
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v71, v68, 16, 0
	v_xad_u32 v74, v68, 32, 0
	v_xad_u32 v77, v68, 48, 0
	v_xad_u32 v78, v68, 64, 0
	v_xad_u32 v79, 0x50, v68, 0
	v_xad_u32 v81, 0x60, v68, 0
	v_xad_u32 v68, 0x70, v68, 0
	v_add_nc_u32_e32 v144, 0, v91
	v_and_b32_e32 v190, 0x5040504, v50
	v_lshl_or_b32 v91, v51, 4, v51
	v_add_nc_u32_e32 v191, 0, v52
	v_add_nc_u32_e32 v192, 0, v54
	v_add_nc_u32_e32 v193, 0, v55
	v_add_nc_u32_e32 v194, 0, v56
	v_add_nc_u32_e32 v195, 0, v57
	v_add_nc_u32_e32 v196, 0, v58
	v_add_nc_u32_e32 v197, 0, v59
	v_add_nc_u32_e32 v198, 0, v60
	v_add_nc_u32_e32 v199, 0, v61
	v_add_nc_u32_e32 v200, 0, v62
	v_add_nc_u32_e32 v201, 0, v63
	v_add_nc_u32_e32 v202, 0, v64
	v_add_nc_u32_e32 v210, v49, v101
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_mad_u64_u32 v[66:67], null, s5, 48, v[0:1]
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 4, v65
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s1, s3
	v_xor_b32_e32 v92, 0x1020, v146
	s_bfe_i32 s3, s3, 0x80000
	v_xor_b32_e32 v93, 0x1030, v146
	v_xor_b32_e32 v94, 0x1860, v146
	v_xor_b32_e32 v95, 0x1870, v146
	v_xor_b32_e32 v96, 0x1840, v146
	v_xor_b32_e32 v97, 0x1850, v146
	v_xor_b32_e32 v98, 0x1820, v146
	v_xor_b32_e32 v99, 0x1830, v146
	v_xor_b32_e32 v100, 0x1810, v146
	v_xor_b32_e32 v69, 16, v151
	v_xor_b32_e32 v70, 20, v151
	v_xor_b32_e32 v72, 24, v151
	v_xor_b32_e32 v73, 28, v151
	v_xor_b32_e32 v75, 32, v152
	v_xor_b32_e32 v76, 64, v152
	v_xor_b32_e32 v82, 0x60, v152
	v_xor_b32_e32 v83, 0x90, v153
	v_xor_b32_e32 v84, 0x120, v153
	v_xor_b32_e32 v85, 0x1b0, v153
	v_xor_b32_e32 v86, 0x240, v153
	v_xor_b32_e32 v87, 0x2d0, v153
	v_xor_b32_e32 v88, 0x360, v153
	v_xor_b32_e32 v89, 0x3f0, v153
	v_lshl_add_u32 v90, s5, 4, v0
	v_lshl_add_u32 v67, s5, 5, v0
	s_sext_i32_i16 s0, s3
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s9, s8, 14
	s_lshl_b32 s3, s0, 10
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s79, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s77, v65
	v_add_nc_u32_e32 v140, 0, v92
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v143, 0, v93
	v_add_nc_u32_e32 v141, 0, v94
	v_add_nc_u32_e32 v142, 0, v95
	v_add_nc_u32_e32 v130, 0, v96
	v_add_nc_u32_e32 v185, 0, v97
	v_add_nc_u32_e32 v186, 0, v98
	v_add_nc_u32_e32 v187, 0, v99
	v_add_nc_u32_e32 v188, 0, v100
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v189, v65, v0
	v_add_nc_u32_e32 v203, 0, v69
	v_add_nc_u32_e32 v204, 0, v70
	v_add_nc_u32_e32 v205, 0, v72
	v_add_nc_u32_e32 v206, 0, v73
	v_add_nc_u32_e32 v207, 0, v75
	v_add_nc_u32_e32 v208, 0, v76
	v_add_nc_u32_e32 v209, 0, v82
	v_add_nc_u32_e32 v138, 0, v83
	v_add_nc_u32_e32 v139, 0, v84
	v_add_nc_u32_e32 v129, 0, v85
	v_add_nc_u32_e32 v252, 0, v86
	v_add_nc_u32_e32 v253, 0, v87
	v_add_nc_u32_e32 v254, 0, v88
	v_add_nc_u32_e32 v0, v65, v90
	v_add_nc_u32_e32 v255, v80, v90
	v_add_nc_u32_e32 v219, v65, v67
	v_add_nc_u32_e32 v220, v80, v67
	v_add_nc_u32_e32 v221, v65, v66
	v_add_nc_u32_e32 v222, v80, v66
	v_add_nc_u32_e32 v223, 0, v89
	v_and_b32_e32 v224, 0x7060706, v91
	v_mov_b16_e64 v234.h, 0
	s_mov_b32 s68, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s3, s3, 0xfffff800
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s78, s78, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s96
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s92, s80
	s_add_i32 s80, s1, s8
	s_mov_b32 s97, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v147, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v147, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v147, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v147, v[45:48] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v53
	ds_load_b128 v[37:40], v71
	ds_load_b128 v[41:44], v74
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[49:52], v78
	ds_load_b128 v[53:56], v79
	ds_load_b128 v[57:60], v81
	ds_load_b128 v[61:64], v68
	s_mov_b32 s98, s68
	s_and_b32 s85, s7, 0xffff
	s_and_b32 s89, s89, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s79, s3, s9
	s_mov_b32 s93, s81
	s_add_i32 s80, s80, s4
	s_mov_b32 s84, s6
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[65:66], off, off
	scratch_load_b32 v66, off, off offset:16
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s81, s98, s79
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v120, s75 :: v_dual_add_nc_u32 v81, 0, v145
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s1, s81, s76
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v119, s74 :: v_dual_mov_b32 v118, s73
	v_dual_mov_b32 v117, s72 :: v_dual_mov_b32 v116, s71
	v_dual_mov_b32 v115, s70 :: v_dual_mov_b32 v114, s69
	v_mov_b32_e32 v113, s68
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s81, s81, s77
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v65, s1, v65, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s1, v66, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_cndmask_b32_e64 v69, 0x80000000, v66, s2
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s1, v66, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v66, s2
	scratch_load_b64 v[66:67], off, off offset:8 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s1, v66, 1
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s80, s98
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v66, s2
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[84:87], 0 offen
	buffer_load_b128 v[69:72], v69, s[84:87], 0 offen
	buffer_load_b128 v[73:76], v73, s[84:87], 0 offen
	buffer_load_b128 v[77:80], v77, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v147, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v147, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v147, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v147, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v154
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v154 offset:2048
	ds_load_b128 v[101:104], v154 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v154 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[33:40], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v156
	ds_load_b128 v[97:100], v155
	ds_load_b128 v[105:108], v155 offset:2048
	ds_load_b128 v[109:112], v156 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v156 offset:4096
	ds_load_b128 v[97:100], v155 offset:4096
	ds_load_b128 v[105:108], v155 offset:6144
	ds_load_b128 v[109:112], v156 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v158
	ds_load_b128 v[97:100], v157
	ds_load_b128 v[105:108], v157 offset:2048
	ds_load_b128 v[109:112], v158 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v158 offset:4096
	ds_load_b128 v[97:100], v157 offset:4096
	ds_load_b128 v[105:108], v157 offset:6144
	ds_load_b128 v[109:112], v158 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v160
	ds_load_b128 v[97:100], v159
	ds_load_b128 v[105:108], v159 offset:2048
	ds_load_b128 v[109:112], v160 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v160 offset:4096
	ds_load_b128 v[97:100], v159 offset:4096
	ds_load_b128 v[105:108], v159 offset:6144
	ds_load_b128 v[109:112], v160 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[57:64], v[73:80]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, 4, v189
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v97, s1, v189, 2
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[57:64], v[65:72]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v98, s1, v98, 2
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v101, 0x80000000, v98, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[92:95], 0 offen
	buffer_load_b128 v[101:104], v101, s[92:95], 0 offen
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v110, 0xff800000, v99 :: v_dual_cndmask_b32 v109, 0xff800000, v97
	v_add_lshl_u32 v97, s1, v0, 2
	v_dual_cndmask_b32 v106, 0xff800000, v100 :: v_dual_cndmask_b32 v105, 0xff800000, v98
	v_add_lshl_u32 v98, s1, v255, 2
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v112, 0xff800000, v103 :: v_dual_cndmask_b32 v111, 0xff800000, v101
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	v_dual_cndmask_b32 v108, 0xff800000, v104 :: v_dual_cndmask_b32 v107, 0xff800000, v102
	v_cndmask_b32_e32 v101, 0x80000000, v98, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[92:95], 0 offen
	buffer_load_b128 v[101:104], v101, s[92:95], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v112
	v_cmp_neq_f32_e64 s4, 0xff800000, v111
	v_cmp_neq_f32_e64 s3, 0xff800000, v110
	v_cmp_neq_f32_e64 s30, 0xff800000, v107
	v_cmp_neq_f32_e64 s33, 0xff800000, v108
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s5
	s_and_b32 s15, vcc_lo, s4
	s_and_b32 s16, vcc_lo, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v106
	v_cmp_neq_f32_e64 s24, 0xff800000, v105
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v118, 0xff800000, v99 :: v_dual_cndmask_b32 v117, 0xff800000, v97
	v_add_lshl_u32 v97, s1, v219, 2
	v_dual_cndmask_b32 v114, 0xff800000, v100 :: v_dual_cndmask_b32 v113, 0xff800000, v98
	v_add_lshl_u32 v98, s1, v220, 2
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v120, 0xff800000, v103 :: v_dual_cndmask_b32 v119, 0xff800000, v101
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	v_dual_cndmask_b32 v116, 0xff800000, v104 :: v_dual_cndmask_b32 v115, 0xff800000, v102
	v_cndmask_b32_e32 v101, 0x80000000, v98, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[92:95], 0 offen
	buffer_load_b128 v[101:104], v101, s[92:95], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v119
	v_cmp_neq_f32_e64 s9, 0xff800000, v120
	v_cmp_neq_f32_e64 s7, 0xff800000, v118
	v_cmp_neq_f32_e64 s6, 0xff800000, v117
	v_cmp_neq_f32_e64 s29, 0xff800000, v116
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, vcc_lo, s8
	s_and_b32 s8, vcc_lo, s9
	s_and_b32 s12, vcc_lo, s7
	s_and_b32 s13, vcc_lo, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v115
	v_cmp_neq_f32_e64 s23, 0xff800000, v114
	v_cmp_neq_f32_e64 s22, 0xff800000, v113
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v126, 0xff800000, v99 :: v_dual_cndmask_b32 v125, 0xff800000, v97
	v_add_lshl_u32 v97, s1, v221, 2
	v_dual_cndmask_b32 v122, 0xff800000, v100 :: v_dual_cndmask_b32 v121, 0xff800000, v98
	v_add_lshl_u32 v98, s1, v222, 2
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v128, 0xff800000, v103 :: v_dual_cndmask_b32 v127, 0xff800000, v101
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	v_dual_cndmask_b32 v124, 0xff800000, v104 :: v_dual_cndmask_b32 v123, 0xff800000, v102
	v_cndmask_b32_e32 v101, 0x80000000, v98, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[92:95], 0 offen
	buffer_load_b128 v[101:104], v101, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v109
	v_cmp_neq_f32_e64 s37, 0xff800000, v128
	v_cmp_neq_f32_e64 s34, 0xff800000, v127
	v_cmp_neq_f32_e64 s31, 0xff800000, v126
	v_cmp_neq_f32_e64 s11, 0xff800000, v125
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s17, vcc_lo, s1
	s_and_b32 s6, vcc_lo, s37
	s_and_b32 s7, vcc_lo, s34
	s_and_b32 s9, vcc_lo, s31
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s31, vcc_lo, s30
	s_and_b32 s30, vcc_lo, s33
	s_and_b32 s33, vcc_lo, s26
	s_and_b32 s34, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s29
	s_and_b32 s26, vcc_lo, s28
	s_and_b32 s28, vcc_lo, s23
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v124
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, vcc_lo, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v123
	v_cmp_neq_f32_e64 s19, 0xff800000, v122
	v_cmp_neq_f32_e64 s18, 0xff800000, v121
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, vcc_lo, s27
	s_and_b32 s23, vcc_lo, s25
	s_and_b32 s25, vcc_lo, s19
	s_and_b32 s27, vcc_lo, s18
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v166, 0xff800000, v99 :: v_dual_cndmask_b32 v165, 0xff800000, v97
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v168, 0xff800000, v103 :: v_dual_add_nc_u32 v97, 0, v148
	v_dual_cndmask_b32 v167, 0xff800000, v101 :: v_dual_cndmask_b32 v162, 0xff800000, v100
	v_dual_cndmask_b32 v161, 0xff800000, v98 :: v_dual_cndmask_b32 v164, 0xff800000, v104
	v_cndmask_b32_e32 v163, 0xff800000, v102, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v97, v[109:112]
	ds_store_b128 v97, v[117:120] offset:512
	ds_store_b128 v97, v[125:128] offset:1024
	ds_store_b128 v97, v[165:168] offset:1536
	ds_store_b128 v191, v[105:108]
	ds_store_b128 v191, v[113:116] offset:512
	ds_store_b128 v191, v[121:124] offset:1024
	ds_store_b128 v191, v[161:164] offset:1536
	v_add_nc_u32_e32 v97, 0, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v97
	ds_load_b128 v[169:172], v192
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s41, 0xff800000, v168
	v_cmp_neq_f32_e64 s40, 0xff800000, v167
	v_cmp_neq_f32_e64 s39, 0xff800000, v166
	v_cmp_neq_f32_e64 s38, 0xff800000, v165
	v_cmp_neq_f32_e64 s36, 0xff800000, v164
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s1, vcc_lo, s41
	s_and_b32 s3, vcc_lo, s40
	s_and_b32 s4, vcc_lo, s39
	s_and_b32 s5, vcc_lo, s38
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v163
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, vcc_lo, s36
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v161
	v_cmp_neq_f32_e64 s35, 0xff800000, v162
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v161, 0, v153
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s21
	s_and_b32 s21, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s35
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v103, 0x3fb8aa3b, v97
	v_dual_mul_f32 v97, 0x3fb8aa3b, v98 :: v_dual_mul_f32 v104, 0x3fb8aa3b, v99
	v_mul_f32_e32 v102, 0x3fb8aa3b, v100
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v100, 0x3fb8aa3b, v169
	v_dual_mul_f32 v98, 0x3fb8aa3b, v170 :: v_dual_mul_f32 v101, 0x3fb8aa3b, v171
	v_dual_mul_f32 v99, 0x3fb8aa3b, v172 :: v_dual_fmac_f32 v104, s78, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v103, s78, v89 :: v_dual_fmac_f32 v98, s78, v94
	v_dual_fmac_f32 v97, s78, v90 :: v_dual_fmac_f32 v100, s78, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v102, s78, v92 :: v_dual_fmac_f32 v101, s78, v95
	v_fmac_f32_e32 v99, s78, v96
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[89:92], v193
	ds_load_b128 v[93:96], v194
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v89, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v92, 0x3fb8aa3b, v92
	v_dual_mul_f32 v90, 0x3fb8aa3b, v90 :: v_dual_mul_f32 v91, 0x3fb8aa3b, v91
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v96, 0x3fb8aa3b, v96 :: v_dual_mul_f32 v93, 0x3fb8aa3b, v93
	v_dual_mul_f32 v94, 0x3fb8aa3b, v94 :: v_dual_mul_f32 v95, 0x3fb8aa3b, v95
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v92, s78, v84 :: v_dual_fmac_f32 v89, s78, v81
	v_dual_fmac_f32 v90, s78, v82 :: v_dual_fmac_f32 v91, s78, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, s78, v88 :: v_dual_fmac_f32 v93, s78, v85
	v_dual_fmac_f32 v94, s78, v86 :: v_dual_fmac_f32 v95, s78, v87
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[81:84], v195
	ds_load_b128 v[85:88], v196
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v81, 0x3fb8aa3b, v81 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v86
	v_dual_mul_f32 v82, 0x3fb8aa3b, v82 :: v_dual_mul_f32 v83, 0x3fb8aa3b, v83
	v_mul_f32_e32 v88, 0x3fb8aa3b, v88
	v_dual_mul_f32 v84, 0x3fb8aa3b, v84 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v82, s78, v74 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v87
	v_dual_fmac_f32 v81, s78, v73 :: v_dual_fmac_f32 v86, s78, v78
	v_dual_fmac_f32 v83, s78, v75 :: v_dual_fmac_f32 v88, s78, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, s78, v76 :: v_dual_fmac_f32 v85, s78, v77
	v_fmac_f32_e32 v87, s78, v79
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[73:76], v197
	ds_load_b128 v[77:80], v198
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v73, 0x3fb8aa3b, v73 :: v_dual_mul_f32 v78, 0x3fb8aa3b, v78
	v_dual_mul_f32 v74, 0x3fb8aa3b, v74 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v80, 0x3fb8aa3b, v80 :: v_dual_fmac_f32 v73, s78, v65
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v78, s78, v70
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v77, 0x3fb8aa3b, v77 :: v_dual_fmac_f32 v74, s78, v66
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s15
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, s78, v67 :: v_dual_fmac_f32 v80, s78, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v79
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v77, s78, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s16
	v_cndmask_b32_e64 v66, 0, 1, s17
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, s78, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s8
	v_cndmask_b32_e64 v66, 0, 1, s10
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s12
	v_cndmask_b32_e64 v66, 0, 1, s13
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s6
	v_cndmask_b32_e64 v66, 0, 1, s7
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s9
	v_cndmask_b32_e64 v66, 0, 1, s11
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s1
	v_cndmask_b32_e64 v66, 0, 1, s3
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s4
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.l, v66.l, v65.l
	v_add_nc_u32_e32 v66, 0, v150
	ds_store_2addr_b32 v66, v67, v68 offset1:32
	ds_store_2addr_b32 v66, v69, v65 offset0:64 offset1:96
	v_cndmask_b32_e64 v65, 0, 1, s30
	v_cndmask_b32_e64 v66, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s33
	v_cndmask_b32_e64 v66, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s24
	v_cndmask_b32_e64 v66, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s28
	v_cndmask_b32_e64 v66, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	v_cndmask_b32_e64 v66, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s25
	v_cndmask_b32_e64 v66, 0, 1, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s18
	v_cndmask_b32_e64 v66, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v65.l, v66.l, v65.l
	ds_store_2addr_b32 v199, v67, v68 offset1:32
	ds_store_2addr_b32 v199, v69, v65 offset0:64 offset1:96
	v_add_nc_u32_e32 v65, 0, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v66, v65
	ds_load_b32 v70, v200
	ds_load_b32 v105, v201
	ds_load_b32 v106, v202
	ds_load_b32 v107, v203
	ds_load_b32 v108, v204
	ds_load_b32 v109, v205
	ds_load_b32 v110, v206
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v79, s78, v71
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v68, 0x1000000, v66
	v_and_b32_e32 v72, 0x1000000, v70
	v_and_b32_e32 v69, 1, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s63, 0, v68
	v_cmp_ne_u32_e64 s60, 0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s62, 1, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v102, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v72, 0xff800000, v99, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v65, 0x10000, v66
	v_and_b32_e32 v99, 1, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v100, s62
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v100, s81, v136, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v65
	v_and_b32_e32 v65, 0x10000, v70
	v_cmp_eq_u32_e64 s56, 1, v99
	v_and_b32_e32 v99, 0x1000000, v105
	v_lshrrev_b16 v70.l, 8, v70.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v104, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s59, 0, v65
	v_and_b32_e32 v65, 0x10000, v105
	v_cmp_ne_u32_e64 s55, 0, v99
	v_and_b32_e32 v99, 1, v106
	v_and_b16 v70.l, 1, v70.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v101, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v65
	v_and_b32_e32 v65, 0x10000, v106
	v_cmp_eq_u32_e64 s54, 1, v99
	v_and_b32_e32 v99, 0x1000000, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v92, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s64, 1, v70.l
	v_cmp_ne_u32_e64 s48, 0, v65
	v_and_b32_e32 v65, 0x10000, v107
	v_cmp_ne_u32_e64 s51, 0, v99
	v_and_b32_e32 v99, 1, v107
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v98, s64
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, s77, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v65
	v_and_b32_e32 v65, 0x10000, v108
	v_cmp_eq_u32_e64 s49, 1, v99
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v96, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v98, s81, v98, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s43, 0, v65
	v_and_b32_e32 v65, 0x10000, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v81, s49
	v_cndmask_b32_e64 v89, 0xff800000, v89, s56
	v_cndmask_b32_e64 v91, 0xff800000, v91, s52
	v_cndmask_b32_e64 v87, 0xff800000, v87, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v65
	v_and_b32_e32 v65, 0x10000, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v93, s54
	v_cndmask_b32_e64 v75, 0xff800000, v75, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v65
	v_and_b32_e32 v65, 1, v66
	v_lshrrev_b16 v66.l, 8, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v95, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v79, 0xff800000, v79, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v66.l, 1, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v103, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s66, 1, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v97, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v97.l, 8, v105.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v97.l, 1, v97.l
	v_cmp_eq_u16_e64 s58, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v90, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s57, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v107.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v94, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	v_and_b32_e32 v99, 0x1000000, v107
	v_cmp_eq_u16_e64 s53, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v108.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s47, 0, v99
	v_and_b32_e32 v99, 1, v108
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s46, 1, v99
	v_and_b32_e32 v99, 0x1000000, v108
	v_cmp_eq_u16_e64 s50, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v109.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v99
	v_and_b32_e32 v99, 1, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v99
	v_and_b32_e32 v99, 0x1000000, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s42, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v110.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v99
	v_and_b32_e32 v99, 1, v110
	v_and_b16 v97.l, 1, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v74, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v76, 0xff800000, v76, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s38, 1, v99
	v_and_b32_e32 v99, 0x1000000, v110
	v_cmp_eq_u16_e64 s41, 1, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v97, 0, v152
	ds_store_b128 v97, v[65:68]
	ds_store_b128 v97, v[81:84] offset:2048
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v99
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v99, s77, 1, v135
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v97, s81, v135, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s38
	v_cndmask_b32_e64 v78, 0xff800000, v78, s41
	v_cndmask_b32_e64 v80, 0xff800000, v80, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v99, s81, v99, 1
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v207, v[69:72]
	ds_store_b128 v207, v[85:88] offset:2048
	ds_store_b128 v208, v[89:92]
	ds_store_b128 v208, v[73:76] offset:2048
	ds_store_b128 v209, v[93:96]
	ds_store_b128 v209, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	s_clause 0x3
	buffer_load_b128 v[170:173], v97, s[88:91], 0 offen
	buffer_load_b128 v[174:177], v99, s[88:91], 0 offen
	buffer_load_b128 v[162:165], v100, s[88:91], 0 offen
	buffer_load_b128 v[166:169], v98, s[88:91], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[125:128], v210
	ds_load_b128 v[117:120], v210 offset:256
	ds_load_b128 v[121:124], v210 offset:1024
	ds_load_b128 v[113:116], v210 offset:1280
	ds_load_b128 v[109:112], v210 offset:512
	ds_load_b128 v[101:104], v210 offset:768
	ds_load_b128 v[105:108], v210 offset:1536
	ds_load_b128 v[97:100], v210 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v178.l, v170.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v179.l, v174.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v179.h, v162.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v178.h, v166.l
	v_mov_b16_e64 v166.l, v170.h
	v_mov_b16_e64 v162.l, v174.h
	v_mov_b16_e64 v170.l, v172.l
	v_mov_b16_e64 v170.h, v168.l
	ds_store_b64 v161, v[178:179]
	v_mov_b16_e64 v178.h, v167.l
	v_mov_b32_e32 v161, v166
	v_mov_b16_e64 v167.l, v171.h
	v_mov_b16_e64 v179.l, v175.l
	v_mov_b16_e64 v179.h, v163.l
	v_mov_b16_e64 v178.l, v171.l
	ds_store_b64 v138, v[161:162]
	ds_store_b64 v139, v[178:179]
	v_mov_b16_e64 v163.l, v175.h
	v_mov_b32_e32 v162, v167
	v_mov_b16_e64 v171.l, v176.l
	v_mov_b16_e64 v171.h, v164.l
	v_mov_b16_e64 v168.l, v172.h
	ds_store_b64 v129, v[162:163]
	ds_store_b64 v252, v[170:171]
	v_mov_b16_e64 v162.h, v165.l
	v_mov_b16_e64 v165.l, v177.h
	v_mov_b16_e64 v164.l, v176.h
	v_mov_b32_e32 v163, v168
	v_mov_b16_e64 v162.l, v177.l
	v_mov_b16_e64 v161.l, v173.l
	v_mov_b16_e64 v161.h, v169.l
	v_mov_b32_e32 v170, v165
	v_mov_b16_e64 v169.l, v173.h
	ds_store_b64 v253, v[163:164]
	ds_store_b64 v254, v[161:162]
	ds_store_b64 v223, v[169:170]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v90, v91, v92
	v_max3_f32 v162, v93, v94, v95
	v_max3_f32 v163, v96, v81, v82
	v_max3_f32 v164, v73, v74, v75
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:52
	scratch_load_b32 v169, off, off offset:48
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v161, v162, v163
	v_max3_f32 v162, v83, v84, v85
	v_max3_f32 v163, v86, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v162, v162, v163, v164
	v_max_f32_e32 v163, v65, v66
	v_max3_f32 v164, v68, v69, v70
	v_max3_f32 v163, v163, v67, v164
	v_max3_f32 v164, v71, v72, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v161, v163, v164, v161
	v_dual_max_f32 v163, v76, v77 :: v_dual_max_f32 v164, v79, v80
	v_max3_f32 v163, v163, v78, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v161, v161, v162, v163
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v162, v161, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v233, v232, v161, v162
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v233
	v_sub_f32_e32 v65, v65, v233
	v_sub_f32_e32 v67, v67, v233
	v_sub_f32_e32 v68, v68, v233
	v_sub_f32_e32 v69, v69, v233
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v233
	v_sub_f32_e32 v72, v72, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s66
	v_cndmask_b32_e64 v65, 0, v65, s65
	v_cndmask_b32_e64 v67, 0, v67, s61
	v_cndmask_b32_e64 v68, 0, v68, s63
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v234.l, v66.h
	v_cmp_o_f32_e64 s66, v66, v66
	v_cmp_o_f32_e64 s65, v65, v65
	v_cmp_o_f32_e64 s61, v67, v67
	v_cmp_o_f32_e64 s63, v68, v68
	v_and_b32_e32 v161, 1, v234
	v_mov_b16_e64 v234.l, v68.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s62
	v_cndmask_b32_e64 v70, 0, v70, s64
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v161, 0x7fff
	v_mov_b16_e64 v161.h, v234.h
	v_mov_b16_e64 v161.l, v65.h
	v_cmp_o_f32_e64 s62, v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v161, 1, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s59, v71, v71
	v_add3_u32 v65, v65, v161, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v72, v72
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v161, v66, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v161, v66, v190
	v_perm_b32 v66, v161, v66, v224
	v_mov_b16_e64 v161.h, v234.h
	v_mov_b16_e64 v161.l, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v161, 1, v161
	v_add3_u32 v67, v67, v161, 0x7fff
	v_and_b32_e32 v161, 1, v234
	v_mov_b16_e64 v234.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v68, v161, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s61
	v_cmp_o_f32_e64 s61, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s63
	v_permlanex16_b32 v161, v68, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v161, v68, v190
	v_perm_b32 v68, v161, v68, v224
	v_mov_b16_e64 v161.h, v234.h
	v_mov_b16_e64 v161.l, v69.h
	v_and_b32_e32 v161, 1, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v161, 0x7fff
	v_and_b32_e32 v161, 1, v234
	v_mov_b16_e64 v234.l, v72.h
	v_add3_u32 v70, v70, v161, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s61
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v161, v70, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v161, v70, v190
	v_perm_b32 v70, v161, v70, v224
	v_mov_b16_e64 v161.h, v234.h
	v_mov_b16_e64 v161.l, v71.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v161, 1, v161
	v_add3_u32 v71, v71, v161, 0x7fff
	v_and_b32_e32 v161, 1, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v161, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s59
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s59, 0xff800000, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s60
	v_permlanex16_b32 v161, v72, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v71, v161, v72, v190
	v_perm_b32 v72, v161, v72, v224
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v161, v232, v233 :: v_dual_add_nc_u32 v232, 0, v146
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v161, v161
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[236:239], v232
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v235, 0, v161, s59
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v161, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v235
	v_mul_f32_e32 v18, v18, v235
	v_mul_f32_e32 v19, v19, v235
	v_mul_f32_e32 v20, v20, v235
	v_mul_f32_e32 v21, v21, v235
	v_mul_f32_e32 v22, v22, v235
	v_mul_f32_e32 v23, v23, v235
	v_mul_f32_e32 v24, v24, v235
	v_mul_f32_e32 v25, v25, v235
	v_mul_f32_e32 v26, v26, v235
	v_mul_f32_e32 v27, v27, v235
	v_mul_f32_e32 v28, v28, v235
	v_mul_f32_e32 v29, v29, v235
	v_mul_f32_e32 v30, v30, v235
	v_mul_f32_e32 v31, v31, v235
	v_mul_f32_e32 v32, v32, v235
	v_mul_f32_e32 v9, v9, v235
	v_mul_f32_e32 v10, v10, v235
	v_mul_f32_e32 v11, v11, v235
	v_mul_f32_e32 v12, v12, v235
	v_mul_f32_e32 v13, v13, v235
	v_mul_f32_e32 v14, v14, v235
	v_mul_f32_e32 v15, v15, v235
	v_mul_f32_e32 v16, v16, v235
	v_mul_f32_e32 v1, v1, v235
	v_mul_f32_e32 v2, v2, v235
	v_mul_f32_e32 v3, v3, v235
	v_mul_f32_e32 v4, v4, v235
	v_mul_f32_e32 v5, v5, v235
	v_mul_f32_e32 v6, v6, v235
	v_mul_f32_e32 v7, v7, v235
	v_mul_f32_e32 v8, v8, v235
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[173:176], v169
	scratch_load_b32 v169, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[240:243], v161
	scratch_load_b32 v161, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[236:243], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[236:239], v165
	scratch_load_b32 v165, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[240:243], v165
	scratch_load_b32 v165, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[236:243], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[236:239], v169
	scratch_load_b32 v169, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[240:243], v169
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[236:243], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[235:238], v141
	ds_load_b128 v[239:242], v142
	ds_load_b128 v[177:180], v130
	ds_load_b128 v[215:218], v143
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[235:242], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v89, v233
	v_sub_f32_e32 v66, v90, v233
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v89.h, v234.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v91, v233
	v_sub_f32_e32 v68, v92, v233
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v93, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v94, v233
	v_sub_f32_e32 v71, v95, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v96, v233
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v93, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s56
	v_cndmask_b32_e64 v66, 0, v66, s58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s52
	v_cndmask_b32_e64 v68, 0, v68, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.l, v65.h
	v_mov_b16_e64 v234.l, v66.h
	v_cmp_o_f32_e64 s56, v65, v65
	v_cmp_o_f32_e64 s58, v66, v66
	v_cmp_o_f32_e64 s52, v67, v67
	v_and_b32_e32 v89, 1, v89
	v_cmp_o_f32_e64 s55, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s54
	v_cndmask_b32_e64 v70, 0, v70, s57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v65, v65, v89, 0x7fff
	v_and_b32_e32 v89, 1, v234
	v_mov_b16_e64 v234.l, v68.h
	v_cmp_o_f32_e64 s54, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v89, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v71, v71
	v_permlanex16_b32 v89, v66, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s51, v72, v72
	v_perm_b32 v65, v89, v66, v190
	v_perm_b32 v66, v89, v66, v224
	v_mov_b16_e64 v89.h, v234.h
	v_mov_b16_e32 v89.l, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v67, v67, v89, 0x7fff
	v_and_b32_e32 v89, 1, v234
	v_mov_b16_e64 v234.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v68, v89, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s52
	v_cmp_o_f32_e64 s52, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s55
	v_permlanex16_b32 v89, v68, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v89, v68, v190
	v_perm_b32 v68, v89, v68, v224
	v_mov_b16_e64 v89.h, v234.h
	v_mov_b16_e32 v89.l, v69.h
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v89, 0x7fff
	v_and_b32_e32 v89, 1, v234
	v_mov_b16_e64 v234.l, v72.h
	v_add3_u32 v70, v70, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s52
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v70, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v89, v70, v190
	v_perm_b32 v70, v89, v70, v224
	v_mov_b16_e64 v89.h, v234.h
	v_mov_b16_e32 v89.l, v71.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v71, v71, v89, 0x7fff
	v_and_b32_e32 v89, 1, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v89, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s51
	v_permlanex16_b32 v89, v72, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v89, v72, v190
	v_perm_b32 v72, v89, v72, v224
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v89, off, off offset:32 ; 4-byte Folded Reload
	ds_load_b128 v[244:247], v161
	ds_load_b128 v[161:164], v232 offset:2048
	ds_load_b128 v[165:168], v165
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[161:168], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[161:164], v93
	scratch_load_b32 v93, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[248:251], v89
	scratch_load_b32 v89, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[244:251], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[165:168], v93
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[161:168], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[181:184], v185
	ds_load_b128 v[161:164], v186
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[177:184], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v81, v233
	v_sub_f32_e32 v66, v82, v233
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.h, v234.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v83, v233
	v_sub_f32_e32 v68, v84, v233
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v85, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v86, v233
	v_sub_f32_e32 v71, v87, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v88, v233
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v85, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s49
	v_cndmask_b32_e64 v66, 0, v66, s53
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s44
	v_cndmask_b32_e64 v68, 0, v68, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v81.l, v65.h
	v_mov_b16_e64 v234.l, v66.h
	v_cmp_o_f32_e64 s48, v65, v65
	v_cmp_o_f32_e64 s49, v66, v66
	v_cmp_o_f32_e64 s44, v67, v67
	v_and_b32_e32 v81, 1, v81
	v_cmp_o_f32_e64 s47, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s46
	v_cndmask_b32_e64 v70, 0, v70, s50
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v65, v65, v81, 0x7fff
	v_and_b32_e32 v81, 1, v234
	v_mov_b16_e64 v234.l, v68.h
	v_cmp_o_f32_e64 s46, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v81, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s43, v71, v71
	v_permlanex16_b32 v81, v66, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v81, v66, v190
	v_perm_b32 v66, v81, v66, v224
	v_mov_b16_e64 v81.h, v234.h
	v_mov_b16_e32 v81.l, v67.h
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v67, v81, 0x7fff
	v_and_b32_e32 v81, 1, v234
	v_mov_b16_e64 v234.l, v70.h
	v_add3_u32 v68, v68, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s44
	v_cmp_o_f32_e64 s44, v69, v69
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v81, v68, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v81, v68, v190
	v_perm_b32 v68, v81, v68, v224
	v_mov_b16_e64 v81.h, v234.h
	v_mov_b16_e32 v81.l, v69.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v69, v69, v81, 0x7fff
	v_and_b32_e32 v81, 1, v234
	v_mov_b16_e64 v234.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v70, v81, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s44
	v_cmp_o_f32_e64 s44, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s46
	v_permlanex16_b32 v81, v70, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v81, v70, v190
	v_perm_b32 v70, v81, v70, v224
	v_mov_b16_e64 v81.h, v234.h
	v_mov_b16_e32 v81.l, v71.h
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v81, 0x7fff
	v_and_b32_e32 v81, 1, v234
	v_add3_u32 v72, v72, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s43
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v81, v72, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v81, v72, v190
	v_perm_b32 v72, v81, v72, v224
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v81, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_b128 v[89:92], v89
	s_waitcnt vmcnt(1)
	ds_load_b128 v[85:88], v85
	s_waitcnt vmcnt(0)
	ds_load_b128 v[93:96], v81
	scratch_load_b32 v81, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[169:172], v81
	scratch_load_b32 v81, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[165:168], v187
	ds_load_b128 v[93:96], v188
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[161:168], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v81
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v232 offset:4096
	ds_load_b128 v[85:88], v144
	ds_load_b128 v[211:214], v140
	ds_load_b128 v[89:92], v232 offset:6144
	v_mov_b32_e32 v232, v233
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v73, v233
	v_sub_f32_e32 v66, v74, v233
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v73.h, v234.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v75, v233
	v_sub_f32_e32 v68, v76, v233
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v77, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v78, v233
	v_sub_f32_e32 v71, v79, v233
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v80, v233
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v77, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s40
	v_cndmask_b32_e64 v66, 0, v66, s42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s36
	v_cndmask_b32_e64 v68, 0, v68, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v65.h
	v_mov_b16_e64 v234.l, v66.h
	v_cmp_o_f32_e64 s40, v65, v65
	v_cmp_o_f32_e64 s42, v66, v66
	v_cmp_o_f32_e64 s36, v67, v67
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s39, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s38
	v_cndmask_b32_e64 v70, 0, v70, s41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v65, v65, v73, 0x7fff
	v_and_b32_e32 v73, 1, v234
	v_mov_b16_e64 v234.l, v68.h
	v_cmp_o_f32_e64 s38, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v108, v108
.Ltmp7:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v73, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s40
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v112, v112
.Ltmp9:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s35
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v106, v111, v107
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v84, v83
.Ltmp13:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v73, v66, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v84, v109, v105, v110
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v65, v73, v66, v190
	v_perm_b32 v66, v73, v66, v224
	v_mov_b16_e64 v73.h, v234.h
	v_mov_b16_e32 v73.l, v67.h
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v83, v84, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v84, v83 :: v_dual_and_b32 v73, 1, v73
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v73, 0x7fff
	v_and_b32_e32 v73, 1, v234
	v_mov_b16_e64 v234.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v68, v73, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s36
	v_cmp_o_f32_e64 s36, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v68, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v73, v68, v190
	v_perm_b32 v68, v73, v68, v224
	v_mov_b16_e64 v73.h, v234.h
	v_mov_b16_e32 v73.l, v69.h
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v84, v84, v84 :: v_dual_and_b32 v73, 1, v73
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v69, v73, 0x7fff
	v_and_b32_e32 v73, 1, v234
	v_mov_b16_e64 v234.l, v72.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v70, v73, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s36
	v_cmp_o_f32_e64 s36, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v70, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v73, v70, v190
	v_perm_b32 v70, v73, v70, v224
	v_mov_b16_e64 v73.h, v234.h
	v_mov_b16_e32 v73.l, v71.h
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v84, v227, v227 :: v_dual_and_b32 v73, 1, v73
	v_max_f32_e32 v227, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v71, v73, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v84, v109, v227 :: v_dual_and_b32 v73, 1, v234
	v_sub_f32_e32 v88, v105, v227
	v_sub_f32_e32 v85, v110, v227
	v_sub_f32_e32 v86, v111, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v72, v73, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v112, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v72, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v73, v72, v190
	v_perm_b32 v72, v73, v72, v224
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v73, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[169:176], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[211:218], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v100, v100
	v_max_f32_e32 v93, v104, v104
	v_max3_f32 v94, v98, v103, v99
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v106, v227
	v_sub_f32_e32 v90, v107, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v91, v108, v227 :: v_dual_max_f32 v92, v93, v92
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v101, v97, v102
	v_max3_f32 v92, v93, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	v_mov_b32_dpp v93, v93 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	v_max_f32_e32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	v_mov_b32_dpp v93, v93 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	v_max_f32_e32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	v_max_f32_e32 v92, v92, v93
.Ltmp49:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v93, v228, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v228, v93, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v101, v228
	v_sub_f32_e32 v97, v97, v228
	v_sub_f32_e32 v94, v102, v228
	v_sub_f32_e32 v98, v98, v228
	v_sub_f32_e32 v95, v103, v228
	v_sub_f32_e32 v99, v99, v228
	v_sub_f32_e32 v96, v104, v228
	v_sub_f32_e32 v100, v100, v228
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[77:80], v77
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v73
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v124, v124
	v_max_f32_e32 v66, v128, v128
	v_max3_f32 v67, v122, v127, v123
	v_max_f32_e32 v74, v116, v116
	v_max_f32_e32 v75, v120, v120
	v_max3_f32 v76, v114, v119, v115
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v66, v125, v121, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v75, v74
	v_max3_f32 v75, v117, v113, v118
	v_max3_f32 v65, v66, v67, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v74, v75, v76, v74
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_mov_b32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v75, v75, v75
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_mov_b32 v75, v74
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v74, v74, v75
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_mov_b32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v75, v75, v75
	v_max_f32_e32 v65, v65, v66
.Ltmp57:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v225, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v74, v75
.Ltmp59:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v75, v226, v226
	v_dual_max_f32 v225, v66, v65 :: v_dual_max_f32 v226, v75, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v125, v225
	v_sub_f32_e32 v70, v121, v225
	v_sub_f32_e32 v67, v126, v225
	v_sub_f32_e32 v71, v122, v225
	v_sub_f32_e32 v68, v127, v225
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v123, v225
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v128, v225
	v_sub_f32_e32 v73, v124, v225
	v_sub_f32_e32 v75, v117, v226
	v_sub_f32_e32 v79, v113, v226
	v_sub_f32_e32 v76, v118, v226
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s17
	v_cndmask_b32_e64 v70, 0, v70, s34
	v_cndmask_b32_e64 v67, 0, v67, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v114, v226
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp61:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v77, v119, v226
	v_sub_f32_e32 v81, v115, v226
	v_sub_f32_e32 v78, v120, v226
	v_sub_f32_e32 v82, v116, v226
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s14
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s33
.Ltmp62:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v72
	v_exp_f32_e32 v72, v91
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s24
.Ltmp64:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp65:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s31
	v_cndmask_b32_e64 v72, 0, v72, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v73
	v_exp_f32_e32 v73, v100
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v73, 0, v73, s18
.Ltmp68:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp69:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v68, v69 :: v_dual_mov_b32 v68, v131
.Ltmp71:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v80
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s26
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s28
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v66, v67
.Ltmp82:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v75
	v_exp_f32_e32 v67, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s29
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp84:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s12
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp86:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp88:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp90:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp92:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v90
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v69, v70
	v_mov_b32_e32 v69, v133
.Ltmp94:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp96:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp98:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v66, v67
.Ltmp105:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v84
	v_exp_f32_e32 v67, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s11
	v_cndmask_b32_e64 v67, 0, v67, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp107:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp109:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v86
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s7
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s6
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v70, v71 :: v_dual_mov_b32 v70, v132
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v98
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s19
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s20
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v66, v67
.Ltmp128:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v93
	v_exp_f32_e32 v67, v97
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s21
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp130:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s4
.Ltmp131:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v71
.Ltmp132:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp134:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v96
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v73
	v_add_f32_e32 v67, v71, v72
	v_mov_b32_e32 v71, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v66, v66, v67
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v66, v67
.Ltmp144:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v231, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v66, v231, v65 :: v_dual_mov_b32 v231, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v66, 0, v66, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v131, v68, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v230, v230
	v_max_f32_e32 v66, v66, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v230, v66
	v_mov_b32_e32 v230, v66
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v67, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v229
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v133, v69, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v83
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v68, v229, v67 :: v_dual_mov_b32 v229, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v68, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v132, v70, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v137, v137
	v_max_f32_e32 v68, v68, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v137, v68
	v_mov_b32_e32 v137, v68
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s1, s98, 64
	s_cmpk_lt_u32 s98, 0x7c0
	s_mov_b32 s98, s1
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v134, v71, v69
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v33, off, off offset:116
	scratch_load_b32 v36, off, off offset:100
	scratch_load_b32 v35, off, off offset:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v36, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	v_and_b32_e32 v0, 4, v0
	ds_store_2addr_b64 v35, v[131:132], v[133:134] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v18
	v_div_scale_f32 v42, null, v37, v37, v19
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v52, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v39, vcc_lo, v17, v37, v17
	v_div_scale_f32 v41, s1, v18, v37, v18
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v55, -v40, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v42, v48, 1.0
	v_div_scale_f32 v43, s2, v19, v37, v19
	v_fma_f32 v57, -v44, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v47, v55, v47 :: v_dual_fmac_f32 v48, v56, v48
	v_div_scale_f32 v51, s4, v21, v37, v21
	v_fma_f32 v60, -v52, v58, 1.0
	v_div_scale_f32 v45, s3, v20, v37, v20
	v_div_scale_f32 v50, null, v37, v37, v21
	v_mul_f32_e32 v56, v41, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v60, v58
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v40, v56, v41
	v_fmac_f32_e32 v49, v57, v49
	v_dual_mul_f32 v57, v43, v48 :: v_dual_fmac_f32 v56, v62, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v57, v63, v48
	.loc	1 759 31                        ; attention.py:759:31
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v36, v0, v36
	.loc	1 787 79                        ; attention.py:787:79
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s96, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s67, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v38, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s77, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v38, v46, 1.0
	v_fmac_f32_e32 v46, v54, v46
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v39, v46
	v_fma_f32 v61, -v38, v55, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v61, v46
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v37, v37, v24
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v17, v38, v37, v17
	v_rcp_f32_e32 v38, v42
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v18, v39, v37, v18
	v_div_scale_f32 v39, s2, v22, v37, v22
	v_div_fmas_f32 v40, v40, v48, v57
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v38, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_div_fixup_f32 v19, v40, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v46, v38
	v_fma_f32 v64, -v44, v59, v45
	v_fma_f32 v46, -v43, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v59, v64, v49
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	v_div_fmas_f32 v41, v41, v49, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v20, v41, v37, v20
	v_div_scale_f32 v41, s3, v23, v37, v23
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v45, v40, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v53
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v54, v44, v53
	v_div_scale_f32 v44, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v50, v54, v51
	v_fma_f32 v50, -v42, v40, v41
	v_rcp_f32_e32 v49, v44
	v_mul_f32_e32 v51, v46, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v26
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v50, v38
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_div_fixup_f32 v21, v48, v37, v21
	v_div_scale_f32 v48, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v22, v39, v37, v22
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v52, -v44, v49, 1.0
	v_fma_f32 v50, -v43, v51, v46
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_fmas_f32 v38, v39, v38, v40
	v_fmac_f32_e32 v51, v50, v47
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v28
	v_div_scale_f32 v43, s3, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v23, v38, v37, v23
	v_div_scale_f32 v51, null, v37, v37, v29
	v_fma_f32 v50, -v48, v42, 1.0
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s2, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v43, v45 :: v_dual_fmac_f32 v42, v50, v42
	v_div_fixup_f32 v24, v39, v37, v24
	v_mul_f32_e32 v41, v52, v49
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v53, v47, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v41, v52
	v_fmac_f32_e32 v47, v39, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s4, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v49, v41
	v_fma_f32 v50, -v46, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	v_div_scale_f32 v49, s2, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v30
	v_div_fixup_f32 v25, v38, v37, v25
	v_fma_f32 v38, -v53, v47, v43
	v_mul_f32_e32 v52, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v54, -v51, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_div_scale_f32 v45, s3, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v54, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v38, v37, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v31
	v_fma_f32 v43, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s5, v30, v37, v30
	v_div_fmas_f32 v38, v38, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v27, v38, v37, v27
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v32
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, s2, v31, v37, v31
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s3, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v41, v37, v30
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v29, v38, v37, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v37, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v31, v39, v37, v31
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v32, v40, v37, v32
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s4
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	v_or_b32_e32 v33, 32, v35
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_div_fixup_f32 v11, v43, v37, v11
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_scale_f32 v43, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v45, v47, 1.0
	v_rcp_f32_e32 v49, v43
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v49, 1.0
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s3, v16, v37, v16
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v53, s4, v1, v37, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v45, v44, v41
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v39, v42, 1.0
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_mul_f32_e32 v47, v38, v50
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_mul_f32 v45, v40, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v51, null, v37, v37, v3
	v_mul_f32_e32 v56, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v43, v45, v40
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v55, v51
	v_div_fixup_f32 v14, v41, v37, v14
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v54, v52
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_div_scale_f32 v54, s5, v2, v37, v2
	v_fma_f32 v44, -v51, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s2, v3, v37, v3
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_scale_f32 v49, null, v37, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v42, v37, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v42, null, v37, v37, v7
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v50, v44
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	v_div_scale_f32 v50, s3, v6, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v38, v37, v3
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v50, v44
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s4, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v37, v8
	v_mul_f32_e32 v54, v38, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v52, v47 :: v_dual_mul_f32 v57, v53, v46
	v_mul_f32_e32 v58, v55, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s77, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v35, v36, v35, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s83, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v37, 8, v35
	v_add_nc_u32_e32 v38, 16, v35
	v_cndmask_b32_e32 v39, 0x80000000, v35, vcc_lo
	s_mov_b32 s4, s82
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v17, v39, s[4:7], 0 offen
	buffer_store_b32 v18, v37, s[4:7], 0 offen
	buffer_store_b32 v19, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 24, v35
	v_add_nc_u32_e32 v18, 32, v35
	v_add_nc_u32_e32 v19, 40, v35
	v_add_nc_u32_e32 v37, 48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v38, 56, v35
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s77, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v37, s[4:7], 0 offen
	buffer_store_b32 v24, v38, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v34, 2
	v_add_nc_u32_e32 v18, 0x48, v35
	v_add_nc_u32_e32 v19, 0x50, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v20, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	v_add_nc_u32_e32 v21, 0x60, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v17, s[4:7], 0 offen
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	buffer_store_b32 v27, v19, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s77, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	buffer_store_b32 v28, v20, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v35
	v_add_nc_u32_e32 v20, 0x78, v35
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s77, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_add_lshl_u32 v0, v36, v0, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v32, v20, s[4:7], 0 offen
	buffer_store_b32 v9, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	buffer_store_b32 v14, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v16, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v0, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v3, 0xf0, v35
	v_add_nc_u32_e32 v9, 0xf8, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[4:7], 0 offen
	buffer_store_b32 v5, v1, s[4:7], 0 offen
	buffer_store_b32 v6, v2, s[4:7], 0 offen
	buffer_store_b32 v7, v3, s[4:7], 0 offen
	buffer_store_b32 v8, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 124
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 124
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16344
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 124
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 124
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 30
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
