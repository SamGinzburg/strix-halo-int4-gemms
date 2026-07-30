	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v41, 0x5410 :: v_dual_and_b32 v38, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v42, 0x7632 :: v_dual_lshlrev_b32 v1, 4, v38
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s104, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s7, s6, s104
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 15, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_mov_b32_e32 v18, v17
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v44, 3, v0
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v101, 16, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[85:86], null, s84, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v48, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[85:86]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v51, 9, v0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v102, 2, v0
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v38, 6, v38
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_bfe_i32 v55, v0, 2, 1
	s_lshr_b32 s0, s0, 29
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v39
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v61, 0x1b8, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v40
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v62, 5, v101
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v63, 0x7c, v102
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v98, s7, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v105, 0xff800000
	v_or_b32_e32 v59, s6, v44
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v60, v48, 30, v46
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v98
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_and_or_b32 v38, 0x1c00, v51, v38
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v47, v0, 0, 1
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v65, 2, v39
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v55, 0x2040, v55
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v37, v1, s[92:95], 0 offen
	v_mov_b32_e32 v8, v17
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v64, 3, v39
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 0x200, v59
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v59, 2, v60
	v_lshl_or_b32 v39, v39, 4, v63
	v_or3_b32 v118, v38, v62, v61
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v53, 5, v0
	v_bfe_i32 v57, v0, 3, 1
	v_dual_mov_b32 v1, v17 :: v_dual_and_b32 v58, 0x2040, v58
	v_and_or_b32 v47, 0x1020, v47, v55
	v_xor_b32_e32 v55, 4, v59
	v_xor_b32_e32 v119, v39, v64
	v_xor_b32_e32 v39, 8, v118
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v103, 4, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v49, 24, v0
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v54, 4, v0
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v53, 0x60, v53
	v_and_or_b32 v51, 0x1020, v57, v58
	v_dual_mov_b32 v20, v17 :: v_dual_lshlrev_b32 v45, 3, v0
	v_add_nc_u32_e32 v127, 0, v39
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v50, 0x70, v0
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v106, 3, v40
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v3, v17
	v_xor_b32_e32 v107, v103, v49
	v_and_b32_e32 v49, 24, v48
	v_and_b32_e32 v48, 0x80, v48
	v_lshl_add_u32 v54, v54, 9, 0
	v_xor_b32_e32 v38, v51, v53
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v43, 56, v45
	v_or_b32_e32 v108, s104, v46
	v_lshrrev_b32_e32 v46, 1, v50
	v_lshl_add_u32 v109, v40, 1, 0
	v_lshl_or_b32 v110, v40, 5, v49
	v_lshl_or_b32 v40, v50, 6, v106
	v_add3_u32 v38, v54, v48, v38
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 3
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s4, s4, s3
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s0, s87, s0
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[86:87], null, s5, v44, v[43:44]
	v_xor_b32_e32 v40, v40, v46
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s3, s85, v43
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[87:88], null, s85, v44, v[43:44]
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s87, s4, s0
	v_xor_b32_e32 v43, 16, v118
	v_add_nc_u32_e32 v145, v38, v101
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v101
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v52, 28, v0
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v56, 8, v0
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v66, 6, v101
	v_dual_mov_b32 v81, v17 :: v_dual_add_nc_u32 v126, 0, v40
	v_dual_mov_b32 v83, v17 :: v_dual_add_nc_u32 v128, 0, v43
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	v_dual_mov_b32 v4, v17 :: v_dual_and_b32 v45, 0x310, v45
	v_lshl_or_b32 v49, v52, 7, v65
	v_lshl_or_b32 v50, v56, 4, v66
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[90:91], null, s5, 48, v[86:87]
	v_xor_b32_e32 v60, 8, v107
	v_or3_b32 v120, v49, v53, v52
	v_or3_b32 v121, v47, v50, v45
	v_mov_b32_e32 v5, v17
	v_xor_b32_e32 v56, 8, v110
	v_xor_b32_e32 v57, 16, v110
	v_xor_b32_e32 v58, 24, v110
	v_add_nc_u32_e32 v122, 0, v60
	v_xor_b32_e32 v44, 24, v118
	v_xor_b32_e32 v45, 32, v118
	v_xor_b32_e32 v46, 40, v118
	v_xor_b32_e32 v47, 48, v118
	v_xor_b32_e32 v49, 56, v118
	v_xor_b32_e32 v50, 0x810, v119
	v_xor_b32_e32 v51, 4, v120
	v_xor_b32_e32 v52, 8, v120
	v_xor_b32_e32 v53, 12, v120
	v_xor_b32_e32 v60, 16, v120
	v_xor_b32_e32 v61, 20, v120
	v_xor_b32_e32 v62, 24, v120
	v_xor_b32_e32 v63, 28, v120
	v_xor_b32_e32 v64, 32, v121
	v_xor_b32_e32 v48, 64, v121
	v_xor_b32_e32 v54, 0x60, v121
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_mov_b32 v154, 0xff800000
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_mov_b32 v156, 0xff800000
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_mov_b32 v158, 0xff800000
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v104, 0x78, v0
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v124, 0, v57
	v_dual_mov_b32 v82, v17 :: v_dual_add_nc_u32 v123, 0, v56
	v_dual_mov_b32 v84, v17 :: v_dual_add_nc_u32 v125, 0, v58
	v_or_b32_e32 v111, 50, v108
	v_or_b32_e32 v112, 52, v108
	v_or_b32_e32 v113, 54, v108
	v_or_b32_e32 v114, 56, v108
	v_or_b32_e32 v115, 58, v108
	v_or_b32_e32 v116, 60, v108
	v_or_b32_e32 v117, 62, v108
	v_add_nc_u32_e32 v129, 0, v44
	v_add_nc_u32_e32 v130, 0, v45
	v_add_nc_u32_e32 v131, 0, v46
	v_add_nc_u32_e32 v132, 0, v47
	v_add_nc_u32_e32 v133, 0, v49
	v_add_nc_u32_e32 v134, 0, v50
	v_add_nc_u32_e32 v135, 0, v51
	v_add_nc_u32_e32 v136, 0, v52
	v_add_nc_u32_e32 v137, 0, v53
	v_add_nc_u32_e32 v138, 0, v60
	v_add_nc_u32_e32 v139, 0, v61
	v_add_nc_u32_e32 v140, 0, v62
	v_add_nc_u32_e32 v141, 0, v63
	v_add_nc_u32_e32 v142, 0, v64
	v_add_nc_u32_e32 v143, 0, v48
	v_add_nc_u32_e32 v144, 0, v54
	v_lshl_add_u32 v146, s5, 4, v86
	v_lshl_add_u32 v147, s5, 5, v86
	v_lshl_add_u32 v148, s85, 4, v87
	v_lshl_add_u32 v150, s85, 5, v87
	s_mov_b32 s76, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s86, s86, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s102, s94
	s_mov_b32 s103, s95
	s_mov_b32 vcc_hi, s76
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_add_i32 s87, s87, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v59, v33
	ds_bpermute_b32 v33, v55, v33
	ds_bpermute_b32 v38, v59, v34
	ds_bpermute_b32 v34, v55, v34
	ds_bpermute_b32 v40, v59, v35
	ds_bpermute_b32 v35, v55, v35
	ds_bpermute_b32 v43, v59, v36
	ds_bpermute_b32 v36, v55, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v88, v33, v39, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v89, v34, v38, s0
	v_cndmask_b32_e64 v93, v38, v34, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v94, v35, v40, s0
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[91:92], null, s85, 48, v[87:88]
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v149, 16, v37
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v92, v39, v33, s0
	v_and_b32_e32 v33, 0x540054, v41
	v_and_b32_e32 v37, 0x760076, v42
	v_cndmask_b32_e64 v96, v40, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v95, v36, v43, s0
	v_cndmask_b32_e64 v97, v43, v36, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v99, 0x5040504, v33
	v_and_b32_e32 v100, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_or_b32 s4, vcc_hi, s104
	v_or_b32_e32 v53, 2, v108
	v_mad_u64_u32 v[41:42], null, s4, s84, v[85:86]
	v_or_b32_e32 v54, 4, v108
	v_or_b32_e32 v55, 6, v108
	v_or_b32_e32 v56, 8, v108
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v80, 0, v118
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v163, vcc_hi, v53, 1
	v_add_lshl_u32 v180, vcc_hi, v54, 1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v181, vcc_hi, v55, 1
	v_add_lshl_u32 v182, vcc_hi, v56, 1
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s5, s87, vcc_hi
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v43, 0, v107
	buffer_load_b128 v[53:56], v41, s[92:95], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s76 :: v_dual_add_nc_u32 v44, 0, v110
	v_or_b32_e32 v67, 30, v108
	v_or_b32_e32 v68, 32, v108
	v_or_b32_e32 v69, 34, v108
	v_or_b32_e32 v70, 36, v108
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v42, s5, v86, 1
	v_add_lshl_u32 v159, s5, v146, 1
	v_add_lshl_u32 v160, s5, v147, 1
	v_add_lshl_u32 v161, s5, v90, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v34, s77
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v193, vcc_hi, v67, 1
	v_add_lshl_u32 v194, vcc_hi, v68, 1
	v_add_lshl_u32 v195, vcc_hi, v69, 1
	v_add_lshl_u32 v196, vcc_hi, v70, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v214, 0x80000000, v42, s1
	v_cndmask_b32_e64 v215, 0x80000000, v159, s1
	v_cndmask_b32_e64 v216, 0x80000000, v160, s1
	v_cndmask_b32_e64 v217, 0x80000000, v161, s1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v37, s80 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v39, s82 :: v_dual_mov_b32 v40, s83
	v_or_b32_e32 v57, 10, v108
	v_or_b32_e32 v58, 12, v108
	v_or_b32_e32 v59, 14, v108
	v_or_b32_e32 v60, 16, v108
	v_or_b32_e32 v61, 18, v108
	v_or_b32_e32 v62, 20, v108
	v_or_b32_e32 v63, 22, v108
	v_or_b32_e32 v64, 24, v108
	v_or_b32_e32 v65, 26, v108
	v_or_b32_e32 v66, 28, v108
	v_or_b32_e32 v71, 38, v108
	v_or_b32_e32 v72, 40, v108
	v_or_b32_e32 v73, 42, v108
	v_or_b32_e32 v74, 44, v108
	v_or_b32_e32 v75, 46, v108
	v_or_b32_e32 v76, 48, v108
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v183, vcc_hi, v57, 1
	v_add_lshl_u32 v184, vcc_hi, v58, 1
	v_add_lshl_u32 v185, vcc_hi, v59, 1
	v_add_lshl_u32 v186, vcc_hi, v60, 1
	v_add_lshl_u32 v187, vcc_hi, v61, 1
	v_add_lshl_u32 v188, vcc_hi, v62, 1
	v_add_lshl_u32 v189, vcc_hi, v63, 1
	v_add_lshl_u32 v190, vcc_hi, v64, 1
	v_add_lshl_u32 v191, vcc_hi, v65, 1
	v_add_lshl_u32 v192, vcc_hi, v66, 1
	v_add_lshl_u32 v197, vcc_hi, v71, 1
	v_add_lshl_u32 v198, vcc_hi, v72, 1
	v_add_lshl_u32 v199, vcc_hi, v73, 1
	v_add_lshl_u32 v200, vcc_hi, v74, 1
	v_add_lshl_u32 v201, vcc_hi, v75, 1
	v_add_lshl_u32 v202, vcc_hi, v76, 1
	v_add_lshl_u32 v45, vcc_hi, v108, 1
	v_add_lshl_u32 v47, vcc_hi, v111, 1
	v_add_lshl_u32 v48, vcc_hi, v112, 1
	v_add_lshl_u32 v46, vcc_hi, v113, 1
	v_add_lshl_u32 v49, vcc_hi, v114, 1
	v_add_lshl_u32 v50, vcc_hi, v115, 1
	v_add_lshl_u32 v51, vcc_hi, v116, 1
	v_add_lshl_u32 v52, vcc_hi, v117, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v77.l, 0
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s4, s4, s85
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v164, s4, v87, 1
	v_add_lshl_u32 v165, s4, v148, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v204.l, v77.l
	v_mov_b16_e64 v206.l, v77.l
	v_mov_b16_e64 v211.l, v77.l
	v_mov_b16_e64 v213.l, v77.l
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v166, s4, v150, 1
	v_add_lshl_u32 v167, s4, v91, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v203.l, v77.l
	v_mov_b16_e64 v205.l, v77.l
	v_mov_b16_e64 v210.l, v77.l
	v_mov_b16_e64 v212.l, v77.l
	v_mov_b16_e64 v224.l, v77.l
	v_mov_b16_e64 v208.l, v77.l
	v_mov_b16_e64 v209.l, v77.l
	v_mov_b16_e64 v207.l, v77.l
	v_mov_b16_e64 v222.l, v77.l
	v_mov_b16_e64 v223.l, v77.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v225.l, v77.l
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[53:54]
	ds_store_b64 v122, v[55:56]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v44 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v44 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[159:162], v123 offset1:1
	ds_load_2addr_stride64_b64 v[176:179], v123 offset0:2 offset1:3
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v153, v153, v153 :: v_dual_max_f32 v156, v156, v156
	v_dual_max_f32 v154, v154, v154 :: v_dual_max_f32 v155, v155, v155
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[67:68], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[69:70], v[88:89], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[41:42], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[43:44], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v124 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v124 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[159:160], v[94:95], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[161:162], v[94:95], v[61:68] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[41:44], v125 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[176:177], v[94:95], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[178:179], v[94:95], v[168:175] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[159:162], v214, s[100:103], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[33:34], v[92:93], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[35:36], v[92:93], v[61:68] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v125 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[37:38], v[92:93], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[39:40], v[92:93], v[168:175] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[37:40], v215, s[100:103], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[41:42], v[96:97], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[43:44], v[96:97], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v79, 0, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v64, v64
	v_mul_f32_e32 v68, v149, v68
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[33:34], v[96:97], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[35:36], v[96:97], v[168:175] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_b128 v[33:36], v216, s[100:103], 0 offen
	buffer_load_b128 v[41:44], v217, s[100:103], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v74, v74
	v_mul_f32_e32 v70, v149, v70
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v162, 0xff80ff80, v162, s1
	v_cndmask_b32_e64 v160, 0xff80ff80, v160, s1
	v_cndmask_b32_e64 v159, 0xff80ff80, v159, s1
	v_cndmask_b32_e64 v161, 0xff80ff80, v161, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v204.h, v162.l
	v_mov_b16_e64 v205.h, v160.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v77.h, v159.l
	v_mov_b16_e64 v203.h, v161.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v204
	v_cmp_neq_f32_e64 s6, 0xff800000, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s7, 0xff800000, v77
	v_cmp_neq_f32_e64 s5, 0xff800000, v203
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v203.h, v77.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s1, s4
	s_and_b32 s12, s1, s6
	s_and_b32 s16, s1, s7
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v176, 0xff80ff80, v38, s1
	v_cndmask_b32_e64 v177, 0xff80ff80, v37, s1
	v_cndmask_b32_e64 v179, 0xff80ff80, v39, s1
	v_cndmask_b32_e64 v178, 0xff80ff80, v40, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v149, v62
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v62.l, v77.l
	v_mov_b16_e64 v206.h, v177.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s8, s1, s5
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v208.h, v178.l
	v_mov_b16_e64 v209.h, v176.l
	v_mov_b16_e64 v207.h, v179.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v206
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v205.h, v77.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v208
	v_cmp_neq_f32_e64 s13, 0xff800000, v209
	v_cmp_neq_f32_e64 s9, 0xff800000, v207
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s17, s1, s10
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v77.h, v77.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v214, 0xff80ff80, v34, s1
	v_cndmask_b32_e64 v215, 0xff80ff80, v33, s1
	v_cndmask_b32_e64 v216, 0xff80ff80, v36, s1
	v_cndmask_b32_e64 v217, 0xff80ff80, v35, s1
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x6
	buffer_load_u16 v33, v187, s[96:99], 0 offen
	buffer_load_u16 v34, v188, s[96:99], 0 offen
	buffer_load_u16 v35, v191, s[96:99], 0 offen
	buffer_load_u16 v36, v192, s[96:99], 0 offen
	buffer_load_u16 v37, v193, s[96:99], 0 offen
	buffer_load_u16 v38, v189, s[96:99], 0 offen
	buffer_load_u16 v39, v186, s[96:99], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v218, 0xff80ff80, v42, s1
	v_cndmask_b32_e64 v219, 0xff80ff80, v41, s1
	v_cndmask_b32_e64 v220, 0xff80ff80, v44, s1
	v_cndmask_b32_e64 v221, 0xff80ff80, v43, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v64, v149, v64
	v_mul_f32_e32 v69, v149, v69
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v211.h, v217.l
	v_mov_b16_e64 v213.h, v214.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v60, v149, v60
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v210.h, v215.l
	v_mov_b16_e64 v212.h, v216.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v211
	v_cmp_neq_f32_e64 s19, 0xff800000, v213
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v224.h, v220.l
	v_mov_b16_e64 v62.h, v218.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v210
	v_cmp_neq_f32_e64 s18, 0xff800000, v212
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s10, s1, s14
	s_and_b32 s14, s1, s19
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v224
	v_cmp_neq_f32_e64 s23, 0xff800000, v62
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s1, s18
	s_and_b32 s18, s1, s15
	s_and_b32 s5, s1, s11
	s_and_b32 s7, s1, s22
	s_and_b32 s15, s1, s23
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v222.h, v219.l
	v_mov_b16_e64 v223.h, v221.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s13, s1, s13
	s_and_b32 s9, s1, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v188.l, v77.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v222
	v_cmp_neq_f32_e64 s21, 0xff800000, v223
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v192.l, v77.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v204.h, v77.l
	v_mov_b16_e64 v206.h, v77.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s19, s1, s20
	s_and_b32 s11, s1, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v207.h, v77.l
	v_mov_b16_e64 v208.h, v77.l
	v_mov_b16_e64 v209.h, v77.l
	v_mov_b16_e64 v210.h, v77.l
	v_mov_b16_e64 v211.h, v77.l
	v_mov_b16_e64 v212.h, v77.l
	v_mov_b16_e64 v213.h, v77.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v186, v40, v33 :: v_dual_mul_f32 v33, v149, v63
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v78, 0, v119
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v149, v57 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v175, v149, v175
	v_mul_f32_e32 v187, v33, v34
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v33, v190, s[96:99], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v34, v149, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v190.l, v77.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v189, v34, v33 :: v_dual_lshlrev_b32 v34, 16, v35
	v_mul_f32_e32 v33, v149, v66
	v_mul_f32_e32 v191, v33, v34
	v_dual_mul_f32 v33, v149, v67 :: v_dual_lshlrev_b32 v34, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v193, v33, v34
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x17
	buffer_load_u16 v33, v195, s[96:99], 0 offen
	buffer_load_u16 v34, v196, s[96:99], 0 offen
	buffer_load_u16 v35, v197, s[96:99], 0 offen
	buffer_load_u16 v36, v200, s[96:99], 0 offen
	buffer_load_u16 v40, v201, s[96:99], 0 offen
	buffer_load_u16 v41, v198, s[96:99], 0 offen
	buffer_load_u16 v42, v194, s[96:99], 0 offen
	buffer_load_u16 v43, v199, s[96:99], 0 offen
	buffer_load_u16 v44, v202, s[96:99], 0 offen
	buffer_load_u16 v47, v47, s[96:99], 0 offen
	buffer_load_u16 v48, v48, s[96:99], 0 offen
	buffer_load_u16 v63, v163, s[96:99], 0 offen
	buffer_load_u16 v65, v180, s[96:99], 0 offen
	buffer_load_u16 v66, v181, s[96:99], 0 offen
	buffer_load_u16 v67, v183, s[96:99], 0 offen
	buffer_load_u16 v163, v184, s[96:99], 0 offen
	buffer_load_u16 v180, v185, s[96:99], 0 offen
	buffer_load_u16 v181, v182, s[96:99], 0 offen
	buffer_load_u16 v45, v45, s[96:99], 0 offen
	buffer_load_u16 v46, v46, s[96:99], 0 offen
	buffer_load_u16 v49, v49, s[96:99], 0 offen
	buffer_load_u16 v50, v50, s[96:99], 0 offen
	buffer_load_u16 v51, v51, s[96:99], 0 offen
	buffer_load_u16 v52, v52, s[96:99], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v72, v149, v72
	v_mul_f32_e32 v71, v149, v71
	v_mul_f32_e32 v74, v149, v74
	v_mul_f32_e32 v168, v149, v168
	v_mul_f32_e32 v76, v149, v76
	v_mul_f32_e32 v169, v149, v169
	v_mul_f32_e32 v170, v149, v170
	v_mul_f32_e32 v75, v149, v75
	v_mul_f32_e32 v73, v149, v73
	v_mul_f32_e32 v54, v149, v54
	v_mul_f32_e32 v55, v149, v55
	v_mul_f32_e32 v56, v149, v56
	v_mul_f32_e32 v58, v149, v58
	v_mul_f32_e32 v59, v149, v59
	v_mul_f32_e32 v61, v149, v61
	v_mul_f32_e32 v53, v149, v53
	v_mul_f32_e32 v171, v149, v171
	v_mul_f32_e32 v172, v149, v172
	v_dual_mul_f32 v174, v149, v174 :: v_dual_lshlrev_b32 v195, 16, v39
	v_mul_f32_e32 v198, v68, v37
	v_mul_f32_e32 v200, v64, v38
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v38.l, v161.h
	v_mov_b16_e64 v38.h, v162.h
	v_mov_b16_e64 v37.l, v159.h
	v_mov_b16_e64 v37.h, v160.h
	v_mov_b16_e64 v39.l, v177.h
	v_mov_b16_e64 v39.h, v176.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v182, 16, v34
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v183, 16, v35
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v184, 16, v36
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v185, 16, v40
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v194, 16, v41
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v173, v149, v173 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v182, v71, v182 :: v_dual_lshlrev_b32 v63, 16, v63
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v202, v74, v43 :: v_dual_lshlrev_b32 v197, 16, v46
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v49
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v184, v75, v184 :: v_dual_lshlrev_b32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v199, v70, v33 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v168, v168, v44
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v34.l, v161.l
	v_mov_b16_e64 v34.h, v162.l
	v_mov_b16_e64 v33.l, v159.l
	v_mov_b16_e64 v33.h, v160.l
	v_mov_b16_e64 v36.l, v179.l
	v_mov_b16_e64 v36.h, v178.l
	v_mov_b16_e64 v35.l, v177.l
	v_mov_b16_e64 v35.h, v176.l
	v_mov_b16_e64 v40.l, v179.h
	v_mov_b16_e64 v40.h, v178.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v201, v69, v42 :: v_dual_mul_f32 v170, v170, v48
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v42.l, v217.l
	v_mov_b16_e64 v42.h, v216.l
	v_mov_b16_e64 v41.l, v215.l
	v_mov_b16_e64 v41.h, v214.l
	v_mov_b16_e64 v44.l, v221.l
	v_mov_b16_e64 v44.h, v220.l
	v_mov_b16_e64 v43.l, v219.l
	v_mov_b16_e64 v43.h, v218.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v169, v169, v47 :: v_dual_lshlrev_b32 v196, 16, v45
	v_mul_f32_e32 v228, v56, v66
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e64 v46.l, v217.h
	v_mov_b16_e64 v46.h, v216.h
	v_mov_b16_e64 v45.l, v215.h
	v_mov_b16_e64 v45.h, v214.h
	v_mov_b16_e64 v48.l, v221.h
	v_mov_b16_e64 v48.h, v220.h
	v_mov_b16_e64 v47.l, v219.h
	v_mov_b16_e64 v47.h, v218.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v183, v72, v183 :: v_dual_lshlrev_b32 v180, 16, v180
	v_dual_mul_f32 v194, v73, v194 :: v_dual_mul_f32 v185, v76, v185
	v_dual_mul_f32 v226, v54, v63 :: v_dual_mul_f32 v227, v55, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v180, v60, v180 :: v_dual_mul_f32 v229, v58, v67
	v_dual_mul_f32 v196, v53, v196 :: v_dual_mul_f32 v163, v59, v163
	v_dual_mul_f32 v172, v172, v49 :: v_dual_mul_f32 v195, v61, v195
	v_dual_mul_f32 v181, v57, v181 :: v_dual_mul_f32 v174, v174, v51
	v_mul_f32_e32 v171, v171, v197
	v_dual_mul_f32 v173, v173, v50 :: v_dual_and_b32 v54, 0xffff0000, v176
	v_dual_mul_f32 v175, v175, v52 :: v_dual_and_b32 v56, 0xffff0000, v178
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v49, 0xffff0000, v161
	v_and_b32_e32 v50, 0xffff0000, v160
	v_and_b32_e32 v51, 0xffff0000, v159
	v_and_b32_e32 v52, 0xffff0000, v162
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v126, v[33:34], v[35:36] offset1:16
	ds_store_2addr_b64 v126, v[37:38], v[39:40] offset0:64 offset1:80
	ds_store_2addr_b64 v126, v[41:42], v[43:44] offset0:32 offset1:48
	ds_store_2addr_b64 v126, v[45:46], v[47:48] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[65:66], v80
	ds_load_b64 v[67:68], v127
	ds_load_b64 v[69:70], v128
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[71:72], v129
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[73:74], v130
	ds_load_b64 v[75:76], v131
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[159:160], v132
	ds_load_b64 v[161:162], v133
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s4
	v_cndmask_b32_e64 v43, 0, 1, s14
	v_cndmask_b32_e64 v36, 0, 1, s16
	v_cndmask_b32_e64 v34, 0, 1, s8
	v_cndmask_b32_e64 v44, 0, 1, s18
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v36.h, 8, v43.l
	v_cndmask_b32_e64 v45, 0, 1, s7
	v_cndmask_b32_e64 v47, 0, 1, s15
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_or_b16 v45.h, v34.l, v33.l
	v_or_b16 v34.l, v44.l, v36.h
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v50
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v37.h, 8, v47.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v49
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(4)
	v_lshlrev_b32_e32 v44, 16, v72
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v47, 0xffff0000, v73
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s24, s1, s24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v188.h, v73.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v44, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v73, 0x3fb8aa3b, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v35, 0, 1, s12
	v_cndmask_b32_e64 v39, 0, 1, s13
	v_cndmask_b32_e64 v49, 0, 1, s24
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v44, s86, v193
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v51
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v41, 0, 1, s6
	v_cndmask_b32_e64 v38, 0, 1, s9
	v_cndmask_b32_e64 v40, 0, 1, s17
	s_and_b32 s20, s1, s27
	s_and_b32 s33, s1, s26
	v_lshlrev_b16 v33.h, 8, v35.l
	v_cndmask_b32_e64 v51, 0, 1, s33
	v_lshlrev_b16 v34.h, 8, v37.l
	v_lshlrev_b16 v35.l, 8, v39.l
	v_lshlrev_b16 v38.h, 8, v49.l
	v_cndmask_b32_e64 v42, 0, 1, s10
	v_cndmask_b32_e64 v46, 0, 1, s11
	v_cndmask_b32_e64 v48, 0, 1, s19
	v_lshlrev_b16 v35.h, 8, v41.l
	v_lshlrev_b16 v37.l, 8, v45.l
	v_cndmask_b32_e64 v50, 0, 1, s20
	s_and_b32 s28, s1, s25
	v_or_b16 v45.l, v36.l, v33.h
	v_or_b16 v33.h, v38.l, v34.h
	v_or_b16 v33.l, v40.l, v35.l
	v_or_b16 v38.l, v51.l, v38.h
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v51, 16, v70
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v34.h, v42.l, v35.h
	v_or_b16 v35.h, v46.l, v37.l
	v_or_b16 v35.l, v48.l, v37.h
	v_cndmask_b32_e64 v52, 0, 1, s28
	v_lshlrev_b16 v39.l, 8, v50.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v78, v45, v33 offset1:32
	ds_store_2addr_b32 v78, v34, v35 offset0:64 offset1:96
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v51
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v58, 0xffff0000, v214
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v38.h, v52.l, v39.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v52, 0xffff0000, v75
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v225.h, v67.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v45, s86, v187
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v58
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v48, 16, v74
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v54
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v80, 0x3fb8aa3b, v225
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v49, 0xffff0000, v74
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v74, 0x3fb8aa3b, v52
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v57, 0xffff0000, v217
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s26, s1, s37
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v46, 0xffff0000, v72
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v190.h, v75.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v72, 0x3fb8aa3b, v188
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v74, s86, v202 :: v_dual_and_b32 v53, 0xffff0000, v179
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v57
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v57, 0, 1, s26
	s_and_b32 s25, s1, s30
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v72, s86, v201
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v53
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v53, 0, 1, s25
	v_lshlrev_b16 v41.l, 8, v57.l
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_and_b32_e32 v57, 0xffff0000, v70
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v60, 0xffff0000, v216
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v80, s86, v181
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v39.h, 8, v53.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v53, 16, v76
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v51, 0x3fb8aa3b, v57
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v47, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v49
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v55, 0xffff0000, v177
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v60
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v53
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v59, 0xffff0000, v215
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v48, s86, v183
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v55
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s22, s1, s39
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_dual_fmac_f32 v73, s86, v199 :: v_dual_and_b32 v50, 0xffff0000, v69
	v_fmac_f32_e32 v52, s86, v184
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s34, s1, s31
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v59
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v54, 0, 1, s34
	v_cndmask_b32_e64 v59, 0, 1, s22
	s_and_b32 s30, s1, s36
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v36, 16, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v60, 0, 1, s30
	v_or_b16 v39.l, v54.l, v39.h
	v_lshlrev_b16 v41.h, 8, v59.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v192.h, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v59, 16, v69
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v50
	v_dual_mul_f32 v57, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v54, 16, v66
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v176, 0xffff0000, v220
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v56
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_or_b16 v41.h, v60.l, v41.h
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v60, 0xffff0000, v67
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v54
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v63, 0xffff0000, v218
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s21, s1, s35
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v57, s86, v189
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v61, 0xffff0000, v221
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v51, s86, v200 :: v_dual_and_b32 v64, 0xffff0000, v219
	v_fmac_f32_e32 v78, s86, v227
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s41, 0xff800000, v63
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v55, 0, 1, s21
	s_and_b32 s29, s1, s29
	s_and_b32 s23, s1, s43
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s40, 0xff800000, v61
	v_cmp_neq_f32_e64 s42, 0xff800000, v64
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s27, s1, s41
	v_cndmask_b32_e64 v56, 0, 1, s29
	v_cndmask_b32_e64 v62, 0, 1, s23
	v_lshlrev_b16 v40.h, 8, v55.l
	v_cndmask_b32_e64 v61, 0, 1, s27
	s_and_b32 s35, s1, s38
	s_and_b32 s36, s1, s42
	s_and_b32 s31, s1, s40
	v_cndmask_b32_e64 v58, 0, 1, s35
	v_lshlrev_b16 v43.l, 8, v62.l
	v_or_b16 v39.h, v56.l, v40.h
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v49, 0x3fb8aa3b, v190 :: v_dual_lshlrev_b32 v62, 16, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v40, 0xffff0000, v65
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v63, 0, 1, s36
	v_cndmask_b32_e64 v64, 0, 1, s31
	v_lshlrev_b16 v42.h, 8, v61.l
	v_or_b16 v41.l, v58.l, v41.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v49, s86, v194 :: v_dual_and_b32 v58, 0xffff0000, v159
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v61, 16, v159
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v159, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v60, 0x3fb8aa3b, v62
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v55, 0xffff0000, v76
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v76, 0x3fb8aa3b, v40
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v37, 0xffff0000, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v42.l, v63.l, v42.h
	v_or_b16 v42.h, v64.l, v43.l
	ds_store_2addr_b32 v134, v38, v39 offset1:32
	ds_store_2addr_b32 v134, v41, v42 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v76, s86, v226
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v37
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_b32 v36, v136
	ds_load_b32 v34, v137
	ds_load_b32 v35, v138
	ds_load_b32 v37, v139
	ds_load_b32 v38, v140
	ds_load_b32 v39, v141
	ds_load_b32 v40, v79
	ds_load_b32 v41, v135
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v60, s86, v163
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v55 :: v_dual_lshlrev_b32 v64, 16, v162
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v56, 0xffff0000, v66
	v_and_b32_e32 v43, 0xffff0000, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v159, s86, v229 :: v_dual_mul_f32 v64, 0x3fb8aa3b, v64
	v_fmac_f32_e32 v53, s86, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v63, 16, v161
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v64, s86, v174 :: v_dual_and_b32 v65, 0xffff0000, v68
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v68, 0xffff0000, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	v_dual_mul_f32 v161, 0x3fb8aa3b, v43 :: v_dual_fmac_f32 v56, s86, v228
	v_dual_mul_f32 v55, 0x3fb8aa3b, v61 :: v_dual_lshlrev_b32 v66, 16, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v68, 0x3fb8aa3b, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v67, 0xffff0000, v160
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v179, 0x1000000, v40
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v63, s86, v172 :: v_dual_and_b32 v172, 0x1000000, v35
	v_fmac_f32_e32 v68, s86, v175
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cmp_ne_u32_e64 s67, 0, v179
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v61, 0x3fb8aa3b, v66 :: v_dual_mul_f32 v66, 0x3fb8aa3b, v192
	v_mul_f32_e32 v160, 0x3fb8aa3b, v59
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v67, s86, v171
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v171, 0x10000, v35
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s67
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v79, 1, v35
	v_lshrrev_b16 v35.h, 8, v40.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v47, s86, v182
	v_dual_fmac_f32 v61, s86, v170 :: v_dual_and_b32 v162, 0x10000, v36
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v33.h, 8, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b16 v54.l, 1, v35.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v65, 0x3fb8aa3b, v65 :: v_dual_and_b32 v182, 1, v36
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v55, s86, v168
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v58
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cmp_eq_u16_e64 s68, 1, v54.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v160, s86, v195 :: v_dual_fmac_f32 v65, s86, v180
	v_dual_fmac_f32 v161, s86, v173 :: v_dual_and_b32 v168, 0x1000000, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v176, 0x10000, v40
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v76, s68
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v43, 0x1000000, v36
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v36.l, 8, v41.l
	v_and_b32_e32 v59, 0x10000, v34
	v_lshrrev_b16 v33.l, 8, v35.l
	v_and_b32_e32 v170, 0x10000, v38
	v_and_b32_e32 v173, 1, v37
	v_and_b16 v58.l, 1, v36.l
	v_and_b32_e32 v174, 0x1000000, v37
	v_and_b32_e32 v175, 1, v38
	v_and_b32_e32 v177, 0x10000, v41
	v_and_b32_e32 v178, 1, v40
	v_and_b32_e32 v181, 0x1000000, v41
	v_lshrrev_b16 v36.h, 8, v39.l
	v_cmp_eq_u32_e64 s59, 1, v182
	v_cmp_eq_u16_e64 s64, 1, v58.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v66, s86, v196 :: v_dual_and_b32 v163, 1, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v34.l, 8, v34.l
	v_lshrrev_b16 v35.l, 8, v38.l
	v_and_b16 v42.l, 1, v33.l
	v_and_b16 v62.l, 1, v36.h
	v_cmp_ne_u32_e64 s54, 0, v162
	v_cmp_ne_u32_e64 s52, 0, v59
	v_cmp_ne_u32_e64 s53, 0, v168
	v_cmp_ne_u32_e64 s41, 0, v172
	v_cmp_ne_u32_e64 s44, 0, v174
	v_cmp_ne_u32_e64 s42, 0, v170
	v_cmp_eq_u32_e64 s65, 1, v178
	v_cmp_ne_u32_e64 s66, 0, v176
	v_cmp_ne_u32_e64 s63, 0, v181
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v58, 0xff800000, v159, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v183, 0x1000000, v38
	v_and_b16 v38.l, 1, v33.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v160, s59
	v_mov_b32_e32 v160, v82
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s40, 1, v173
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v168, v151, v151
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s43, 1, v175
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v170, v158, v158
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s61, 0, v177
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v46
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v69, s86, v186
	v_fmac_f32_e32 v75, s86, v169
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v169, 0x10000, v37
	v_lshrrev_b16 v34.h, 8, v37.l
	v_and_b32_e32 v184, 1, v39
	v_and_b32_e32 v186, 0x1000000, v39
	v_and_b16 v38.h, 1, v34.l
	v_and_b16 v50.l, 1, v35.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v45, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s38, 1, v79
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v49, s40
	v_cndmask_b32_e64 v49, 0xff800000, v55, s43
	v_cndmask_b32_e64 v55, 0xff800000, v78, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v180, 1, v41
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v59, 0xff800000, v60, s61
	v_cndmask_b32_e64 v60, 0xff800000, v65, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v185, 0x10000, v39
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v44, s52
	v_cndmask_b32_e64 v44, 0xff800000, v48, s41
	v_cndmask_b32_e64 v48, 0xff800000, v53, s44
	v_cndmask_b32_e64 v53, 0xff800000, v66, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s51, 1, v62.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v70, s86, v191 :: v_dual_fmac_f32 v71, s86, v198
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v46.l, 1, v34.h
	v_cmp_eq_u32_e64 s55, 1, v163
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v72, s38
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s39, 0, v169
	v_cmp_eq_u32_e64 s62, 1, v180
	v_cmp_ne_u32_e64 s47, 0, v183
	v_cmp_eq_u32_e64 s46, 1, v184
	v_cmp_ne_u32_e64 s45, 0, v185
	v_cmp_eq_u16_e64 s60, 1, v38.l
	v_cmp_eq_u16_e64 s58, 1, v38.h
	v_cmp_eq_u16_e64 s56, 1, v42.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v161, s51
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v53, v54
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s57, 0, v43
	v_mov_b32_e32 v162, v81
	v_cmp_ne_u32_e64 s37, 0, v171
	v_mov_b32_e32 v161, v83
	v_cmp_ne_u32_e64 s48, 0, v186
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v51, s57
	v_cndmask_b32_e64 v37, 0xff800000, v57, s55
	v_cndmask_b32_e64 v40, 0xff800000, v71, s53
	v_cndmask_b32_e64 v43, 0xff800000, v47, s37
	v_cndmask_b32_e64 v47, 0xff800000, v52, s39
	v_cndmask_b32_e64 v51, 0xff800000, v61, s42
	v_cndmask_b32_e64 v57, 0xff800000, v80, s62
	v_cndmask_b32_e64 v52, 0xff800000, v67, s47
	v_cndmask_b32_e64 v61, 0xff800000, v63, s46
	v_cndmask_b32_e64 v63, 0xff800000, v64, s45
	v_cndmask_b32_e64 v64, 0xff800000, v68, s48
	v_cndmask_b32_e64 v34, 0xff800000, v69, s60
	v_cndmask_b32_e64 v38, 0xff800000, v70, s58
	v_cndmask_b32_e64 v42, 0xff800000, v73, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s50, 1, v46.l
	v_cmp_eq_u16_e64 s49, 1, v50.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v67, v52, v61 :: v_dual_max_f32 v68, v63, v64
	v_max3_f32 v69, v34, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v46, 0xff800000, v74, s50
	v_cndmask_b32_e64 v50, 0xff800000, v75, s49
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v37, v38, v39
	v_max3_f32 v71, v40, v41, v42
	v_max3_f32 v73, v56, v57, v58
	v_max3_f32 v65, v43, v44, v45
	v_max3_f32 v66, v59, v60, v33
	v_max3_f32 v74, v46, v47, v48
	v_max3_f32 v75, v49, v50, v51
	v_max3_f32 v67, v67, v62, v68
	v_max3_f32 v68, v69, v70, v71
	v_max3_f32 v69, v72, v55, v73
.Ltmp6:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.h, v77.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v65, v74, v75
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v69, v66, v68
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.h, v77.l
	v_mov_b16_e32 v75.h, v77.l
	v_mov_b16_e32 v72.h, v77.l
	v_mov_b16_e32 v73.h, v77.l
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v66, v65, v67
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v74.h, v77.l
	v_mov_b16_e32 v76.h, v77.l
	v_mov_b16_e32 v78.h, v77.l
	v_mov_b16_e32 v79.h, v77.l
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v214.h, v77.l
	v_mov_b16_e64 v215.h, v77.l
	v_mov_b16_e64 v216.h, v77.l
	v_mov_b16_e64 v217.h, v77.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v200, v105, v65, v66
	v_mov_b32_e32 v159, v84
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v163, 0, v103
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v169, v157, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v54, v200
	v_sub_f32_e32 v66, v53, v200
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v69, v105, v200
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v56, v200
	v_sub_f32_e32 v67, v55, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v69, v69
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s68
	v_cndmask_b32_e64 v66, 0, v66, s65
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s65, 0xff800000, v105
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s67
	v_cndmask_b32_e64 v67, 0, v67, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v65.h
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v105, 0x80000000, v167, s3
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v69, 0, v69, s65
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s65, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v70, 1, v70
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v14, v14, v69
	v_mul_f32_e32 v22, v22, v69
	v_mul_f32_e32 v2, v2, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v70, v65, v70, 0x7fff
	v_mov_b16_e32 v65.h, v77.l
	v_mov_b16_e32 v65.l, v66.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v69
	v_mul_f32_e32 v18, v18, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v201.h, 0x7fff, v70.h, s65
	v_cmp_o_f32_e64 s65, v66, v66
	v_and_b32_e32 v65, 1, v65
	v_mov_b16_e32 v70.h, v77.l
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v69
	v_mul_f32_e32 v32, v32, v69
	v_mul_f32_e32 v26, v26, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v66, v65, 0x7fff
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v66.h, v77.l
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v69
	v_mul_f32_e32 v30, v30, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v201.l, 0x7fff, v65.h, s65
	v_mov_b16_e32 v65.h, v77.l
	v_cmp_o_f32_e64 s65, v68, v68
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v10, v10, v69
	v_mul_f32_e32 v12, v12, v69
	v_mul_f32_e32 v7, v7, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v68, v65, 0x7fff
	v_mov_b16_e32 v65.l, v67.h
	v_mov_b16_e32 v68.h, v77.l
	v_cndmask_b16 v202.h, 0x7fff, v65.h, s65
	v_mov_b16_e32 v65.h, v77.l
	v_cmp_o_f32_e64 s65, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v67, v65, 0x7fff
	v_mov_b16_e32 v67.h, v77.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v202.l, 0x7fff, v65.h, s65
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v65, 0, v121
	ds_store_b128 v65, v[53:56]
	ds_store_b128 v65, v[41:44] offset:2048
	ds_store_b128 v142, v[57:60]
	ds_store_b128 v142, v[45:48] offset:2048
	ds_store_b128 v143, v[33:36]
	ds_store_b128 v143, v[49:52] offset:2048
	ds_store_b128 v144, v[37:40]
	ds_store_b128 v144, v[61:64] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[172:175], v145 offset:1024
	ds_load_b128 v[176:179], v145
	ds_load_b128 v[180:183], v145 offset:1280
	ds_load_b128 v[184:187], v145 offset:256
	ds_load_b128 v[188:191], v145 offset:1536
	ds_load_b128 v[81:84], v145 offset:1792
	ds_load_b128 v[192:195], v145 offset:512
	ds_load_b128 v[196:199], v145 offset:768
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v56, v58, v200
	v_sub_f32_e32 v58, v60, v200
	v_sub_f32_e32 v48, v48, v200
	v_sub_f32_e32 v50, v50, v200
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v171, v152, v152
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v57, v57, v200
	v_sub_f32_e32 v33, v33, v200
	v_sub_f32_e32 v34, v34, v200
	v_sub_f32_e32 v38, v38, v200
	v_sub_f32_e32 v41, v41, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v56, v56
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v43, v200
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v53, v175, v175
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v54, v179, v179
	v_max3_f32 v55, v176, v172, v177
.Ltmp16:
	.loc	1 690 62                        ; attention.py:690:62
	s_waitcnt lgkmcnt(5)
	v_dual_sub_f32 v52, v52, v200 :: v_dual_max_f32 v65, v183, v183
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v80, v187, v187
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v60, v61, v200
	v_sub_f32_e32 v61, v62, v200
	v_sub_f32_e32 v62, v63, v200
	v_sub_f32_e32 v63, v64, v200
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v64, v173, v178, v174
	v_max_f32_e32 v53, v54, v53
	v_max3_f32 v54, v184, v180, v185
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v65, v80, v65 :: v_dual_max_f32 v80, v195, v195
.Ltmp20:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v57
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v53, v55, v64, v53
	v_max3_f32 v55, v181, v186, v182
	v_max_f32_e32 v64, v191, v191
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v41, v41
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v54, v54, v55, v65
	v_max3_f32 v55, v192, v188, v193
	v_max3_f32 v65, v189, v194, v190
	v_max_f32_e32 v64, v80, v64
	v_max_f32_e32 v80, v84, v84
.Ltmp24:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s62
	v_cndmask_b32_e64 v56, 0, v56, s64
	v_cndmask_b32_e64 v34, 0, v34, s60
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v55, v55, v65, v64
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v64, v199, v199
	v_max3_f32 v65, v196, v81, v197
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v71.l, v34.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v58, v58
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v64, v64, v80
	v_max3_f32 v80, v82, v198, v83
.Ltmp28:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s58
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v36, v200
	v_sub_f32_e32 v37, v37, v200
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v64, v65, v80, v64
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v53
.Ltmp31:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v200
	v_sub_f32_e32 v40, v40, v200
	v_sub_f32_e32 v42, v42, v200
	v_sub_f32_e32 v51, v51, v200
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v56.h
	v_mov_b16_e32 v75.l, v38.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s38
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp35:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v45, v45, v200 :: v_dual_mul_f32 v16, v16, v69
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s63
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v53, v53, v65
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v54
.Ltmp38:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v51, v51
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v203.l, v41.h
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp42:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v59, v59, v200
	v_sub_f32_e32 v46, v46, v200
	v_sub_f32_e32 v47, v47, v200
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v69
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v54, v54, v65
.Ltmp44:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v59, v59
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v55
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s64, v56, v56
	v_mov_b16_e32 v68.l, v58.h
	v_mov_b16_e32 v72.l, v33.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s37
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v69
	v_mul_f32_e32 v4, v4, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v59, s61
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s57
	v_cndmask_b32_e64 v37, 0, v37, s55
	v_cndmask_b32_e64 v40, 0, v40, s53
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v59.h
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp50:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s52
	v_cndmask_b32_e64 v42, 0, v42, s56
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
.Ltmp51:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v55, v55, v65
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v64
.Ltmp53:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s44
	v_cndmask_b32_e64 v51, 0, v51, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v41, v41
	v_mov_b16_e64 v205.l, v43.h
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v44, v200
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v80, 0x80000000, v166, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v73.l, v36.h
	v_cmp_o_f32_e64 s60, v33, v33
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp57:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v200
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v76.l, v37.h
	v_mov_b16_e32 v77.l, v40.h
	v_mov_b16_e32 v78.l, v39.h
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v64, v64, v65 :: v_dual_and_b32 v65, 1, v66
.Ltmp59:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v67
	v_and_b32_e32 v67, 1, v68
	v_and_b32_e32 v68, 1, v70
	v_add3_u32 v56, v56, v65, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v164, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v164, 1, v203
	v_and_b32_e32 v70, 1, v71
	v_and_b32_e32 v71, 1, v72
	v_mov_b16_e32 v79.l, v42.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s54
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v41, v164, 0x7fff
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v164, v53
.Ltmp61:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v33, v71, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v74.l, v35.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v60, v60
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s40
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v208.l, v48.h
	v_mov_b16_e64 v213.l, v51.h
	v_and_b32_e32 v166, 1, v205
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s59, v34, v34
	v_add3_u32 v34, v34, v70, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v17, v17, v69 :: v_dual_and_b32 v78, 1, v78
	v_mul_f32_e32 v21, v21, v69
	v_mul_f32_e32 v8, v8, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v72, 1, v73
	v_and_b32_e32 v73, 1, v74
	v_and_b32_e32 v74, 1, v75
	v_and_b32_e32 v77, 1, v77
	v_and_b32_e32 v79, 1, v79
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s50
	v_cndmask_b32_e64 v47, 0, v47, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s39, v43, v43
	v_mov_b16_e64 v207.l, v45.h
	v_add3_u32 v43, v43, v166, 0x7fff
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v166, v55 :: v_dual_and_b32 v203, 1, v208
.Ltmp65:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v208, 1, v213
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s60
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v164, v164
.Ltmp67:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v75, 1, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v49, v200
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s62, v58, v58
	v_add3_u32 v58, v58, v67, 0x7fff
	v_cmp_o_f32_e64 s54, v35, v35
	v_cmp_o_f32_e64 s55, v38, v38
	v_cmp_o_f32_e64 s58, v37, v37
	v_add3_u32 v35, v35, v73, 0x7fff
	v_add3_u32 v38, v38, v74, 0x7fff
	v_add3_u32 v37, v37, v75, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[73:76], v80, s[72:75], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s52, v40, v40
	v_cmp_o_f32_e64 s53, v39, v39
	v_cmp_o_f32_e64 s56, v42, v42
	v_add3_u32 v40, v40, v77, 0x7fff
	v_add3_u32 v39, v39, v78, 0x7fff
	v_add3_u32 v42, v42, v79, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[77:80], v105, s[72:75], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v62, v62
	v_mov_b32_e32 v105, v200
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v50, 0, v50, s49
	v_cndmask_b32_e64 v60, 0, v60, s46
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v206.l, v46.h
	v_and_b32_e32 v200, 1, v207
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v31, v31, v69
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s41
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s41, v45, v45
	v_mov_b16_e64 v210.l, v50.h
	v_mov_b16_e64 v215.l, v60.h
	v_and_b32_e32 v167, 1, v206
	v_add3_u32 v45, v45, v200, 0x7fff
	v_cndmask_b16 v200.h, 0x7fff, v58.h, s62
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v58, v166, v166 :: v_dual_mul_f32 v29, v29, v69
.Ltmp71:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v52, s47
	v_cndmask_b32_e64 v62, 0, v62, s45
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s40, v46, v46
	v_cmp_o_f32_e64 s42, v48, v48
	v_mov_b16_e64 v209.l, v47.h
	v_add3_u32 v46, v46, v167, 0x7fff
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v167, v64
.Ltmp73:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v205, 1, v210
	v_and_b32_e32 v210, 1, v215
	v_add3_u32 v48, v48, v203, 0x7fff
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v166, v53, v33 :: v_dual_max_f32 v203, v55, v58
.Ltmp75:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v69
	v_mul_f32_e32 v13, v13, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s63, v59, v59
	v_add3_u32 v59, v59, v68, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v49, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v212.l, v52.h
	v_cmp_o_f32_e64 s47, v51, v51
	v_cmp_o_f32_e64 s49, v60, v60
	v_mov_b16_e64 v217.l, v62.h
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v51, v51, v208, 0x7fff
	v_add3_u32 v60, v60, v210, 0x7fff
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v208, v166
	v_mov_b32_e32 v210, v203
.Ltmp79:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v69
	v_mul_f32_e32 v5, v5, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v211.l, v49.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v207, 1, v212
	v_and_b32_e32 v212, 1, v217
	v_cndmask_b16 v200.l, 0x7fff, v59.h, s63
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v167, v167
.Ltmp81:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v69
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v15, v15, v69
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v69
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v69, 0x80000000, v165, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s61, v57, v57
	v_add3_u32 v57, v57, v66, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[65:68], v65, s[72:75], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s57, v36, v36
	v_add3_u32 v36, v36, v72, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[69:72], v69, s[72:75], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v63, v63
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v204.l, v44.h
	v_cmp_o_f32_e64 s38, v44, v44
	v_cmp_o_f32_e64 s43, v47, v47
	v_and_b32_e32 v206, 1, v211
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s64
	v_and_b32_e32 v165, 1, v204
	v_and_b32_e32 v204, 1, v209
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s51
	v_cndmask_b32_e64 v63, 0, v63, s48
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v44, v44, v165, 0x7fff
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v165, v54
.Ltmp87:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v47, v47, v204, 0x7fff
	v_mov_b16_e64 v214.l, v61.h
	v_cmp_o_f32_e64 s48, v61, v61
	v_mov_b16_e64 v216.l, v63.h
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s55
	v_and_b32_e32 v209, 1, v214
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s58
	v_and_b32_e32 v211, 1, v216
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v165, v165
.Ltmp91:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s52
	v_add3_u32 v61, v61, v209, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s53
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s40
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s41
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s42
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s43
	v_cndmask_b16 v164.h, 0x7fff, v61.h, s48
	v_cndmask_b16 v164.l, 0x7fff, v60.h, s49
	v_cmp_o_f32_e64 s45, v49, v49
	v_cmp_o_f32_e64 s50, v63, v63
	v_cmp_o_f32_e64 s51, v62, v62
	v_add3_u32 v49, v49, v206, 0x7fff
	v_add3_u32 v63, v63, v211, 0x7fff
	v_add3_u32 v62, v62, v212, 0x7fff
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v54, v57
.Ltmp93:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v37, v56, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v200, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v38, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v40, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v46, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v48, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v206, v164, s69, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v165.h, 0x7fff, v63.h, s50
	v_cndmask_b16 v165.l, 0x7fff, v62.h, s51
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v204, v64, v59
.Ltmp95:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v61, v37, v56, v99
	v_perm_b32 v62, v37, v56, v100
	v_perm_b32 v63, v39, v200, v99
	v_perm_b32 v64, v39, v200, v100
	v_perm_b32 v37, v45, v38, v99
	v_perm_b32 v38, v45, v38, v100
	v_perm_b32 v39, v47, v40, v99
	v_perm_b32 v40, v47, v40, v100
	v_perm_b32 v45, v53, v46, v99
	v_perm_b32 v46, v53, v46, v100
	v_perm_b32 v47, v54, v48, v99
	v_perm_b32 v48, v54, v48, v100
	v_perm_b32 v53, v206, v164, v99
	v_perm_b32 v54, v206, v164, v100
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v164, v208, v208
	v_max_f32_e32 v200, v210, v210
.Ltmp97:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s44, v50, v50
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s59
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s56
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v164, v166, v164
	v_max_f32_e32 v166, v203, v200
.Ltmp99:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s37
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v209, v167
.Ltmp101:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s46, v52, v52
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v153, v153, v164
	v_max_f32_e32 v155, v155, v166
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v211, v204
.Ltmp103:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v52, v52, v207, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s54
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v172, v172, v153
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v50, v50, v205, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s45
	v_permlanex16_b32 v35, v201, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v202, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v34, s69, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s44
	v_permlanex16_b32 v49, v42, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v207, v165, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v190, v190, v155
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v55, v50, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v57, v35, v201, v99
	v_perm_b32 v58, v35, v201, v100
	v_perm_b32 v59, v33, v202, v99
	v_perm_b32 v60, v33, v202, v100
	v_perm_b32 v33, v41, v34, v99
	v_perm_b32 v34, v41, v34, v100
	v_perm_b32 v41, v49, v42, v99
	v_perm_b32 v42, v49, v42, v100
	v_perm_b32 v49, v55, v50, v99
	v_perm_b32 v50, v55, v50, v100
	v_perm_b32 v55, v207, v165, v99
	v_perm_b32 v56, v207, v165, v100
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v165, v209, v209 :: v_dual_sub_f32 v188, v188, v155
	v_dual_max_f32 v201, v211, v211 :: v_dual_max_f32 v200, v168, v164
.Ltmp109:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v165, v167, v165
.Ltmp111:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v157
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v204, v201
.Ltmp113:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s39, 0xff800000, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s38
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v158
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v156, v156, v167
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v151
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v163, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v163, v[69:72] offset:2048
	ds_store_b128 v163, v[73:76] offset:4096
	ds_store_b128 v163, v[77:80] offset:6144
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v82, v156
	v_sub_f32_e32 v84, v84, v156
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v154, v165
	v_dual_max_f32 v164, v169, v165 :: v_dual_max_f32 v165, v170, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v84, v84
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v166, v171, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v168, v157, v164
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v157, v172
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v182, v182, v154 :: v_dual_sub_f32 v189, v189, v155
	v_dual_sub_f32 v191, v191, v155 :: v_dual_sub_f32 v180, v180, v154
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s27
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v171, v178, v153 :: v_dual_sub_f32 v178, v185, v154
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v84, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v185, v192, v155
	v_dual_sub_f32 v192, v195, v155 :: v_dual_sub_f32 v195, v198, v156
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v198, v152, v166
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v169, v176, v153
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v157, 0, v157, s33
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v170, v177, v153
	v_dual_sub_f32 v176, v179, v153 :: v_dual_sub_f32 v177, v184, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v152, v169
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v184, v187, v154
	v_sub_f32_e32 v174, v174, v153
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v172, v176
	v_exp_f32_e32 v176, v178
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s46
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s47
	v_permlanex16_b32 v43, v36, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v44, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v217, v198
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v152, 0, v152, s16
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v179, v186, v154 :: v_dual_sub_f32 v186, v193, v155
	v_sub_f32_e32 v193, v196, v156
	v_sub_f32_e32 v196, v199, v156
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v152, v152, v157 :: v_dual_sub_f32 v187, v194, v155
.Ltmp115:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v194, v197, v156
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v178, v179
	v_exp_f32_e32 v179, v182
	v_exp_f32_e32 v182, v185
	v_exp_f32_e32 v185, v189
	v_exp_f32_e32 v189, v191
	v_exp_f32_e32 v191, v194
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v197, v158, v165
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v158, v170
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v176, 0, v176, s13
	v_cndmask_b32_e64 v172, 0, v172, s4
	v_cndmask_b32_e64 v178, 0, v178, s9
	v_cndmask_b32_e64 v179, 0, v179, s29
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v175, v175, v153
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v182, 0, v182, s18
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v181, v181, v154
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v191, 0, v191, s15
	v_cndmask_b32_e64 v185, 0, v185, s26
	v_cndmask_b32_e64 v158, 0, v158, s12
	v_cndmask_b32_e64 v189, 0, v189, s22
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v205, v52, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v191, v82
.Ltmp117:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v170, v171
	v_exp_f32_e32 v171, v174
	v_exp_f32_e32 v174, v177
	v_exp_f32_e32 v177, v181
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v35, v43, v36, v99
	v_perm_b32 v36, v43, v36, v100
	v_perm_b32 v43, v51, v44, v99
	v_perm_b32 v44, v51, v44, v100
	v_perm_b32 v51, v205, v52, v99
	v_perm_b32 v52, v205, v52, v100
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v170, 0, v170, s8
	v_cndmask_b32_e64 v171, 0, v171, s28
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v173, v173, v153
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v177, 0, v177, s25
	v_cndmask_b32_e64 v174, 0, v174, s17
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v169, v173
	v_exp_f32_e32 v173, v175
	v_exp_f32_e32 v175, v180
	v_exp_f32_e32 v180, v184
	v_exp_f32_e32 v184, v186
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s4, vcc_hi, 64
	s_cmpk_lt_u32 vcc_hi, 0x1c0
	s_mov_b32 vcc_hi, s4
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v169, 0, v169, s24
	v_cndmask_b32_e64 v173, 0, v173, s20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v175, 0, v175, s34
	v_cndmask_b32_e64 v180, 0, v180, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v184, 0, v184, s14
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v157, v158, v169
	v_dual_add_f32 v158, v170, v171 :: v_dual_add_f32 v171, v176, v177
	v_dual_add_f32 v169, v172, v173 :: v_dual_add_f32 v170, v174, v175
	v_add_f32_e32 v152, v152, v157
.Ltmp119:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v186, v187
	v_exp_f32_e32 v187, v190
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v175, v184, v185
	v_add_f32_e32 v157, v158, v169
	v_add_f32_e32 v158, v170, v171
.Ltmp121:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v190, v193
	v_exp_f32_e32 v193, v196
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v172, v178, v179
.Ltmp123:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v186, 0, v186, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v187, 0, v187, s30
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v183, v183, v154
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v190, 0, v190, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v176, v186, v187
.Ltmp125:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v181, v183
	v_exp_f32_e32 v183, v188
	v_exp_f32_e32 v188, v192
	v_exp_f32_e32 v192, v195
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v193, 0, v193, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v193, v84
.Ltmp127:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v181, 0, v181, s21
	v_cndmask_b32_e64 v183, 0, v183, s35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v188, 0, v188, s6
	v_cndmask_b32_e64 v192, 0, v192, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v173, v180, v181 :: v_dual_add_f32 v174, v182, v183
	v_add_f32_e32 v177, v188, v189
.Ltmp129:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v81, v81, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v169, v172, v173 :: v_dual_add_f32 v170, v174, v175
	v_add_f32_e32 v171, v176, v177
.Ltmp131:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v83, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s36
	v_cndmask_b32_e64 v83, 0, v83, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v190, v81
	v_add_f32_e32 v83, v192, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_add_f32 v81, v81, v82 :: v_dual_add_f32 v82, v83, v84
	v_add_f32_e32 v83, v152, v157
	v_add_f32_e32 v84, v158, v169
	v_dual_add_f32 v152, v170, v171 :: v_dual_sub_f32 v167, v151, v200
	v_dual_add_f32 v81, v81, v82 :: v_dual_mov_b32 v82, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v157, v84
	v_mov_b32_e32 v158, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v199, v167
	v_exp_f32_e32 v167, v168
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v82, v83, v82 :: v_dual_add_f32 v83, v84, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v84, v152, v158
.Ltmp137:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v168, v197
	v_dual_mov_b32 v151, v200 :: v_dual_mov_b32 v152, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v157, v83 :: v_dual_mov_b32 v158, v84
.Ltmp139:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v194, 0, v199, s40
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp141:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v163, 0, v168, s38
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v82, v82, v152 :: v_dual_add_f32 v83, v83, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v84, v84, v158 :: v_dual_mov_b32 v157, v83
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v158, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v169, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v83, v157
	v_mov_b32_e32 v157, v164
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v169, v169 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v164, 0, v217, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v81, v169
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v169, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v152, v81, v169 :: v_dual_mov_b32 v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v169, v152
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v81, v82, v81 :: v_dual_add_f32 v82, v84, v158
	v_mov_b32_e32 v158, v165
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v84, v152, v169 :: v_dual_fmac_f32 v81, v162, v194
.Ltmp152:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v67, v109 offset:576
	ds_load_u16_d16 v75, v109 offset:608
	ds_load_u16_d16 v74, v109 offset:352
	ds_load_u16_d16 v171, v109 offset:512
	ds_load_u16_d16 v178, v109 offset:288
	ds_load_u16_d16 v172, v109 offset:768
	ds_load_u16_d16 v68, v109 offset:832
	ds_load_u16_d16 v179, v109 offset:544
	ds_load_u16_d16 v173, v109 offset:1024
	ds_load_u16_d16 v69, v109 offset:1088
	ds_load_u16_d16 v76, v109 offset:864
	ds_load_u16_d16 v174, v109 offset:1280
	ds_load_u16_d16 v70, v109 offset:1344
	ds_load_u16_d16 v77, v109 offset:1120
	ds_load_u16_d16 v175, v109 offset:1536
	ds_load_u16_d16 v71, v109 offset:1600
	ds_load_u16_d16 v78, v109 offset:1376
	ds_load_u16_d16 v176, v109 offset:1792
	ds_load_u16_d16 v72, v109 offset:1856
	ds_load_u16_d16 v79, v109 offset:1632
	ds_load_u16_d16 v184, v109 offset:1824
	ds_load_u16_d16 v185, v109 offset:2112
	ds_load_u16_d16 v195, v109 offset:2560
	ds_load_u16_d16 v187, v109 offset:2624
	ds_load_u16_d16 v186, v109 offset:2368
	ds_load_u16_d16 v201, v109 offset:2144
	ds_load_u16_d16 v194, v109 offset:2304
	ds_load_u16_d16 v196, v109 offset:2816
	ds_load_u16_d16 v188, v109 offset:2880
	ds_load_u16_d16 v203, v109 offset:2656
	ds_load_u16_d16 v197, v109 offset:3072
	ds_load_u16_d16 v189, v109 offset:3136
	ds_load_u16_d16 v204, v109 offset:2912
	ds_load_u16_d16 v198, v109 offset:3328
	ds_load_u16_d16 v190, v109 offset:3392
	ds_load_u16_d16 v205, v109 offset:3168
	ds_load_u16_d16 v199, v109 offset:3584
	ds_load_u16_d16 v191, v109 offset:3648
	ds_load_u16_d16 v206, v109 offset:3424
	ds_load_u16_d16 v200, v109 offset:3840
	ds_load_u16_d16 v192, v109 offset:3904
	ds_load_u16_d16 v207, v109 offset:3680
	ds_load_u16_d16 v209, v109 offset:4160
	ds_load_u16_d16 v208, v109 offset:3936
	ds_load_u16_d16 v210, v109 offset:4416
	ds_load_u16_d16 v169, v109
	ds_load_u16_d16 v170, v109 offset:256
	ds_load_u16_d16 v177, v109 offset:32
	ds_load_u16_d16 v65, v109 offset:64
	ds_load_u16_d16 v66, v109 offset:320
	v_mov_b32_e32 v152, v166
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v162, 0, v167, s37
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v84, v159, v164
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v74, v109 offset:480
	ds_load_u16_d16 v73, v109 offset:96
	ds_load_u16_d16_hi v67, v109 offset:704
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v172, v109 offset:896
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v68, v109 offset:960
	ds_load_u16_d16 v180, v109 offset:800
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v173, v109 offset:1152
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v69, v109 offset:1216
	ds_load_u16_d16 v181, v109 offset:1056
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v174, v109 offset:1408
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v70, v109 offset:1472
	ds_load_u16_d16 v182, v109 offset:1312
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v175, v109 offset:1664
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v71, v109 offset:1728
	ds_load_u16_d16 v183, v109 offset:1568
	ds_load_u16_d16_hi v171, v109 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v170, v109 offset:384
	ds_load_u16_d16_hi v176, v109 offset:1920
	ds_load_u16_d16_hi v72, v109 offset:1984
	ds_load_u16_d16 v193, v109 offset:2048
	ds_load_u16_d16 v80, v109 offset:1888
	ds_load_u16_d16_hi v169, v109 offset:128
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v177, v109 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v65, v109 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v73, v109 offset:224
	ds_load_u16_d16_hi v178, v109 offset:416
	ds_load_u16_d16_hi v66, v109 offset:448
	ds_load_u16_d16_hi v179, v109 offset:672
	ds_load_u16_d16_hi v75, v109 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v180, v109 offset:928
	ds_load_u16_d16_hi v76, v109 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v181, v109 offset:1184
	ds_load_u16_d16_hi v77, v109 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v182, v109 offset:1440
	ds_load_u16_d16_hi v78, v109 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v183, v109 offset:1696
	ds_load_u16_d16_hi v79, v109 offset:1760
	ds_load_u16_d16_hi v184, v109 offset:1952
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v83, v161, v162 :: v_dual_fmac_f32 v82, v160, v163
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[169:176], v[57:64], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v80, v109 offset:2016
	ds_load_u16_d16_hi v193, v109 offset:2176
	ds_load_u16_d16_hi v185, v109 offset:2240
	ds_load_u16_d16 v169, v109 offset:2080
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(15)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[57:64], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[177:184], v[57:64], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v177, v109 offset:4096
	ds_load_u16_d16 v65, v109 offset:4192
	ds_load_u16_d16 v178, v109 offset:4352
	ds_load_u16_d16 v179, v109 offset:4608
	ds_load_u16_d16 v211, v109 offset:4672
	ds_load_u16_d16 v66, v109 offset:4448
	ds_load_u16_d16 v180, v109 offset:4864
	ds_load_u16_d16 v212, v109 offset:4928
	ds_load_u16_d16 v67, v109 offset:4704
	ds_load_u16_d16 v181, v109 offset:5120
	ds_load_u16_d16 v213, v109 offset:5184
	ds_load_u16_d16 v68, v109 offset:4960
	ds_load_u16_d16 v182, v109 offset:5376
	ds_load_u16_d16 v214, v109 offset:5440
	ds_load_u16_d16 v69, v109 offset:5216
	ds_load_u16_d16 v183, v109 offset:5632
	ds_load_u16_d16 v215, v109 offset:5696
	ds_load_u16_d16 v70, v109 offset:5472
	ds_load_u16_d16 v184, v109 offset:5888
	ds_load_u16_d16 v216, v109 offset:5952
	ds_load_u16_d16 v71, v109 offset:5728
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[57:64], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v57, v109 offset:6208
	ds_load_u16_d16 v72, v109 offset:5984
	ds_load_u16_d16 v73, v109 offset:6144
	ds_load_u16_d16 v75, v109 offset:6656
	ds_load_u16_d16 v59, v109 offset:6720
	ds_load_u16_d16 v58, v109 offset:6464
	ds_load_u16_d16 v74, v109 offset:6400
	ds_load_u16_d16 v202, v109 offset:2400
	ds_load_u16_d16_hi v194, v109 offset:2432
	ds_load_u16_d16_hi v186, v109 offset:2496
	ds_load_u16_d16_hi v195, v109 offset:2688
	ds_load_u16_d16_hi v187, v109 offset:2752
	ds_load_u16_d16_hi v196, v109 offset:2944
	ds_load_u16_d16_hi v188, v109 offset:3008
	ds_load_u16_d16_hi v197, v109 offset:3200
	ds_load_u16_d16_hi v189, v109 offset:3264
	ds_load_u16_d16_hi v198, v109 offset:3456
	ds_load_u16_d16_hi v190, v109 offset:3520
	ds_load_u16_d16_hi v199, v109 offset:3712
	ds_load_u16_d16_hi v191, v109 offset:3776
	ds_load_u16_d16_hi v200, v109 offset:3968
	ds_load_u16_d16_hi v192, v109 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[193:200], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[185:192], v[33:40], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v185, v109 offset:4128
	ds_load_u16_d16 v194, v109 offset:6496
	ds_load_u16_d16 v76, v109 offset:6912
	ds_load_u16_d16 v60, v109 offset:6976
	ds_load_u16_d16 v195, v109 offset:6752
	ds_load_u16_d16 v77, v109 offset:7168
	ds_load_u16_d16 v61, v109 offset:7232
	ds_load_u16_d16 v196, v109 offset:7008
	ds_load_u16_d16 v78, v109 offset:7424
	ds_load_u16_d16 v62, v109 offset:7488
	ds_load_u16_d16 v197, v109 offset:7264
	ds_load_u16_d16 v79, v109 offset:7680
	ds_load_u16_d16 v63, v109 offset:7744
	ds_load_u16_d16 v198, v109 offset:7520
	ds_load_u16_d16 v80, v109 offset:7936
	ds_load_u16_d16 v64, v109 offset:8000
	ds_load_u16_d16 v199, v109 offset:7776
	ds_load_u16_d16 v200, v109 offset:8032
	ds_load_u16_d16 v193, v109 offset:6240
	ds_load_u16_d16_hi v57, v109 offset:6336
	ds_load_u16_d16_hi v58, v109 offset:6592
	ds_load_u16_d16_hi v74, v109 offset:6528
	ds_load_u16_d16 v170, v109 offset:2336
	ds_load_u16_d16 v171, v109 offset:2592
	ds_load_u16_d16 v172, v109 offset:2848
	ds_load_u16_d16 v173, v109 offset:3104
	ds_load_u16_d16 v174, v109 offset:3360
	ds_load_u16_d16 v175, v109 offset:3616
	ds_load_u16_d16 v176, v109 offset:3872
	ds_load_u16_d16_hi v177, v109 offset:4224
	ds_load_u16_d16_hi v209, v109 offset:4288
	ds_load_u16_d16_hi v169, v109 offset:2208
	ds_load_u16_d16_hi v201, v109 offset:2272
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v170, v109 offset:2464
	ds_load_u16_d16_hi v202, v109 offset:2528
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v171, v109 offset:2720
	ds_load_u16_d16_hi v203, v109 offset:2784
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v172, v109 offset:2976
	ds_load_u16_d16_hi v204, v109 offset:3040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v173, v109 offset:3232
	ds_load_u16_d16_hi v205, v109 offset:3296
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v174, v109 offset:3488
	ds_load_u16_d16_hi v206, v109 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v175, v109 offset:3744
	ds_load_u16_d16_hi v207, v109 offset:3808
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v176, v109 offset:4000
	ds_load_u16_d16_hi v208, v109 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[169:176], v[33:40], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v170, v109 offset:6432
	ds_load_u16_d16_hi v75, v109 offset:6784
	ds_load_u16_d16_hi v59, v109 offset:6848
	ds_load_u16_d16 v171, v109 offset:6688
	ds_load_u16_d16_hi v76, v109 offset:7040
	ds_load_u16_d16_hi v60, v109 offset:7104
	ds_load_u16_d16 v172, v109 offset:6944
	ds_load_u16_d16_hi v77, v109 offset:7296
	ds_load_u16_d16_hi v61, v109 offset:7360
	ds_load_u16_d16 v173, v109 offset:7200
	ds_load_u16_d16_hi v78, v109 offset:7552
	ds_load_u16_d16_hi v62, v109 offset:7616
	ds_load_u16_d16 v174, v109 offset:7456
	ds_load_u16_d16_hi v79, v109 offset:7808
	ds_load_u16_d16_hi v63, v109 offset:7872
	ds_load_u16_d16 v175, v109 offset:7712
	ds_load_u16_d16_hi v80, v109 offset:8064
	ds_load_u16_d16_hi v64, v109 offset:8128
	ds_load_u16_d16 v176, v109 offset:7968
	ds_load_u16_d16_hi v178, v109 offset:4480
	ds_load_u16_d16_hi v210, v109 offset:4544
	ds_load_u16_d16 v186, v109 offset:4384
	ds_load_u16_d16_hi v179, v109 offset:4736
	ds_load_u16_d16_hi v211, v109 offset:4800
	ds_load_u16_d16 v187, v109 offset:4640
	ds_load_u16_d16_hi v180, v109 offset:4992
	ds_load_u16_d16_hi v212, v109 offset:5056
	ds_load_u16_d16 v188, v109 offset:4896
	ds_load_u16_d16_hi v181, v109 offset:5248
	ds_load_u16_d16_hi v213, v109 offset:5312
	ds_load_u16_d16 v189, v109 offset:5152
	ds_load_u16_d16_hi v182, v109 offset:5504
	ds_load_u16_d16_hi v214, v109 offset:5568
	ds_load_u16_d16 v190, v109 offset:5408
	ds_load_u16_d16_hi v183, v109 offset:5760
	ds_load_u16_d16_hi v215, v109 offset:5824
	ds_load_u16_d16 v191, v109 offset:5664
	ds_load_u16_d16_hi v184, v109 offset:6016
	ds_load_u16_d16_hi v216, v109 offset:6080
	ds_load_u16_d16 v192, v109 offset:5920
	ds_load_u16_d16_hi v73, v109 offset:6272
	ds_load_u16_d16 v169, v109 offset:6176
	ds_load_u16_d16_hi v185, v109 offset:4256
	ds_load_u16_d16_hi v65, v109 offset:4320
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v186, v109 offset:4512
	ds_load_u16_d16_hi v66, v109 offset:4576
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v187, v109 offset:4768
	ds_load_u16_d16_hi v67, v109 offset:4832
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v188, v109 offset:5024
	ds_load_u16_d16_hi v68, v109 offset:5088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v189, v109 offset:5280
	ds_load_u16_d16_hi v69, v109 offset:5344
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v190, v109 offset:5536
	ds_load_u16_d16_hi v70, v109 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v191, v109 offset:5792
	ds_load_u16_d16_hi v71, v109 offset:5856
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v192, v109 offset:6048
	ds_load_u16_d16_hi v72, v109 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v169, v109 offset:6304
	ds_load_u16_d16_hi v193, v109 offset:6368
	ds_load_u16_d16_hi v170, v109 offset:6560
	ds_load_u16_d16_hi v194, v109 offset:6624
	ds_load_u16_d16_hi v171, v109 offset:6816
	ds_load_u16_d16_hi v195, v109 offset:6880
	ds_load_u16_d16_hi v172, v109 offset:7072
	ds_load_u16_d16_hi v196, v109 offset:7136
	ds_load_u16_d16_hi v173, v109 offset:7328
	ds_load_u16_d16_hi v197, v109 offset:7392
	ds_load_u16_d16_hi v174, v109 offset:7584
	ds_load_u16_d16_hi v198, v109 offset:7648
	ds_load_u16_d16_hi v175, v109 offset:7840
	ds_load_u16_d16_hi v199, v109 offset:7904
	ds_load_u16_d16_hi v176, v109 offset:8096
	ds_load_u16_d16_hi v200, v109 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[201:208], v[33:40], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[177:184], v[41:48], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[209:216], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[185:192], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[65:72], v[41:48], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[49:56], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[57:64], v[49:56], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[169:176], v[49:56], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[193:200], v[49:56], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v102
	v_add_nc_u32_e32 v34, 0, v106
	v_add_nc_u32_e32 v35, 0, v104
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_2addr_b64 v35, v[81:82], v[83:84] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v18, v0, v18
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v19, v0, v19
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v21, v0, v21
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s6, v22, v0, v22
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v20, v33, v0, v20
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v19, v35, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s4, v24, v0, v24
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v39, v0, v21
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s3, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v24, v34, v0, v24
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s4, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s5, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s3, v29, v0, v29
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s6, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s4, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s6, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b32_e64 v17, 0, v18, s1
	v_cndmask_b32_e64 v18, 0, v19, s1
	v_cndmask_b32_e64 v19, 0, v20, s1
	v_cndmask_b32_e64 v20, 0, v21, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v22, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v23, s1
	v_cndmask_b32_e64 v23, 0, v24, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v27, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v101
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v19, s0
	v_cndmask_b32_e64 v6, v18, v17, s0
	v_cndmask_b32_e64 v7, v17, v18, s0
	v_cndmask_b32_e64 v13, v20, v22, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s85, v98
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v21, v23, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s0
	v_cndmask_b32_e64 v8, v22, v20, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v23, v21, s0
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s4, s85, v32
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v99
	v_perm_b32 v11, v11, v12, v100
	v_perm_b32 v12, v13, v17, v99
	v_perm_b32 v13, v13, v17, v100
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v99
	v_perm_b32 v1, v2, v4, v100
	v_perm_b32 v4, v5, v8, v99
	v_perm_b32 v5, v5, v8, v100
	v_perm_b32 v8, v9, v16, v99
	v_perm_b32 v9, v9, v16, v100
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v99
	v_perm_b32 v3, v3, v6, v100
	v_perm_b32 v6, v7, v14, v99
	v_perm_b32 v7, v7, v14, v100
	v_perm_b32 v14, v15, v18, v99
	v_perm_b32 v15, v15, v18, v100
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp153:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 230
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 230
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18876
; TotalNumSgprs: 107
; NumVgprs: 230
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 230
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
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
