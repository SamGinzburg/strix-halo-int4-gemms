	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
	v_and_b32_e32 v42, 7, v0
	v_lshrrev_b32_e32 v43, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[88:89], s[0:1], 0x10
	v_dual_mov_b32 v44, 0x7632 :: v_dual_lshlrev_b32 v41, 3, v42
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s96, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s97, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s96, v43
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s67, s96, s97
	v_dual_mov_b32 v71, 0x5410 :: v_dual_and_b32 v64, 15, v0
	s_mov_b32 s87, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	s_mov_b32 s86, 0x7ffffffe
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v148, 0xff800000
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_lshlrev_b32 v46, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s76, v43, v[41:42]
	s_mul_i32 s8, s76, s67
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s76, v41
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s84, s4
	s_and_b32 s85, s5, 0xffff
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v113, 16, v0
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
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:16
	scratch_store_b64 off, v[1:2], off
	v_add_lshl_u32 v1, v3, s8, 1
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v146, 0xff800000
	v_add_lshl_u32 v2, v6, s8, 1
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v6, off offset:20
	scratch_store_b32 off, v64, off offset:84
	scratch_store_b64 off, v[3:4], off offset:8
	v_add_lshl_u32 v3, v5, s8, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v45, 4, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x3
	buffer_load_b128 v[9:12], v4, s[84:87], 0 offen
	buffer_load_b128 v[13:16], v1, s[84:87], 0 offen
	buffer_load_b128 v[33:36], v2, s[84:87], 0 offen
	buffer_load_b128 v[37:40], v3, s[84:87], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v60, 0x70, v46
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v49, 1, v0
	s_add_i32 s0, s3, s0
	v_bfe_i32 v55, v0, 2, 1
	v_bfe_i32 v57, v0, 3, 1
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v113
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v45, v45, v60
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_lshlrev_b32 v48, 9, v0
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_lshlrev_b32 v52, 5, v0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v74, 0x78, v0
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v73, 0x60, v0
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v47, 0x70, v0
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v67, 2, v0
	v_bfe_i32 v50, v0, 0, 1
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v51, 28, v0
	v_dual_mov_b32 v32, v17 :: v_dual_lshlrev_b32 v53, 3, v0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v54, 4, v0
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v56, 8, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:80
	scratch_store_b32 off, v67, off offset:100
	v_dual_mov_b32 v1, v17 :: v_dual_lshlrev_b32 v70, 6, v113
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v58, 0x2040, v58
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v63, 4, v42
	v_lshlrev_b32_e32 v49, 6, v49
	v_dual_mov_b32 v136, v17 :: v_dual_and_b32 v55, 0x2040, v55
	v_cndmask_b32_e64 v0, 0x1054, v71, s0
	v_dual_mov_b32 v138, v17 :: v_dual_and_b32 v71, 0x410, v57
	v_mul_u32_u24_e32 v72, 0x90, v42
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_add_nc_u32 v153, 0, v45
	v_dual_mov_b32 v29, v17 :: v_dual_lshlrev_b32 v66, 5, v113
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v52, 0x60, v52
	v_dual_mov_b32 v8, v17 :: v_dual_and_b32 v65, 0x1b8, v67
	v_and_b32_e32 v67, 0x7c, v67
	v_and_or_b32 v50, 0x1020, v50, v55
	v_lshl_or_b32 v55, v56, 4, v70
	v_and_or_b32 v56, 0x1020, v57, v58
	v_lshl_or_b32 v0, v0, 8, v0
	v_xor_b32_e32 v57, v63, v74
	v_xor_b32_e32 v152, v72, v71
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v46, 0x80, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, v17 :: v_dual_and_b32 v0, 0x540054, v0
	v_lshrrev_b32_e32 v68, 3, v73
	v_lshl_add_u32 v54, v54, 9, 0
	v_lshl_or_b32 v158, v42, 10, v57
	v_xor_b32_e32 v42, 16, v152
	v_dual_mov_b32 v27, v17 :: v_dual_lshlrev_b32 v62, 6, v73
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v61, 7, v64
	v_lshlrev_b32_e32 v69, 2, v73
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v53, 0x310, v53
	v_lshlrev_b32_e32 v75, 3, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v60, v61, v62, v63
	v_or_b32_e32 v151, v63, v61
	v_xor_b32_e32 v57, 0x830, v152
	v_lshrrev_b32_e32 v64, 1, v47
	v_lshl_or_b32 v47, v47, 6, v75
	v_cndmask_b32_e64 v44, 0x3276, v44, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 1, v74
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[131:132], null, s5, v43, v[41:42]
	v_xor_b32_e32 v47, v47, v64
	v_xor_b32_e32 v64, 0x860, v152
	v_lshl_or_b32 v44, v44, 8, v44
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v45, 0, v60
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v58, v60, 16, 0
	v_xad_u32 v62, v60, 32, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v44, 0x760076, v44
	v_xad_u32 v63, v60, 48, 0
	v_xad_u32 v70, 0x60, v60, 0
	v_xad_u32 v71, 0x70, v60, 0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s77, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[132:133], null, s77, v59, v[41:42]
	v_add_nc_u32_e32 v166, 0, v47
	v_xor_b32_e32 v72, 32, v151
	v_xor_b32_e32 v76, 0x60, v151
	v_xor_b32_e32 v77, 0x70, v151
	v_xor_b32_e32 v78, 0x1040, v152
	v_xor_b32_e32 v79, 0x1050, v152
	v_mad_u64_u32 v[133:134], null, s5, 48, v[131:132]
	v_xor_b32_e32 v80, 0x1060, v152
	v_xor_b32_e32 v81, 0x1070, v152
	v_xor_b32_e32 v82, 0x1010, v152
	v_xor_b32_e32 v83, 0x1020, v152
	v_xor_b32_e32 v84, 0x1030, v152
	v_xor_b32_e32 v85, 0x1860, v152
	v_xor_b32_e32 v86, 0x1870, v152
	v_xor_b32_e32 v87, 0x1840, v152
	v_xor_b32_e32 v88, 0x1850, v152
	v_xor_b32_e32 v89, 0x1820, v152
	v_xor_b32_e32 v90, 0x1830, v152
	v_xor_b32_e32 v91, 0x1810, v152
	v_xor_b32_e32 v107, 0x120, v158
	v_xor_b32_e32 v108, 0x1b0, v158
	v_xor_b32_e32 v109, 0x240, v158
	v_xor_b32_e32 v110, 0x2d0, v158
	v_xor_b32_e32 v111, 0x360, v158
	v_xor_b32_e32 v112, 0x3f0, v158
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[134:135], null, s77, 3, v[132:133]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s79, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s4, s1
	v_add_nc_u32_e32 v160, 0, v72
	v_add_nc_u32_e32 v164, 0, v76
	v_add_nc_u32_e32 v165, 0, v77
	v_add_nc_u32_e32 v139, 0, v78
	v_add_nc_u32_e32 v140, 0, v79
	v_add_nc_u32_e32 v129, 0, v81
	v_add_nc_u32_e32 v249, 0, v82
	v_add_nc_u32_e32 v250, 0, v83
	v_add_nc_u32_e32 v251, 0, v84
	v_add_nc_u32_e32 v252, 0, v85
	v_add_nc_u32_e32 v253, 0, v86
	v_add_nc_u32_e32 v254, 0, v87
	v_add_nc_u32_e32 v191, 0, v88
	v_add_nc_u32_e32 v192, 0, v89
	v_add_nc_u32_e32 v193, 0, v90
	v_add_nc_u32_e32 v194, 0, v91
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v195, s5, 4, v131
	v_lshl_add_u32 v196, s5, 5, v131
	v_add_nc_u32_e32 v218, 0, v107
	v_add_nc_u32_e32 v219, 0, v108
	v_add_nc_u32_e32 v220, 0, v109
	v_add_nc_u32_e32 v221, 0, v110
	v_add_nc_u32_e32 v222, 0, v111
	v_add_nc_u32_e32 v223, 0, v112
	v_mov_b32_e32 v135, v17
	v_mov_b16_e64 v230.l, 0
	s_mov_b32 s68, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s78, s78, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s96
	s_and_b32 s81, s81, 0xffff
	s_add_i32 s79, s1, s3
	s_mov_b32 s98, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	s_and_b32 s85, s7, 0xffff
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s92, s80
	s_mov_b32 s93, s81
	s_add_i32 s79, s79, s4
	s_mov_b32 s84, s6
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s80, s68
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v153, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v153, v[13:16] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v153, v[33:36] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v153, v[37:40] offset:6144
	v_mov_b32_e32 v10, v17
	v_and_or_b32 v48, 0x1c00, v48, v49
	v_mov_b32_e32 v12, v17
	v_lshl_or_b32 v49, v73, 4, v67
	v_mov_b32_e32 v14, v17
	v_lshl_or_b32 v61, v51, 7, v69
	v_or3_b32 v154, v48, v66, v65
	v_xor_b32_e32 v48, v56, v52
	v_xor_b32_e32 v155, v49, v68
	v_xor_b32_e32 v49, 32, v152
	v_mov_b32_e32 v16, v17
	v_or3_b32 v157, v50, v55, v53
	v_add3_u32 v46, v54, v46, v48
	v_lshl_or_b32 v48, v0, 4, v0
	v_dual_mov_b32 v137, v17 :: v_dual_add_nc_u32 v0, 0, v42
	v_xor_b32_e32 v50, 48, v152
	v_or3_b32 v156, v61, v52, v51
	v_xor_b32_e32 v51, 64, v152
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:24
	scratch_store_b32 off, v113, off offset:88
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v49
	scratch_store_b32 off, v73, off offset:92 ; 4-byte Folded Spill
	v_xor_b32_e32 v52, 0x50, v152
	v_mov_b32_e32 v225, 0xff800000
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v50
	scratch_store_b32 off, v74, off offset:96 ; 4-byte Folded Spill
	v_xor_b32_e32 v53, 0x60, v152
	v_xor_b32_e32 v55, 0x70, v152
	v_xor_b32_e32 v56, 0x820, v152
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v51
	scratch_store_b32 off, v75, off offset:104 ; 4-byte Folded Spill
	v_xor_b32_e32 v61, 0x810, v152
	v_xor_b32_e32 v65, 0x870, v152
	v_xor_b32_e32 v66, 0x840, v152
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v52
	v_xor_b32_e32 v68, 0x850, v152
	v_xad_u32 v67, v60, 64, 0
	v_xad_u32 v69, 0x50, v60, 0
	v_xor_b32_e32 v60, 16, v151
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v53
	v_xor_b32_e32 v41, 8, v154
	v_xor_b32_e32 v43, 16, v154
	v_xor_b32_e32 v59, 24, v154
	v_xor_b32_e32 v54, 0x90, v158
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v0, 0, v55
	v_lshl_or_b32 v42, v44, 4, v44
	v_add_nc_u32_e32 v159, 0, v60
	v_and_b32_e32 v197, 0x5040504, v48
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v56
	v_add_nc_u32_e32 v255, 0, v41
	v_add_nc_u32_e32 v150, 0, v43
	v_add_nc_u32_e32 v141, 0, v59
	v_add_nc_u32_e32 v216, v46, v113
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v57
	v_add_nc_u32_e32 v217, 0, v54
	v_and_b32_e32 v224, 0x7060706, v42
	v_xor_b32_e32 v73, 48, v151
	v_xor_b32_e32 v74, 64, v151
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v61
	v_xor_b32_e32 v75, 0x50, v151
	v_xor_b32_e32 v92, 32, v154
	v_xor_b32_e32 v93, 40, v154
	v_xor_b32_e32 v94, 48, v154
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v64
	v_xor_b32_e32 v95, 56, v154
	v_xor_b32_e32 v96, 0x810, v155
	v_xor_b32_e32 v97, 4, v156
	v_xor_b32_e32 v98, 8, v156
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v65
	v_xor_b32_e32 v99, 12, v156
	v_xor_b32_e32 v100, 16, v156
	v_xor_b32_e32 v101, 20, v156
	v_xor_b32_e32 v102, 24, v156
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_xor_b32_e32 v103, 28, v156
	v_xor_b32_e32 v104, 32, v157
	v_xor_b32_e32 v105, 64, v157
	v_xor_b32_e32 v106, 0x60, v157
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_add_nc_u32_e32 v161, 0, v73
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v162, 0, v74
	v_add_nc_u32_e32 v163, 0, v75
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v45
	ds_load_b128 v[37:40], v58
	ds_load_b128 v[41:44], v62
	ds_load_b128 v[45:48], v63
	ds_load_b128 v[49:52], v67
	ds_load_b128 v[53:56], v69
	ds_load_b128 v[57:60], v70
	ds_load_b128 v[61:64], v71
	v_add_nc_u32_e32 v0, 0, v80
	v_add_nc_u32_e32 v144, 0, v92
	v_add_nc_u32_e32 v147, 0, v93
	v_add_nc_u32_e32 v142, 0, v94
	v_add_nc_u32_e32 v143, 0, v95
	v_add_nc_u32_e32 v130, 0, v96
	v_add_nc_u32_e32 v206, 0, v97
	v_add_nc_u32_e32 v207, 0, v98
	v_add_nc_u32_e32 v208, 0, v99
	v_add_nc_u32_e32 v209, 0, v100
	v_add_nc_u32_e32 v210, 0, v101
	v_add_nc_u32_e32 v211, 0, v102
	v_add_nc_u32_e32 v212, 0, v103
	v_add_nc_u32_e32 v213, 0, v104
	v_add_nc_u32_e32 v214, 0, v105
	v_add_nc_u32_e32 v215, 0, v106
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v15, v17
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[65:66], off, off
	scratch_load_b32 v66, off, off offset:16
	.loc	1 853 32                        ; attention.py:853:32
	s_or_b32 s81, s80, s97
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v112, s75 :: v_dual_add_nc_u32 v81, 0, v151
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s1, s81, s76
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v111, s74 :: v_dual_mov_b32 v110, s73
	v_dual_mov_b32 v109, s72 :: v_dual_mov_b32 v108, s71
	v_dual_mov_b32 v107, s70 :: v_dual_mov_b32 v106, s69
	v_mov_b32_e32 v105, s68
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
	s_add_i32 s1, s79, s80
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
	ds_store_b128 v153, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v153, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v153, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v153, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v159
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v159 offset:2048
	ds_load_b128 v[93:96], v159 offset:4096
	ds_load_b128 v[89:92], v81 offset:4096
	ds_load_b128 v[97:100], v81 offset:6144
	ds_load_b128 v[101:104], v159 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[65:72], v[33:40], v[105:112]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[105:112]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[89:96], v[33:40], v[105:112]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[33:40], v[105:112]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v161
	ds_load_b128 v[89:92], v160
	ds_load_b128 v[97:100], v160 offset:2048
	ds_load_b128 v[101:104], v161 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[89:96], v[41:48], v[121:128]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v161 offset:4096
	ds_load_b128 v[89:92], v160 offset:4096
	ds_load_b128 v[97:100], v160 offset:6144
	ds_load_b128 v[101:104], v161 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[89:96], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v163
	ds_load_b128 v[89:92], v162
	ds_load_b128 v[97:100], v162 offset:2048
	ds_load_b128 v[101:104], v163 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[89:96], v[49:56], v[121:128]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v163 offset:4096
	ds_load_b128 v[89:92], v162 offset:4096
	ds_load_b128 v[97:100], v162 offset:6144
	ds_load_b128 v[101:104], v163 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[89:96], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v165
	ds_load_b128 v[89:92], v164
	ds_load_b128 v[97:100], v164 offset:2048
	ds_load_b128 v[101:104], v165 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[89:96], v[57:64], v[121:128]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v165 offset:4096
	ds_load_b128 v[89:92], v164 offset:4096
	ds_load_b128 v[97:100], v164 offset:6144
	ds_load_b128 v[101:104], v165 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[89:96], v[57:64], v[73:80]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v89, s1, v131, 1
	v_add_lshl_u32 v90, s1, v195, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[57:64], v[65:72]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	v_cndmask_b32_e32 v93, 0x80000000, v90, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[89:92], v89, s[92:95], 0 offen
	buffer_load_b128 v[93:96], v93, s[92:95], 0 offen
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v119, 0xff80ff80, v90 :: v_dual_cndmask_b32 v118, 0xff80ff80, v89
	v_add_lshl_u32 v89, s1, v196, 1
	v_add_lshl_u32 v90, s1, v133, 1
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v111, 0xff80ff80, v94 :: v_dual_cndmask_b32 v110, 0xff80ff80, v93
	v_dual_cndmask_b32 v117, 0xff80ff80, v92 :: v_dual_cndmask_b32 v120, 0xff80ff80, v91
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	v_cndmask_b32_e32 v93, 0x80000000, v90, vcc_lo
	v_cndmask_b32_e32 v109, 0xff80ff80, v96, vcc_lo
	v_cndmask_b32_e32 v113, 0xff80ff80, v95, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[89:92], v89, s[92:95], 0 offen
	buffer_load_b128 v[93:96], v93, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v98.l, v120.l
	v_mov_b16_e32 v98.h, v117.l
	v_mov_b16_e32 v97.l, v118.l
	v_mov_b16_e32 v97.h, v119.l
	v_mov_b16_e32 v99.l, v110.l
	v_mov_b16_e32 v99.h, v111.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v230.h, v118.l
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e32 v114, 0xff80ff80, v89, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v100.h, v109.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v112, 0xff80ff80, v92, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v100.l, v113.l
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v115, 0xff80ff80, v90 :: v_dual_cndmask_b32 v116, 0xff80ff80, v91
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e32 v101, 0xff80ff80, v94, vcc_lo
	v_cndmask_b32_e32 v107, 0xff80ff80, v95, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v166, v[97:98], v[99:100] offset1:16
	v_mov_b16_e32 v98.l, v120.h
	v_mov_b16_e32 v98.h, v117.h
	v_mov_b16_e32 v97.l, v118.h
	v_mov_b16_e32 v97.h, v119.h
	v_mov_b16_e32 v100.l, v113.h
	v_mov_b16_e32 v100.h, v109.h
	v_mov_b16_e32 v99.l, v110.h
	v_mov_b16_e32 v99.h, v111.h
	v_mov_b16_e32 v90.l, v116.l
	v_mov_b16_e32 v90.h, v112.l
	v_mov_b16_e32 v89.l, v114.l
	v_mov_b16_e32 v89.h, v115.l
	ds_store_2addr_b64 v166, v[97:98], v[99:100] offset0:64 offset1:80
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v100, 0xff80ff80, v93 :: v_dual_cndmask_b32 v99, 0xff80ff80, v96
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v92.l, v107.l
	v_mov_b16_e32 v91.h, v101.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v91.l, v100.l
	v_mov_b16_e32 v92.h, v99.l
	ds_store_2addr_b64 v166, v[89:90], v[91:92] offset0:32 offset1:48
	v_mov_b16_e32 v90.l, v116.h
	v_mov_b16_e32 v90.h, v112.h
	v_mov_b16_e32 v89.l, v114.h
	v_mov_b16_e32 v89.h, v115.h
	v_mov_b16_e32 v92.l, v107.h
	v_mov_b16_e32 v92.h, v99.h
	v_mov_b16_e32 v91.l, v100.h
	v_mov_b16_e32 v91.h, v101.h
	ds_store_2addr_b64 v166, v[89:90], v[91:92] offset0:96 offset1:112
	v_add_nc_u32_e32 v89, 0, v154
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[89:90], v89
	ds_load_b64 v[91:92], v255
	ds_load_b64 v[97:98], v150
	ds_load_b64 v[102:103], v141
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v94, 16, v90
	v_lshlrev_b32_e32 v93, 16, v89
	v_and_b32_e32 v89, 0xffff0000, v89
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v105, 16, v91
	v_lshlrev_b32_e32 v108, 16, v92
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v96, 0x3fb8aa3b, v94 :: v_dual_mul_f32 v95, 0x3fb8aa3b, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v104, 0xffff0000, v90
	v_and_b32_e32 v167, 0xffff0000, v92
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v96, s78, v123 :: v_dual_fmac_f32 v95, s78, v121
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v93, 0x3fb8aa3b, v104
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v106, 0xffff0000, v91
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v89, 0x3fb8aa3b, v167 :: v_dual_lshlrev_b32 v104, 16, v97
	v_mul_f32_e32 v92, 0x3fb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v93, s78, v124 :: v_dual_mul_f32 v94, 0x3fb8aa3b, v106
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v106, 0x3fb8aa3b, v104 :: v_dual_mul_f32 v91, 0x3fb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v92, s78, v127
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v90, s78, v122 :: v_dual_and_b32 v123, 0xffff0000, v103
	v_dual_fmac_f32 v106, s78, v81 :: v_dual_lshlrev_b32 v105, 16, v98
	v_dual_fmac_f32 v91, s78, v125 :: v_dual_and_b32 v98, 0xffff0000, v98
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v121, 16, v102
	v_lshlrev_b32_e32 v122, 16, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v108, 0x3fb8aa3b, v105
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v97
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v89, s78, v128 :: v_dual_and_b32 v102, 0xffff0000, v102
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v103, 0x3fb8aa3b, v121 :: v_dual_mul_f32 v104, 0x3fb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v105, 0x3fb8aa3b, v98 :: v_dual_fmac_f32 v108, s78, v83
	v_dual_mul_f32 v97, 0x3fb8aa3b, v97 :: v_dual_mul_f32 v98, 0x3fb8aa3b, v102
	v_mul_f32_e32 v102, 0x3fb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v104, s78, v87 :: v_dual_fmac_f32 v105, s78, v84
	v_fmac_f32_e32 v97, s78, v82
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_b64 v[81:82], v144
	ds_load_b64 v[83:84], v147
	ds_load_b64 v[121:122], v142
	ds_load_b64 v[123:124], v143
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v103, s78, v85 :: v_dual_fmac_f32 v102, s78, v88
	v_fmac_f32_e32 v94, s78, v126
	v_fmac_f32_e32 v98, s78, v86
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v88, 0xffff0000, v82
	v_lshlrev_b32_e32 v87, 16, v82
	v_and_b32_e32 v126, 0xffff0000, v83
	v_lshlrev_b32_e32 v125, 16, v83
	v_lshlrev_b32_e32 v127, 16, v84
	v_and_b32_e32 v128, 0xffff0000, v84
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v84, 0x3fb8aa3b, v88 :: v_dual_mul_f32 v83, 0x3fb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v84, s78, v76
	v_dual_fmac_f32 v83, s78, v75 :: v_dual_and_b32 v86, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v82, 0x3fb8aa3b, v86 :: v_dual_lshlrev_b32 v85, 16, v81
	v_dual_mul_f32 v81, 0x3fb8aa3b, v85 :: v_dual_fmac_f32 v82, s78, v74
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v74, 0xffff0000, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v81, s78, v73 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v126
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v85, 0x3fb8aa3b, v125
	v_dual_mul_f32 v74, 0x3fb8aa3b, v74 :: v_dual_lshlrev_b32 v73, 16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v86, s78, v78 :: v_dual_fmac_f32 v85, s78, v77
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v88, 0x3fb8aa3b, v128 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v127
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v76, 0xffff0000, v122
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v74, s78, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v88, s78, v80 :: v_dual_fmac_f32 v87, s78, v79
	v_fmac_f32_e32 v73, s78, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v65.l, v230.l
	v_mov_b16_e32 v65.h, v120.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v76 :: v_dual_lshlrev_b32 v75, 16, v122
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v79, 16, v124
	v_and_b32_e32 v78, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v117.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v75, 0x3fb8aa3b, v75 :: v_dual_fmac_f32 v76, s78, v68
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v80, 0xffff0000, v124
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, vcc_lo, s1
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v119.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s15
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v230
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v75, s78, v67
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s14
	s_and_b32 s17, vcc_lo, s1
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v78 :: v_dual_lshlrev_b32 v77, 16, v123
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v80, 0x3fb8aa3b, v80 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v78, s78, v70 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v79
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s16
	v_cndmask_b32_e64 v66, 0, 1, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v110.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, s78, v69 :: v_dual_fmac_f32 v80, s78, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v67.l, v66.l, v65.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v65.l, v230.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v113.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, vcc_lo, s1
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v109.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v111.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s9
	s_and_b32 s8, vcc_lo, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s8
	s_and_b32 s12, vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s12
	v_cndmask_b32_e64 v66, 0, 1, s13
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v114.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v65.l, v230.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v116.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, vcc_lo, s1
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v112.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v115.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s7
	s_and_b32 s6, vcc_lo, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s6
	s_and_b32 s10, vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s10
	v_cndmask_b32_e64 v66, 0, 1, s11
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v100.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.l, v66.l, v65.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v65.l, v230.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v107.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v99.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s3, vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v101.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s3
	s_and_b32 s1, vcc_lo, s5
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s1
	s_and_b32 s5, vcc_lo, s4
	s_and_b32 s4, vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s5
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v65.l, v66.l, v65.l
	v_add_nc_u32_e32 v66, 0, v155
	ds_store_2addr_b32 v66, v67, v68 offset1:32
	ds_store_2addr_b32 v66, v69, v65 offset0:64 offset1:96
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v120
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v119
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v118
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, vcc_lo, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v117
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s31
	v_cndmask_b32_e64 v66, 0, 1, s34
	s_and_b32 s30, vcc_lo, s21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s30
	v_cndmask_b32_e64 v66, 0, 1, s33
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v67.h, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v113
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v111
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v110
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, vcc_lo, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v109
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s27
	v_cndmask_b32_e64 v66, 0, 1, s29
	s_and_b32 s26, vcc_lo, s21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s26
	v_cndmask_b32_e64 v66, 0, 1, s28
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v68.h, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v116
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v115
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s24, vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v114
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s23, vcc_lo, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v112
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s23
	v_cndmask_b32_e64 v66, 0, 1, s25
	s_and_b32 s22, vcc_lo, s21
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	v_cndmask_b32_e64 v66, 0, 1, s24
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v69.h, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v107
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v100
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v65, 0xffff0000, v99
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s19
	v_cndmask_b32_e64 v66, 0, 1, s21
	s_and_b32 s20, vcc_lo, s18
	s_and_b32 s18, vcc_lo, s35
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v70.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s18
	v_cndmask_b32_e64 v66, 0, 1, s20
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v70.h, v66.l, v65.l
	v_add_nc_u32_e32 v65, 0, v156
	ds_store_2addr_b32 v130, v67, v68 offset1:32
	ds_store_2addr_b32 v130, v69, v70 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v66, v65
	ds_load_b32 v70, v206
	ds_load_b32 v99, v207
	ds_load_b32 v100, v208
	ds_load_b32 v101, v209
	ds_load_b32 v107, v210
	ds_load_b32 v109, v211
	ds_load_b32 v110, v212
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v79, s78, v71
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v65, 0x10000, v66
	v_and_b32_e32 v68, 0x1000000, v66
	v_and_b32_e32 v69, 1, v70
	v_and_b32_e32 v72, 0x1000000, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s61, 0, v65
	v_and_b32_e32 v65, 0x10000, v70
	v_lshrrev_b16 v70.l, 8, v70.l
	v_cmp_ne_u32_e64 s63, 0, v68
	v_cmp_eq_u32_e64 s62, 1, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v96, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s59, 0, v65
	v_and_b32_e32 v65, 0x10000, v99
	v_and_b16 v70.l, 1, v70.l
	v_cmp_ne_u32_e64 s60, 0, v72
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v93, s63
	v_cndmask_b32_e64 v69, 0xff800000, v91, s62
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s51, 0, v65
	v_and_b32_e32 v65, 0x10000, v100
	v_cmp_eq_u16_e64 s65, 1, v70.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v92, s59
	v_cndmask_b32_e64 v72, 0xff800000, v89, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v89, 1, v99
	v_cmp_ne_u32_e64 s48, 0, v65
	v_and_b32_e32 v65, 0x10000, v101
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v94, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v94.l, 8, v100.l
	v_and_b32_e32 v92, 0x1000000, v99
	v_cmp_eq_u32_e64 s56, 1, v89
	v_cmp_ne_u32_e64 s44, 0, v65
	v_and_b32_e32 v65, 0x10000, v107
	v_and_b16 v94.l, 1, v94.l
	v_cmp_ne_u32_e64 s55, 0, v92
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v106, s56
	v_cndmask_b32_e64 v83, 0xff800000, v83, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s43, 0, v65
	v_and_b32_e32 v65, 0x10000, v109
	v_cmp_eq_u16_e64 s57, 1, v94.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v108, s51
	v_cndmask_b32_e64 v92, 0xff800000, v105, s55
	v_cndmask_b32_e64 v87, 0xff800000, v87, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v65
	v_and_b32_e32 v65, 0x10000, v110
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v98, s57
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, s77, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v65
	v_and_b32_e32 v65, 1, v66
	v_lshrrev_b16 v66.l, 8, v66.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v98, s81, v98, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s64, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v66.l, 1, v66.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v95, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s66, 1, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v104, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v66, 0xff800000, v90, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v90.l, 8, v99.l
	v_and_b32_e32 v96, 0x1000000, v100
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v99, s77, 1, v132
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v90.l, 1, v90.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s52, 0, v96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v99, s81, v99, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v90.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v102, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v102, 1, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v97, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v97.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s49, 1, v102
	v_and_b32_e32 v102, 0x1000000, v101
	v_and_b16 v97.l, 1, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v81, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v102
	v_and_b32_e32 v102, 1, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s54, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v107.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s46, 1, v102
	v_and_b32_e32 v102, 0x1000000, v107
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	v_and_b32_e32 v93, 1, v100
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v100, s81, v134, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v102
	v_and_b32_e32 v102, 1, v109
	v_cmp_eq_u16_e64 s50, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v109.l
	v_cmp_eq_u32_e64 s53, 1, v93
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v102
	v_and_b32_e32 v102, 0x1000000, v109
	v_and_b16 v97.l, 1, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s50
	v_cndmask_b32_e64 v88, 0xff800000, v88, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v102
	v_cmp_eq_u16_e64 s42, 1, v97.l
	v_lshrrev_b16 v97.l, 8, v110.l
	v_and_b32_e32 v102, 1, v110
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s40
	v_cndmask_b32_e64 v76, 0xff800000, v76, s39
	v_cndmask_b32_e64 v74, 0xff800000, v74, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v97.l, 1, v97.l
	v_cmp_eq_u32_e64 s38, 1, v102
	v_and_b32_e32 v102, 0x1000000, v110
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v103, s53
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v167, 0, v158
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v97, 0, v157
	ds_store_b128 v97, v[65:68]
	ds_store_b128 v97, v[81:84] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v97, s81, v132, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v102
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s38
	v_cndmask_b32_e64 v78, 0xff800000, v78, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v80, s37
	ds_store_b128 v213, v[69:72]
	ds_store_b128 v213, v[85:88] offset:2048
	ds_store_b128 v214, v[89:92]
	ds_store_b128 v214, v[73:76] offset:2048
	ds_store_b128 v215, v[93:96]
	ds_store_b128 v215, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[176:179], v97, s[88:91], 0 offen
	buffer_load_b128 v[180:183], v99, s[88:91], 0 offen
	buffer_load_b128 v[168:171], v100, s[88:91], 0 offen
	buffer_load_b128 v[172:175], v98, s[88:91], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[125:128], v216
	ds_load_b128 v[117:120], v216 offset:256
	ds_load_b128 v[121:124], v216 offset:1024
	ds_load_b128 v[113:116], v216 offset:1280
	ds_load_b128 v[109:112], v216 offset:512
	ds_load_b128 v[101:104], v216 offset:768
	ds_load_b128 v[105:108], v216 offset:1536
	ds_load_b128 v[97:100], v216 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v184.l, v176.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v185.l, v180.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v185.h, v168.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v184.h, v172.l
	v_mov_b16_e64 v172.l, v176.h
	v_mov_b16_e64 v168.l, v180.h
	v_mov_b16_e64 v176.l, v178.l
	v_mov_b16_e64 v176.h, v174.l
	ds_store_b64 v167, v[184:185]
	v_mov_b16_e64 v184.h, v173.l
	v_mov_b32_e32 v167, v172
	v_mov_b16_e64 v173.l, v177.h
	v_mov_b16_e64 v185.l, v181.l
	v_mov_b16_e64 v185.h, v169.l
	v_mov_b16_e64 v184.l, v177.l
	ds_store_b64 v217, v[167:168]
	ds_store_b64 v218, v[184:185]
	v_mov_b16_e64 v169.l, v181.h
	v_mov_b32_e32 v168, v173
	v_mov_b16_e64 v177.l, v182.l
	v_mov_b16_e64 v177.h, v170.l
	v_mov_b16_e64 v174.l, v178.h
	ds_store_b64 v219, v[168:169]
	ds_store_b64 v220, v[176:177]
	v_mov_b16_e64 v168.h, v171.l
	v_mov_b16_e64 v171.l, v183.h
	v_mov_b16_e64 v170.l, v182.h
	v_mov_b32_e32 v169, v174
	v_mov_b16_e64 v168.l, v183.l
	v_mov_b16_e64 v167.l, v179.l
	v_mov_b16_e64 v167.h, v175.l
	v_mov_b32_e32 v176, v171
	v_mov_b16_e64 v175.l, v179.h
	ds_store_b64 v221, v[169:170]
	ds_store_b64 v222, v[167:168]
	ds_store_b64 v223, v[175:176]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v90, v91, v92
	v_max3_f32 v168, v93, v94, v95
	v_max3_f32 v169, v96, v81, v82
	v_max3_f32 v170, v73, v74, v75
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v171, off, off offset:52
	scratch_load_b32 v175, off, off offset:48
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v167, v168, v169
	v_max3_f32 v168, v83, v84, v85
	v_max3_f32 v169, v86, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v168, v168, v169, v170
	v_max_f32_e32 v169, v65, v66
	v_max3_f32 v170, v68, v69, v70
	v_max3_f32 v169, v169, v67, v170
	v_max3_f32 v170, v71, v72, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v167, v169, v170, v167
	v_dual_max_f32 v169, v76, v77 :: v_dual_max_f32 v170, v79, v80
	v_max3_f32 v169, v169, v78, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v167, v167, v168, v169
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v168, v167, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v231, v229, v167, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v230.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v231
	v_sub_f32_e32 v65, v65, v231
	v_sub_f32_e32 v68, v68, v231
	v_sub_f32_e32 v67, v67, v231
	v_sub_f32_e32 v70, v70, v231
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v231
	v_sub_f32_e32 v72, v72, v231
	v_sub_f32_e32 v71, v71, v231
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s66
	v_cndmask_b32_e64 v65, 0, v65, s64
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s63
	v_cndmask_b32_e64 v67, 0, v67, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v167.l, v66.h
	v_cmp_o_f32_e64 s66, v66, v66
	v_cmp_o_f32_e64 s64, v65, v65
	v_cmp_o_f32_e64 s63, v68, v68
	v_cmp_o_f32_e64 s61, v67, v67
	v_and_b32_e32 v167, 1, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v167, 0x7fff
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v65.h
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v167, 1, v167
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s60
	v_cndmask_b32_e64 v71, 0, v71, s59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s62, v69, v69
	v_add3_u32 v65, v65, v167, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s60, v72, v72
	v_cmp_o_f32_e64 s59, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s64
	v_permlanex16_b32 v167, v66, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v167, v66, v197
	v_perm_b32 v66, v167, v66, v224
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v68.h
	v_and_b32_e32 v167, 1, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v167, 0x7fff
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v167, 1, v167
	v_add3_u32 v67, v67, v167, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s61
	v_cmp_o_f32_e64 s61, v70, v70
	v_permlanex16_b32 v167, v68, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v167, v68, v197
	v_perm_b32 v68, v167, v68, v224
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v70.h
	v_and_b32_e32 v167, 1, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v167, 0x7fff
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v167, 1, v167
	v_add3_u32 v69, v69, v167, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s62
	v_permlanex16_b32 v167, v70, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v167, v70, v197
	v_perm_b32 v70, v167, v70, v224
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v72.h
	v_and_b32_e32 v167, 1, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v167, 0x7fff
	v_mov_b16_e64 v167.h, v230.l
	v_mov_b16_e64 v167.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v167, 1, v167
	v_add3_u32 v71, v71, v167, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s59
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s59, 0xff800000, v229
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v167, v72, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v71, v167, v72, v197
	v_perm_b32 v72, v167, v72, v224
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v167, v229, v231
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v229, 0, v152
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v167, v167
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[233:236], v229
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v232, 0, v167, s59
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v167, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v232
	v_mul_f32_e32 v18, v18, v232
	v_mul_f32_e32 v19, v19, v232
	v_mul_f32_e32 v20, v20, v232
	v_mul_f32_e32 v21, v21, v232
	v_mul_f32_e32 v22, v22, v232
	v_mul_f32_e32 v23, v23, v232
	v_mul_f32_e32 v24, v24, v232
	v_mul_f32_e32 v25, v25, v232
	v_mul_f32_e32 v26, v26, v232
	v_mul_f32_e32 v27, v27, v232
	v_mul_f32_e32 v28, v28, v232
	v_mul_f32_e32 v29, v29, v232
	v_mul_f32_e32 v30, v30, v232
	v_mul_f32_e32 v31, v31, v232
	v_mul_f32_e32 v32, v32, v232
	v_mul_f32_e32 v1, v1, v232
	v_mul_f32_e32 v2, v2, v232
	v_mul_f32_e32 v3, v3, v232
	v_mul_f32_e32 v4, v4, v232
	v_mul_f32_e32 v5, v5, v232
	v_mul_f32_e32 v6, v6, v232
	v_mul_f32_e32 v7, v7, v232
	v_mul_f32_e32 v8, v8, v232
	v_mul_f32_e32 v9, v9, v232
	v_mul_f32_e32 v10, v10, v232
	v_mul_f32_e32 v11, v11, v232
	v_mul_f32_e32 v12, v12, v232
	v_mul_f32_e32 v13, v13, v232
	v_mul_f32_e32 v14, v14, v232
	v_mul_f32_e32 v15, v15, v232
	v_mul_f32_e32 v16, v16, v232
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[179:182], v175
	s_waitcnt vmcnt(0)
	ds_load_b128 v[237:240], v167
	scratch_load_b32 v167, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[233:240], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[233:236], v171
	scratch_load_b32 v171, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[237:240], v171
	scratch_load_b32 v171, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[233:240], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[233:236], v139
	ds_load_b128 v[237:240], v140
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[233:240], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[232:235], v252
	ds_load_b128 v[236:239], v253
	ds_load_b128 v[183:186], v254
	ds_load_b128 v[202:205], v251
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[232:239], v[65:72], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v90, v231
	v_sub_f32_e32 v65, v89, v231
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v89.h, v230.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v92, v231
	v_sub_f32_e32 v67, v91, v231
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v94, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v93, v231
	v_sub_f32_e32 v72, v96, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v95, v231
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s58
	v_cndmask_b32_e64 v65, 0, v65, s56
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s55
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v67, 0, v67, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.l, v66.h
	v_cmp_o_f32_e64 s58, v66, v66
	v_cmp_o_f32_e64 s56, v65, v65
	v_cmp_o_f32_e64 s55, v68, v68
	v_cmp_o_f32_e64 s51, v67, v67
	v_and_b32_e32 v89, 1, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s57
	v_cndmask_b32_e64 v69, 0, v69, s53
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v89, 0x7fff
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v65.h
	v_cmp_o_f32_e64 s53, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s58
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s52
	v_cndmask_b32_e64 v71, 0, v71, s48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v89, 0x7fff
	v_cmp_o_f32_e64 s48, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s56
	v_permlanex16_b32 v89, v66, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v89, v66, v197
	v_perm_b32 v66, v89, v66, v224
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v68.h
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v89, 0x7fff
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v67, v67, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s51
	v_cmp_o_f32_e64 s51, v70, v70
	v_permlanex16_b32 v89, v68, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v89, v68, v197
	v_perm_b32 v68, v89, v68, v224
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v70.h
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v89, 0x7fff
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s51
	v_cmp_o_f32_e64 s51, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v69, v69, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s53
	v_permlanex16_b32 v89, v70, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v89, v70, v197
	v_perm_b32 v70, v89, v70, v224
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v72.h
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v89, 0x7fff
	v_mov_b16_e64 v89.h, v230.l
	v_mov_b16_e32 v89.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v71, v71, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s48
	v_permlanex16_b32 v89, v72, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v89, v72, v197
	v_perm_b32 v72, v89, v72, v224
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v89, off, off offset:32 ; 4-byte Folded Reload
	ds_load_b128 v[241:244], v167
	ds_load_b128 v[167:170], v229 offset:2048
	s_waitcnt vmcnt(1)
	ds_load_b128 v[171:174], v171
	s_waitcnt vmcnt(0)
	ds_load_b128 v[245:248], v89
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[167:174], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v0
	ds_load_b128 v[171:174], v129
	scratch_load_b32 v89, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[241:248], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[187:190], v191
	ds_load_b128 v[167:170], v192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[183:190], v[65:72], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v82, v231
	v_sub_f32_e32 v65, v81, v231
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.h, v230.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v84, v231
	v_sub_f32_e32 v67, v83, v231
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v86, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v85, v231
	v_sub_f32_e32 v72, v88, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v87, v231
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v85, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s54
	v_cndmask_b32_e64 v65, 0, v65, s49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s47
	v_cndmask_b32_e64 v67, 0, v67, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v81.l, v66.h
	v_cmp_o_f32_e64 s48, v66, v66
	v_cmp_o_f32_e64 s49, v65, v65
	v_cmp_o_f32_e64 s47, v68, v68
	v_cmp_o_f32_e64 s44, v67, v67
	v_and_b32_e32 v81, 1, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s50
	v_cndmask_b32_e64 v69, 0, v69, s46
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v81, 0x7fff
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v65.h
	v_cmp_o_f32_e64 s46, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s48
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s45
	v_cndmask_b32_e64 v71, 0, v71, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v81, 0x7fff
	v_cmp_o_f32_e64 s43, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s49
	v_permlanex16_b32 v81, v66, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v81, v66, v197
	v_perm_b32 v66, v81, v66, v224
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v68.h
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v81, 0x7fff
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v67, v67, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s44
	v_cmp_o_f32_e64 s44, v70, v70
	v_permlanex16_b32 v81, v68, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v81, v68, v197
	v_perm_b32 v68, v81, v68, v224
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v70.h
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v81, 0x7fff
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s44
	v_cmp_o_f32_e64 s44, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v69, v69, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s46
	v_permlanex16_b32 v81, v70, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v81, v70, v197
	v_perm_b32 v70, v81, v70, v224
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v72.h
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v81, 0x7fff
	v_mov_b16_e64 v81.h, v230.l
	v_mov_b16_e32 v81.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v71, v71, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s43
	v_permlanex16_b32 v81, v72, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v81, v72, v197
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
	ds_load_b128 v[175:178], v81
	scratch_load_b32 v81, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[171:174], v193
	ds_load_b128 v[93:96], v194
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v81
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v229 offset:4096
	ds_load_b128 v[85:88], v249
	ds_load_b128 v[198:201], v250
	ds_load_b128 v[89:92], v229 offset:6144
	v_mov_b32_e32 v229, v231
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v74, v231
	v_sub_f32_e32 v65, v73, v231
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v73.h, v230.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v76, v231
	v_sub_f32_e32 v67, v75, v231
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v78, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v77, v231
	v_sub_f32_e32 v72, v80, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v79, v231
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v77, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s42
	v_cndmask_b32_e64 v65, 0, v65, s40
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s39
	v_cndmask_b32_e64 v67, 0, v67, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v66.h
	v_cmp_o_f32_e64 s42, v66, v66
	v_cmp_o_f32_e64 s40, v65, v65
	v_cmp_o_f32_e64 s39, v68, v68
	v_cmp_o_f32_e64 s36, v67, v67
	v_and_b32_e32 v73, 1, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s41
	v_cndmask_b32_e64 v69, 0, v69, s38
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v65.h
	v_cmp_o_f32_e64 s38, v69, v69
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v108, v108
.Ltmp7:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v84, v112, v112 :: v_dual_and_b32 v73, 1, v73
.Ltmp9:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v71, s35
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v106, v111, v107
	v_max_f32_e32 v83, v84, v83
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v73, 0x7fff
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v84, v109, v105, v110
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s40
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v83, v84, v85, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v66, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v65, v73, v66, v197
	v_perm_b32 v66, v73, v66, v224
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v68.h
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v84, v84, v84 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v67.h
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s39
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v84, v83 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v73, 0x7fff
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s36
	v_cmp_o_f32_e64 s36, v70, v70
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v68, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v73, v68, v197
	v_perm_b32 v68, v73, v68, v224
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v70.h
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v84, v83 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v69.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s36
	v_cmp_o_f32_e64 s36, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v83, v84
.Ltmp36:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v84, v148, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v69, v73, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v148, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v109, v148
	v_sub_f32_e32 v88, v105, v148
	v_sub_f32_e32 v85, v110, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v70, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v111, v148
	v_sub_f32_e32 v87, v112, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v73, v70, v197
	v_perm_b32 v70, v73, v70, v224
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e64 v73.h, v230.l
	v_mov_b16_e32 v73.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s36
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v73, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v72, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v73, v72, v197
	v_perm_b32 v72, v73, v72, v224
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v73, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[65:72], v[9:16]
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v100, v100
	v_max_f32_e32 v93, v104, v104
	v_max3_f32 v94, v98, v103, v99
.Ltmp38:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[175:182], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[198:205], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v106, v148
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v93, v92
	v_max3_f32 v93, v101, v97, v102
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v107, v148
	v_sub_f32_e32 v91, v108, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v93, v94, v92
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v93, v93 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v93
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v93, v93 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v93
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v93
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v93, v149, v149
	v_max_f32_e32 v149, v93, v92
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v101, v149
	v_sub_f32_e32 v97, v97, v149
	v_sub_f32_e32 v94, v102, v149
	v_sub_f32_e32 v95, v103, v149
	v_sub_f32_e32 v99, v99, v149
	v_sub_f32_e32 v98, v98, v149
	v_sub_f32_e32 v96, v104, v149
	v_sub_f32_e32 v100, v100, v149
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[77:80], v77
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v73
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
.Ltmp49:
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v74, v75, v76, v74
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp56:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v145, v145
	v_max_f32_e32 v145, v66, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v125, v145
	v_sub_f32_e32 v70, v121, v145
	v_sub_f32_e32 v67, v126, v145
	v_sub_f32_e32 v71, v122, v145
	v_sub_f32_e32 v68, v127, v145
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v123, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v124, v145
	v_sub_f32_e32 v69, v128, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v70, 0, v70, s34
	v_cndmask_b32_e64 v67, 0, v67, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp57:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp58:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s31
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v72
	v_exp_f32_e32 v72, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp62:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v72, 0, v72, s22
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp64:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v73
	v_exp_f32_e32 v73, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s30
	v_cndmask_b32_e64 v73, 0, v73, s18
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v68, v69 :: v_dual_mov_b32 v68, v135
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v74, v75
.Ltmp88:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v75, v146, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v135, v66, v67 :: v_dual_max_f32 v146, v75, v74
.Ltmp90:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v117, v146
	v_sub_f32_e32 v79, v113, v146
	v_sub_f32_e32 v76, v118, v146
	v_sub_f32_e32 v80, v114, v146
	v_sub_f32_e32 v77, v119, v146
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v75
	v_exp_f32_e32 v67, v79
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v115, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v80
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v120, v146
	v_sub_f32_e32 v82, v116, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s13
	v_cndmask_b32_e64 v67, 0, v67, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp92:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v71, 0, v71, s26
	v_cndmask_b32_e64 v67, 0, v67, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp94:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v77
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s9
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s8
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp100:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v69, v70
	v_mov_b32_e32 v69, v137
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v89
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s24
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s23
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v66, v67
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v84
	v_exp_f32_e32 v67, v88
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s25
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s10
.Ltmp116:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp119:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp121:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v87
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp123:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v99
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v70, v71 :: v_dual_mov_b32 v70, v136
.Ltmp125:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp127:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp129:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v66, v67
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v93
	v_exp_f32_e32 v67, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s5
	v_cndmask_b32_e64 v67, 0, v67, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp138:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v71
.Ltmp140:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v95
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s3
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp144:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v228
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v67, v71, v72
	v_mov_b32_e32 v71, v138
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v66, v67
.Ltmp152:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v228, v228
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v228, v65
	v_mov_b32_e32 v228, v65
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v66, 0, v66, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v227
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v135, v68, v66 :: v_dual_max_f32 v66, v227, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v66, v74
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v227, v66
	v_mov_b32_e32 v227, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v67, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v137, v69, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v226, v226
	v_max_f32_e32 v67, v67, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v226, v67
	v_mov_b32_e32 v226, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v68, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v225
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v136, v70, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v225, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v92
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v225, v68
	v_mov_b32_e32 v225, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s1, s80, 64
	s_cmpk_lt_u32 s80, 0x1c0
	s_mov_b32 s80, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v138, v71, v69
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:80
	scratch_load_b32 v33, off, off offset:100
	scratch_load_b32 v34, off, off offset:104
	scratch_load_b32 v35, off, off offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, 0, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	v_and_b32_e32 v0, 4, v0
	ds_store_2addr_b64 v35, v[135:136], v[137:138] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	scratch_load_b32 v33, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v18
	v_div_scale_f32 v42, null, v37, v37, v19
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v39, vcc_lo, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v41, s1, v18, v37, v18
	v_div_scale_f32 v43, s2, v19, v37, v19
	v_div_scale_f32 v51, s4, v21, v37, v21
	v_fma_f32 v55, -v40, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v56, -v42, v48, 1.0
	v_div_scale_f32 v52, null, v37, v37, v22
	v_fma_f32 v57, -v44, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v55, v47 :: v_dual_fmac_f32 v48, v56, v48
	v_rcp_f32_e32 v58, v52
	v_div_scale_f32 v45, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v50, null, v37, v37, v21
	v_mul_f32_e32 v56, v41, v47
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v52, v58, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_fma_f32 v62, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v43, v48 :: v_dual_fmac_f32 v58, v60, v58
	v_fma_f32 v64, -v44, v59, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v63, -v42, v57, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v63, v48
	.loc	1 759 31                        ; attention.py:759:31
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v0
	v_or_b32_e32 v36, v0, v33
	.loc	1 787 79                        ; attention.py:787:79
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s96, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s67, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v38, null, v37, v37, v17
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s77, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v38
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v54, v46
	v_fma_f32 v54, -v50, v53, 1.0
	v_mul_f32_e32 v55, v39, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v38, v55, v39
	v_fmac_f32_e32 v55, v61, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v23
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v37, v37, v24
	v_div_fmas_f32 v39, v39, v47, v56
	s_delay_alu instid0(VALU_DEP_3)
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
	v_fmac_f32_e32 v59, v64, v49
	v_div_fixup_f32 v19, v40, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v46, v38
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	v_fma_f32 v46, -v43, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v24, v37, v24
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v50, v54, v51
	v_rcp_f32_e32 v49, v44
	v_fma_f32 v50, -v42, v40, v41
	v_mul_f32_e32 v51, v46, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v26
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v21, v48, v37, v21
	v_div_fixup_f32 v22, v39, v37, v22
	v_div_scale_f32 v48, null, v37, v37, v27
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v50, -v43, v51, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_scale_f32 v52, s2, v25, v37, v25
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v50, v47
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v28
	v_div_scale_f32 v43, s3, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v23, v38, v37, v23
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v24, v39, v37, v24
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v51, null, v37, v37, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fmac_f32_e32 v47, v39, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s4, v27, v37, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v51, null, v37, v37, v2
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
	v_div_scale_f32 v42, null, v37, v37, v1
	v_div_fixup_f32 v29, v38, v37, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v4
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
	v_div_scale_f32 v38, s4, v1, v37, v1
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
	v_div_scale_f32 v47, null, v37, v37, v3
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v2, v37, v2
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
	v_div_scale_f32 v49, s5, v3, v37, v3
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s3, v4, v37, v4
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v35, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_or_b32_e32 v0, 48, v35
	v_or_b32_e32 v33, 32, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v39, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v5, v37, v5
	v_div_fixup_f32 v1, v38, v37, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v43, v37, v3
	v_fmac_f32_e32 v44, v48, v55
	v_div_scale_f32 v43, null, v37, v37, v7
	v_fma_f32 v48, -v42, v38, v46
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v53, v44, v40
	v_rcp_f32_e32 v49, v43
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v8
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v41, v37, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v40, v37, v4
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	v_fma_f32 v41, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v46, v49
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v9
	v_div_scale_f32 v40, s2, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v6, v37, v6
	v_div_scale_f32 v46, null, v37, v37, v10
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v38, s3, v8, v37, v8
	v_rcp_f32_e32 v52, v46
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s4, v9, v37, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v41, v37, v6
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v12
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v41, v42
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v7, v40, v37, v7
	v_fma_f32 v44, -v51, v55, 1.0
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v8, v38, v37, v8
	v_div_scale_f32 v49, null, v37, v37, v16
	v_fmac_f32_e32 v55, v44, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_scale_f32 v44, s2, v11, v37, v11
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v14
	v_div_fixup_f32 v9, v39, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v52, v43
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v42, v37, v10
	v_div_scale_f32 v42, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v42, v46, 1.0
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v15, v37, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v12, v37, v12
	v_div_fixup_f32 v11, v38, v37, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v14, v37, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s2, v13, v37, v13
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v16, v37, v16
	v_fmac_f32_e32 v54, v52, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v45, v44
	v_dual_mul_f32 v57, v53, v46 :: v_dual_mul_f32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v40, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v43, v37, v12
	v_div_fmas_f32 v38, v38, v41, v54
	v_dual_fmac_f32 v57, v52, v46 :: v_dual_fmac_f32 v58, v39, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v39, -v42, v57, v53
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v13, v38, v37, v13
	v_div_fixup_f32 v14, v40, v37, v14
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s5, s83, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s77, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v35, v36, v35, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v39, v37, v15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_mov_b32 s4, s82
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v41, v37, v16
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v38, 16, v35
	v_add_nc_u32_e32 v37, 8, v35
	v_cndmask_b32_e32 v39, 0x80000000, v35, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_clause 0x2
	buffer_store_b32 v17, v39, s[4:7], 0 offen
	buffer_store_b32 v18, v37, s[4:7], 0 offen
	buffer_store_b32 v19, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v37, 48, v35
	v_add_nc_u32_e32 v38, 56, v35
	v_add_nc_u32_e32 v19, 40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_add_nc_u32 v17, 24, v35
	v_add_nc_u32_e32 v18, 32, v35
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s77, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s77, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
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
	v_add_nc_u32_e32 v19, 0x70, v35
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	buffer_store_b32 v28, v20, s[4:7], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v35
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s77, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v36, v0, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v32, v20, s[4:7], 0 offen
	buffer_store_b32 v1, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v3, v1, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v4, v2, s[4:7], 0 offen
	buffer_store_b32 v5, v17, s[4:7], 0 offen
	buffer_store_b32 v6, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v35
	v_add_nc_u32_e32 v3, 0xc8, v35
	v_add_nc_u32_e32 v4, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[4:7], 0 offen
	buffer_store_b32 v8, v2, s[4:7], 0 offen
	buffer_store_b32 v9, v0, s[4:7], 0 offen
	buffer_store_b32 v10, v3, s[4:7], 0 offen
	buffer_store_b32 v11, v4, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v3, 0xf0, v35
	v_add_nc_u32_e32 v4, 0xf8, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[4:7], 0 offen
	buffer_store_b32 v13, v1, s[4:7], 0 offen
	buffer_store_b32 v14, v2, s[4:7], 0 offen
	buffer_store_b32 v15, v3, s[4:7], 0 offen
	buffer_store_b32 v16, v4, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp153:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 112
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 112
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16760
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 112
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
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
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
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
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 112
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 27
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
